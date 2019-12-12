<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Shipment extends Model
{
    protected $fillable = ['name', 'price', 'controller', 'free_shipping_allowed', 'settings', 'weight'];
    public $table = 'shipments';
}
