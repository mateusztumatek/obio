<?php

namespace App\Http\Controllers;

use App\Shop\Order;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(Request $request){
        return view('auth.user');
    }
    public function update(Request $request, User $user){
        $request->validate([
            'name' => 'required',
            'email' => 'required',
        ]);
        if($request->update_password){
            $request->validate([
                'password' => 'required|confirmed'
            ]);
            $request->request->set('password', Hash::make($request->password));
        }
        $user->update($request->all());
        return response()->json($user);
    }
    public function orders(Request $request){
        return Order::where('user_id', Auth::id())->with('items')->paginate(10);
    }
}
