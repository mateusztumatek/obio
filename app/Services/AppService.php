<?php

namespace App\Services;
use Illuminate\Support\Facades\App;

class AppService {

    public static function navigation(){
        (App::getLocale() != 'pl')? $slug = App::getLocale().'/' : $slug = '';
        return[
          'header' => [
              [
                  'name' => trans('my.Strona główna'),
                  'icon' => 'home.svg',
                  'url' => url('/'.$slug)
              ],
              [
                  'name' => trans('my.Kontakt'),
                  'icon' => 'contact.svg',
                  'url' => url('/'.$slug.'kontakt')
              ],
              [
                  'name' => trans('my.Produkty'),
                  'icon' => 'cap.svg',
                  'url' => url('/'.$slug.'produkty')
              ],
              [
                  'name' => trans('my.Kreator'),
                  'icon' => 'edit.svg',
                  'url' => url('/'.$slug.'kreator')
              ]
          ]
        ];
    }
}
