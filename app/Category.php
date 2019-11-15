<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Category extends Model
{
    protected $fillable = ['name', 'url', 'desc', 'page_title', 'page_description', 'images', 'active', 'external_id'];
    protected $table = 'categories';

    public static function all($columns = ['*'])
    {
        $categories = Category::where('active', 1)->get();
        return $categories;
    }

    public function getImage(){
        $arr = array();
        if($this->images == '' && $this->images == null){
            $arr = ['default/brak_zdjecia.png'];

        }else{
            $arr = json_decode($this->images);
            if(count($arr) == 0) $arr = ['default/brak_zdjecia.png'];
        }
        return json_encode($arr);
    }

    public function delete()
    {
        return parent::delete(); // TODO: Change the autogenerated stub
    }
    public function getHeader(){
        $term = '';
        $term = $term.$this->page_title;
        return $term;
    }
    public function getUrl(){
        $url = url('/oferta').'/';
        $url = $url.$this->url;
        return $url;
    }
}
