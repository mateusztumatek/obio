<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Pos extends Model
{
    use Translatable;
    protected $fillable = ['name', 'content', 'active', 'type', 'images'];
    protected $translatable = ['name', 'content'];
}
