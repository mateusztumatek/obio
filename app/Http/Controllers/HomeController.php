<?php

namespace App\Http\Controllers;

use App\Design;
use App\HomeContent;
use App\Mail\ContactMail;
use App\Newsletter;
use App\Pos;
use App\Product;
use App\Relations\ColorGroup;
use App\Services\AppService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Mail;
use PragmaRX\Tracker\Vendor\Laravel\Facade as Tracker;
use TCG\Voyager\Models\Setting;

class HomeController extends Controller
{
    public function index(Request $request){
      /*  $product = null;
        if($request->product_id){
            $product = Product::find($request->product_id);
            //CHECK PRODUCT DATA IF URL IMAGE IS GOOD
            if(!$product) return response()->json(['message' => 'Nie ma takiego produktu'], 403);
        }
        if($request->design_id){
            $design = Design::where('id', $request->design_id)->first();
        }else{
            $design = null;
        }*/
        $banner = Pos::where('type', 'home_header')->first();
        $kafelki = HomeContent::where('type', 'photos')->get();
        if($banner) $banner = $banner->translate(App::getLocale(), 'pl');
        $brand_slides = HomeContent::where('type', 'brands')->get();
        $seo = HomeContent::where('type', 'seo')->first();
        return view('home', compact('banner', 'brand_slides', 'kafelki', 'seo'));
    }
    public function settings(Request $request){
        $settings = Setting::all();
        $data = ['settings' => $settings, 'navigation' => AppService::navigation()];
        return response()->json($data);
    }
    public function contact(Request $request){
        return view('contact');
    }
    public function user(){
        return view('auth.user');
    }
    public function sendMessage(Request $request){
        $request->validate([
            'email' => 'required|email',
            'message' => 'required',
            'name' => 'required'
        ]);
        Mail::to(\setting('site.contact_email'))->send(new ContactMail($request->all()));

    }

    public function newsletter(Request $request){
        $request->validate([
            'email' => ['required', 'email', function($field, $data, $fail){
                if(Newsletter::where('email', $data)->first()) $fail('Ten adres email jest już zapisany na naszą listę');
            }]
        ]);
        Newsletter::create([
            'email' => $request->email
        ]);
        return response()->json(['message' => true]);
    }
    public function colors(){
        return response()->json(ColorGroup::all());
    }
}
