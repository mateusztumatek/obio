<?php

namespace App\Shop;

use Illuminate\Database\Eloquent\Model;

class Shipment extends Model
{
    protected $fillable = ['name', 'price', 'controller', 'free_shipping_allowed', 'settings'];
    public $table = 'shipments';
}
