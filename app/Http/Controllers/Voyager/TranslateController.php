<?php

namespace App\Http\Controllers\Voyager;

use App\Attribute;
use App\Helpers\Helper;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Voyager\VoyagerBaseController;
use App\Product;
use App\ProductAttribute;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Lang;
use Intervention\Image\Image;
use PHPUnit\TextUI\Help;

class TranslateController extends Controller
{
    public function index(Request $request)
    {
        $remember = App::getLocale();
        $array = array();
        foreach (config('app.locales') as $locale){
            App::setLocale($locale);
            $array[$locale] = Lang::get('my');
        }
        App::setLocale($remember);
        $keys = Lang::get('my');
        $keys = array_keys($keys);
        return view('vendor.voyager.translation.browse')->with(['translations' => $array, 'keys' => $keys]);
    }
    public function store(Request $request)
    {
        $request->validate([
            'translations' => 'required|array'
        ]);
        foreach (config('app.locales') as $locale) {
            if(array_key_exists($locale, $request->translations)){
                file_put_contents(resource_path('/lang/'.$locale.'/my.php'), '<?php return ' . var_export($request->translations[$locale], true) . ';');
                /*file_put_contents(resource_path('/lang/'.$locale.'/my.php'), var_export($request->translations[$locale], true));*/
            }
        }
        return response()->json(true);
    }
}
