<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CreatorSetting extends Model
{
    protected $fillable = ['type', 'name', 'value', 'data'];
}
