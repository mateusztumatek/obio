<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use TCG\Voyager\Traits\Translatable;

class Product extends Model
{
    use Translatable;
    protected $fillable = ['desc', 'name', 'images', 'main_image', 'orders_count','views_count', 'data', 'external_id', 'short_desc', 'url', 'page_title', 'page_description', 'price', 'price_sellout', 'active', 'is_new', 'attachments', 'stock', 'sku', 'country', 'sku_parrent', 'weight', 'in_package', 'baselinker_id', 'keywords', 'category_id'];
    protected $table = 'products';
    protected $translatable = ['desc', 'name', 'short_desc', 'page_title', 'page_description'];
    protected $appends = ['calculated', 'design_price', 'link', 'creator_link'];
    protected $sortable = ['created_at', 'price', 'name', 'is_new'];
    use SoftDeletes;
    public function getCalculatedAttribute()
    {
        if($this->price_sellout && $this->price_sellout < $this->price){
            return number_format($this->price_sellout, 2);
        }
        return number_format($this->price, 2);
    }
    public function getLinkAttribute(){
        return $this->getLink();
    }
    public function getCreatorLinkAttribute(){
        return $this->getCreatorLink();
    }
    public function getDesignPriceAttribute()
    {
        return 25;
    }
    public function category(){
        return $this->belongsTo('App\Category');
    }
    public function attributes(){
        return $this->hasMany('App\ProductAttribute', 'product_id')->with('attribute');
    }
    public function delete()
    {
        $images = Images::where('product_id', $this->id)->get();
        DB::table('product_categories')->where('product_id', $this->id)->delete();
        Images::where('product_id', $this->id)->delete();
        Attribute::where('product_id', $this->id)->delete();
        DB::table('cross_selling')->where('first_product', $this->id)->orWhere('second_product', $this->id)->delete();
        foreach ($images as $image){
/*            unlink(storage_path('/app/public/products'))*/
        }
        return parent::delete(); // TODO: Change the autogenerated stub
    }
    public function getPrice(){
        return $this->price;
    }
    public function getImages(){
        $images = collect();
        if($this->images && $this->images != ''){
            $tmp = json_decode($this->images);
            foreach ($tmp as $t){
                $images->push($t);
            }
        }
        if($this->main_image){
            $images->prepend($this->main_image);
        }
        $images = $images->unique();
        if(count($images) == 0){
            $images->push('/products/default.jpg');
        }
        return $images;
    }
    public function getBrutto(){
        return number_format($this->price + ((23 / 100) * $this->price), 2);
    }
    public function discounts(){
        $d = Discounts::where('product_id', $this->id)->first();
        if(!$d) $d = Discounts::where('product_id', null)->first();
        return $d;
    }
    public function init(){
        $this->setAttribute('calculated_price', $this->getPrice());
        $this->setAttribute('brutto_price', $this->getBrutto());
        $this->setAttribute('images', $this->getImages());
        $this->setAttribute('variants', $this->variants());
        $this->setAttribute('discounts', $this->discounts());
    }

