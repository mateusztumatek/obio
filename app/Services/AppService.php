<?php

namespace App\Services;
use App\Faq;
use App\HomeContent;
use App\Pos;
use App\Shop\Category;
use Carbon\Carbon;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Cache;

class AppService {

    public static function navigation(){
        (App::getLocale() != 'pl')? $slug = App::getLocale().'/' : $slug = '';
        $cache_key = 'navigation_'.$slug;
        Cache::forget($cache_key);
        if($to_return = Cache::get($cache_key)){
            return $to_return;
        }else{
            $categories = Category::where('parent_id', null)->with('childrens.childrens')->get();
            $to_return = [
                'header' => [
                    [
                        'name' => trans('my.Strona główna'),
                        'url' => url('/'.$slug)
                    ],
                    [
                        'name' => trans('my.Produkty'),
                        'url' => url('/'.$slug.'produkty'),
                        'childrens' => $categories
                    ],
                ]
            ];
            $header_menu = menu('header', '_json');
            if($header_menu && $header_menu->count() > 0){
                foreach ($header_menu as $item){
                    array_push($to_return['header'], [
                        'name' => $item->title,
                        'url' => \App\Helpers\Helper::resolveUrl($item->url),
                    ]);
                }
            }
            Cache::put($cache_key, $to_return, Carbon::now()->addDay());
            return $to_return;
        }
    }
    public static function getPosts($type){
        $posts = Pos::where('type', $type)->get();
        return $posts;
    }
    public static function getHomeContent($type){
        $posts = HomeContent::where('type', $type)->get();
        return $posts;
    }
    public static function displaySlider(){
        return request()->route()->getName() == 'home';
    }
    public static function getFaq(){
        return Faq::all()->groupBy('category');
    }
}
