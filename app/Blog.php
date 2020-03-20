<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $fillable = ['user_id', 'title', 'page_title', 'page_description', 'url', 'content', 'images'];
    public function getImagesAttribute($data){
        if(request()->route()->getPrefix() == '/admin') return $data;
        return json_decode($data);
    }

    public function rates(){
        return $this->hasMany('App\Rate', 'foreign_key')->where('type', 'blog');
    }
}
