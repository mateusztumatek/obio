<?php

namespace App\Shop;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    protected $fillable = ['order_id', 'product_id', 'quantity', 'price', 'attributes', 'designs'];
    public function product(){
        return $this->belongsTo('App\Shop\Product');
    }
    public function getPriceAttribute($price){
        return number_format(floatval($price), 2, '.', '');
    }
    public function setAttributesAttribute($data){
        if(is_array($data)){
            $this->attributes['attributes'] = json_encode($data);
        }else $this->attributes['attributes'] = $data;
    }
    public function getAttributesAttribute($data){
        return json_decode($data);
    }
    public function setDesignsAttribute($data){
        if(is_array($data)){
            $this->attributes['designs'] = json_encode($data);
        }else $this->attributes['designs'] = $data;
    }
    public function getDesignsAttribute($data){
        $data = json_decode($data);

        return $data;
    }
}
