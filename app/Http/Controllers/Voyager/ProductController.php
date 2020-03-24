<?php

namespace App\Http\Controllers\Voyager;

use App\Relations\ColorGroup;
use App\Shop\Attribute;
use App\Helpers\Helper;
use App\Http\Controllers\Voyager\VoyagerBaseController;
use App\Shop\Product;
use App\Relations\ProductAttribute;
use Illuminate\Http\Request;
use Intervention\Image\Image;
use PHPUnit\TextUI\Help;

class ProductController extends VoyagerBaseController
{
    public function store(Request $request)
    {
        if($request->has('formats')){
            $request->request->set('formats', json_encode($request->formats));
        }
        $to_return = parent::store($request); // TODO: Change the autogenerated stub
        $product = Product::orderBy('created_at', 'desc')->first();
        $product->categories()->sync($request->categories);
        if($product && $product->name == $request->name){
            $this->setAttributes($request, $product);
        }
        return $to_return;
    }
    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        $this->setAttributes($request, $product);
        $product->categories()->sync($request->categories);
        return parent::update($request, $id); // TODO: Change the autogenerated stub
    }
    public function settings($id){
        $product = Product::find($id);
        return view('vendor.voyager.products.settings', compact('product'));
    }
    public function setAttributes($request, $product){
        $attributes = $request->get('attributes');
        if(isset($attributes)){
            ProductAttribute::where('product_id', $product->id)->delete();
            foreach ($attributes as $key => $attr){
                if(array_key_exists('default', $attr) && $attr['default'] == null) $attr['default'] = false;
                if(array_key_exists('default', $attr)){
                    if($attr['default'] == 'false') $attr['default'] = false;
                    if($attr['default'] == 'true') $attr['default'] = true;
                }

                $product->attributes()->create($attr);
            }
        }
    }
    public function show(Request $request, $id)
    {
        $product = Product::find($id);
        return redirect($product->getLink());
    }
    public function colors(){
        return response()->json(ColorGroup::all());
    }
}
