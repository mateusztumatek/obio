<?php

namespace App\Http\Controllers;

use App\Rate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\UnauthorizedException;

class RateController extends Controller
{
    public function index(Request $request){
        $request->validate([
            'model' => 'required',
            'foreign_key' => 'required'
        ]);
        return response()->json(Rate::where('type', $request->model)->where('foreign_key', $request->foreign_key)->with('user')->get());
    }
    public function store(Request $request){
        $request->validate([
            'type' => 'required',
            'foreign_key' => 'required',
            'rate' => 'required|min:0|max:5',
        ]);
        if(Auth::check()) $request->request->set('user_id', Auth::id());
        $rate = Rate::create($request->all());
        return response()->json($rate);
    }
    public function destroy(Request $request, Rate $rate){
        if($rate->user_id != Auth::id()) throw new UnauthorizedException();
        $rate->delete();
        return response()->json(true);
    }
}
