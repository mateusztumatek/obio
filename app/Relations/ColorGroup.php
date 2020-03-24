<?php

namespace App\Relations;

use Illuminate\Database\Eloquent\Model;

class ColorGroup extends Model
{
    protected $fillable = ['hex', 'name', 'colors'];
}
