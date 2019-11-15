<?php
namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class Design extends Model {
    protected $fillable = ['name', 'data', 'image', 'product_id', 'storage', 'user_id'];

    public static function getDesigns(){
        $designs = collect();
        if(Session::has('designs')){
            $d = Session::get('designs');
            $designs = $designs->merge($d);
        }
        if(Auth::check()){
            $d = Design::where('user_id', Auth::id())->get();
            $designs = $designs->merge($d);
        }
        return $designs;
    }
    public function calculatePrice(){
        return 50;
    }
}
