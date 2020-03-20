<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    protected $fillable = ['title', 'description', 'html', 'css', 'background', 'active', 'url'];
    public function setHtmlAttribute($data){
        if($data == null) $this->attributes['html'] = '';
        else $this->attributes['html'] = $data;
    }
    public function setCssAttribute($data){
        if($data == null) $this->attributes['css'] = '';
        else $this->attributes['css'] = $data;
    }
}
