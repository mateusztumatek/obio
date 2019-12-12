<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Design;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    public function show(){
        return response()->json(Cart::getCart());
    }
    public function add(Request $request){
        $cart = Cart::getCart();
        $request->validate([
            'product_id' => 'required|exists:products,id',
            /*'design' => 'array',*/
            'quantity' => 'required|min:1',
            'image' => [function($field, $data, $fail)use($request){
                if($request->design){
                    if(!$data) $fail('Pole zdjęcie jest wymagane');
                    if(!file_exists(storage_path('app/public/'.$data))) $fail('Obrazek nie istnieje');
                }
            }],
            'size' => 'required'
        ]);
        $product = Product::find($request->product_id);
        if($request->design){
            $design = Design::create([
                'image' => $request->image,
                'data' => json_encode($request->design),
                'pattern_id' => $request->pattern_id,
                'product_id' => $request->product_id,
                'user_id' => (Auth::check())? Auth::id() : null
            ]);
        }else{
            $design = null;
        }
        $preview_image = ($request->image)? $request->image : $product->main_image;
        $key = $cart->checkIfAlreadyExist($product, $design, $request->size);
        if($key){
            $request->request->set('quantity', $cart->items[$key]->quantity + $request->quantity);
            return $this->update($request, $key);
        }
        ($design)? $link = $design->getLink() : $link = $product->getLink();
        $cart->addItem($product, $request->quantity, $design, $preview_image, $request->size, $link);
        $cart->save();
        return response()->json($cart);
    }
    public function destroy(Request $request, $id){
        $cart = Cart::getCart();
        $cart->deleteItem($id);
        return response()->json($cart);
    }
    public function update(Request $request, $id){
        $cart = Cart::getCart();
        $request->validate([
            'quantity' => 'required|min:1',
        ]);
        if($request->quantity <= 0){
            return $this->destroy($request, $id);
        }
        $cart->updateItem($id, $request);
        return response()->json($cart);
    }
}
