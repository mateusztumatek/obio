<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $fillable = ['user_id', 'name', 'email', 'street', 'postal', 'city', 'nip', 'phone', 'inPost'];
    protected $table = 'addresses';
}
