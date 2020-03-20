<?php

namespace App\Shop;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Attribute extends Model
{
    use Translatable;
    protected $fillable = ['name', 'icon', 'is_boolean'];
    protected $translatable = ['name'];

    public function product_attributes(){
        return $this->hasMany('App\Relations\ProductAttribute', 'attribute_id');
    }
    public function init(){
        $attrs = $this->product_attributes;
        $attrs = $attrs->translate();
        $attrs = $attrs->unique('value');
        $this->setAttribute('product_attributes', $attrs);
    }

    public static function getAllAttributes(){
        $attributes = Attribute::all();
        foreach ($attributes as $attr){
            $attr->init();
        }
        $attributes = $attributes->translate();
        return $attributes;
    }
}
