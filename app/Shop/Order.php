<?php

namespace App\Shop;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = ['user_id', 'address_id', 'payment_type', 'shipping_id', 'notes', 'status', 'hash', 'amount', 'shipment_amount', 'payment_link', 'paid', 'tracking'];
    public $appends = ['status_slug'];
    public function getAmountAttribute($data){
        return number_format(floatval($data), 2, '.', '');
    }
    public function getShipmentAmountAttribute($data){
        return number_format(floatval($data), 2, '.', '');
    }
    public function getStatusSlugAttribute(){
        switch ($this->status){
            case 'new':
                return 'Nowy';
                break;
            case 'in_progress':
                return 'W trakcie realizacji';
                break;
            case 'demand':
                return 'Oczekiwanie na produkt';
                break;
            case 'send':
                return 'Wysłany';
                break;
            case 'pickup':
                return 'Gotowe do odbioru osobistego';
                break;
            case 'canceled':
                return 'Anulowane';
                break;
            default:
                return 'Nowy';
        }

    }
    public function items(){
        return $this->hasMany('App\Shop\OrderItem')->with('product');
    }
    public function address(){
        return $this->belongsTo('App\Shop\Address');
    }
    public function getLink(){
        return url('/orders/'.$this->hash);
    }
    public function payuPayment(){
        return $this->hasOne('App\Services\PayuModel', 'local_order_id');
    }

    public function hasDesign(){
        $check = false;
        foreach ($this->items as $item){
            if($item->designs && count($item->designs) > 0){
                $check = true;
            }
        }
        return $check;
    }
}
