<?php

namespace App\Relations;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class ProductAttribute extends Model
{
    use Translatable;
    protected $fillable = ['product_id', 'attribute_id', 'value', 'additional_price', 'default'];
    public function attribute(){
        return $this->belongsTo('App\Shop\Attribute');
    }
    protected $translatable = ['value'];
}
