<?php

namespace App\Shop;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $fillable = ['user_id', 'email', 'street', 'postal', 'city', 'nip', 'phone', 'inPost'];
    protected $table = 'addresses';
}
