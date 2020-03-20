<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Shop\Product;
class HomeContent extends Model
{
    protected $fillable = ['type', 'value', 'name', 'image'];

    public function getProduct(){
        if($this->value == null || $this->value == '') return null;
        try{
            $obj = json_decode($this->value);
            if(property_exists($obj, 'product') && property_exists($obj->product, 'id')){
                $product = Product::find($obj->product->id);
                return $product;
            }
        }catch(\Exception $e){return null;}
    }
}
