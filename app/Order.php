<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = ['user_id', 'address_id', 'payment_type', 'shipping_id', 'notes', 'status', 'hash', 'amount', 'shipment_amount', 'payment_link', 'paid', 'tracking'];
    public function items(){
        return $this->hasMany('App\OrderItem')->with('product', 'design');
    }
    public function address(){
        return $this->belongsTo('App\Address');
    }
    public function getLink(){
        return url('/orders/'.$this->hash);
    }
    public function payuPayment(){
        return $this->hasOne('App\Services\PayuModel', 'local_order_id');
    }

}