    public function getCategory(){
        $categories = DB::table('product_categories')->where('product_id', $this->id)->get();
        $arr = collect();
        foreach ($categories as $category){
            $arr->push(Category::find($category->category_id));
        }
        return $arr;
    }
    public function getLink(){
        return ($this->url)? route('produkty.show', ['produkty' => $this->url]) : route('produkty.show', ['produkty' => $this->id]);
    }
    public function getCreatorLink(){
        return route('kreator', ['product_id' => $this->id]);
    }
    public function getRelatedProducts($type = 'crosselling'){
        if($type == 'crosselling')
            $products = DB::table('cross_selling')->where('first_product', $this->id)->get();
        if($type == 'upselling'){
            $products = DB::table('upselling')->where('first_product', $this->id)->get();
        }
        foreach ($products as $key => $product){
            $pr = Product::find($product->second_product);
            $pr->init();
            $products[$key] = $pr;
        }

        return $products;
    }
    public function variants(){
        return Attribute::where('product_id', $this->id)->join('variants', 'attributes.variant_id', 'variants.id')->select('attributes.*', 'variants.name')->get();
    }
  /*  public function hasAttribute($key, $value){
        if($key == 'page') return true;
        if(!Cache::has('product'.$this->id.'_attributes')){
            $attributes = Attribute::where('product_id', $this->id)->join('variants', 'attributes.variant_id', 'variants.id')->get();
            Cache::put('product'.$this->id.'_attributes', $attributes);
        }else{
            $attributes = Cache::get('product'.$this->id.'_attributes');
        }
        foreach ($attributes as $attr){
            if($attr->name == $key && $attr->value==$value) return true;
        }
        return false;
    }*/
    public function getRates(){
        $rates = Rate::where('product_id', $this->id)->get();
        if($rates && count($rates) > 0){
            $temp = 0;
            foreach ($rates as $rate){
                $temp = $temp + $rate->value;
            }
            $temp = $temp / count($rates);
        }else{
            $temp = 5;
        }
        return ['rate' => $temp, 'comments' => $rates, 'count' => count($rates)];
    }
    public function warrianties(){
        $w = DB::table('product_warranties')->where('product_id', $this->id)->get();
        $warrianties = collect();
        foreach ($w as $war){
            $warranty = Warranty::find($war->warranty_id);
            if($warranty) $warrianties->push($warranty);
        }
        return $warrianties;
    }
    public function initWarranty(){
        $this->setAttribute('warranties', $this->warrianties());
    }
    public static function getSellouts($limit = 0){
        $to_return = Product::where('price_sellout', '!=', null)->where('active', 1)->get();
        $categories = Category::where('sale', '>', 0)->where('active', 1)->get();

        foreach ($categories as $cat){
            if($limit != 0 && count($to_return) >= $limit){
                break;
            }
            $products = Product::where('active', 1)->rightJoin('product_categories', 'products.id', 'product_categories.product_id')->where('product_categories.category_id', $cat->id)->select('products.*')->get();
            $products = $products->unique('id');
            foreach ($products as $product){
                if($limit == 0){
                    $to_return->push($product);
                }else{
                    if($limit > count($to_return)){
                        $to_return->push($product);
                    }
                }
            }
        }
        $to_return = $to_return->unique('id');
        foreach ($to_return as $p){
            $p->init();
        }
        return $to_return;
    }
    public function getPrintPrices(){
        $minimum = 1;
        $discounts = Prices::first();
        $discount = [];
        foreach ($this->getCategories() as $c){
            if($c->minimum_designs > $minimum) $minimum = $c->minimum_designs;
        }
        foreach ($this->getCategories() as $c){
            if($c->parent_id != null){
                $prices_type = $c->print_prices_type;
                $cat = Category::find($c->id);
                $print_about = $cat->printMethod;
                if($prices_type == 'prices_paper') $prices = json_decode($discounts['prices_paper']);
                if($prices_type == 'prices_material') $prices = json_decode($discounts['prices_material']);
                if($prices_type == 'prices_dtg') $prices = json_decode($discounts['prices_dtg']);
                $screen = true;
                if($prices_type == 'prices_dtg') $screen = false;
                if(!$print_about){
                    $print_about = $cat->getParent()->printMethod;
                    if(!$print_about && $cat->getParent()->getParent()) $print_about = $cat->getParent()->getParent()->printMethod;
                }
                return ['prices' => $prices, 'screen_price' => setting('site.screen_price'), 'minimum' => $minimum, 'screen' => $screen, 'print_about' => $print_about];
            }
        }
        foreach ($this->getCategories() as $c){
            if($c->parent_id == null){
                $cat = Category::find($c->id);
                $print_about = $cat->printMethod;
                $prices_type = $c->print_prices_type;
                if($prices_type == 'prices_paper') $prices = json_decode($discounts['prices_paper']);
                if($prices_type == 'prices_material') $prices = json_decode($discounts['prices_material']);
                if($prices_type == 'prices_dtg') $prices = json_decode($discounts['prices_dtg']);
                $screen = true;
                if($prices_type == 'prices_dtg') $screen = false;
                return ['prices' => $prices, 'screen_price' => setting('site.screen_price'), 'minimum' => $minimum, 'screen' => $screen, 'print_about' => $print_about];
            }
        }
        if(count($this->getCategories()) != 0){
            $minimum = 1;
            $prices_type = $this->getCategories()[0]->print_prices_type;
            if($prices_type == 'prices_paper') $prices = json_decode($discounts['prices_paper']);
            if($prices_type == 'prices_material') $prices = json_decode($discounts['prices_material']);
            if($prices_type == 'prices_dtg') $prices = json_decode($discounts['prices_dtg']);
            $screen = true;
            if($prices_type == 'prices_dtg') $screen = false;
            $cat = $this->getCategories()[0];
            $print_about = $cat->printMethod;
            return ['prices' => $prices, 'screen_price' => setting('site.screen_price'), 'minimum' => $minimum, 'screen' => $screen, 'print_about' => $print_about];
        }
        $prices = json_decode($discounts['prices_paper']);
        $screen = true;
        $minimum = 50;
        return ['prices' => $prices, 'screen_price' => setting('site.screen_price'), 'minimum' => $minimum, 'screen'=> $screen, 'print_about' => []];
    }
    public static function getSortable(){
        $ex = new Product();
        return $ex->sortable;
    }
}
