<?php
namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class Design extends Model {
    protected $fillable = ['name', 'data', 'image', 'product_id', 'pattern_id', 'storage', 'user_id'];

    public function product(){
        return $this->belongsTo('App\Product');
    }
    public function pattern(){
        return $this->belongsTo('App\Pattern');
    }
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
    public static function getDesign($id, $storage){
        if($storage == 'session'){
            $d = Session::get('designs');
            foreach ($d as $design){
                if($design->id == $id) return $design;
            }
        }
        return Design::find($id);
    }
    public function calculatePrice(){
        return 25;
    }
    public function getLink(){
        return url('/kreator?design_id='.$this->id);
    }
}
