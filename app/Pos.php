<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Pos extends Model
{
    use Translatable;
    protected $fillable = ['name', 'content', 'active', 'type', 'images', 'url'];
    protected $translatable = ['name', 'content'];

    public function setContentAttribute($data){
        $this->attributes['content'] = html_entity_decode($data);
    }
}
