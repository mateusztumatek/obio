<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    protected $fillable = ['order_id', 'product_id', 'design_id', 'quantity', 'price', 'design_price'];
    public function product(){
        return $this->belongsTo('App\Product');
    }
    public function design(){
        return $this->belongsTo('App\Design');
    }
}
