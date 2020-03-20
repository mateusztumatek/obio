<?php

namespace App\Http\Controllers;

use App\Shop\Cart;
use App\Shop\Code;
use App\Shop\Design;
use App\Shop\Product;
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
            'quantity' => 'required|min:1',
            'image' => [function($field, $data, $fail)use($request){
                if($request->design){
                    if(!$data) $fail('Pole zdjęcie jest wymagane');
                    if(!file_exists(storage_path('app/public/'.$data))) $fail('Obrazek nie istnieje');
                }
            }],
        ]);
        $product = Product::find($request->product_id);
        $attrs = array_map(function($item){
            if(!$item['value']) return null;
            return (object) [
                'price' => ($item['additional_price'])? $item['additional_price'] : 0,
                'value' => $item['value'],
                'type' => $item['attribute']['type']
            ];
        },$request->get('attributes'));
        $preview_image = $product->main_image;
        $key = $cart->checkIfAlreadyExist($product, $request->size);
        if($key){
            $request->request->set('quantity', $cart->items[$key]->quantity + $request->quantity);
            return $this->update($request, $key);
        }
        $cart->addItem($product, $request->quantity, $preview_image , $attrs, $request->designs, $product->link);
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

    public function code(Request $request){
        $cart = Cart::getCart();
        if($request->code == null){
            $cart->applyCode(null);
            return response()->json($cart);
        }
        $request->validate([
            'code' => ['required', 'exists:codes,code',function($field,$data,$fail)use($request){
                $code = Code::where('code', $request->code)->first();
                if(!$code) $fail('Taki kod nie istnieje');
                if($code && $code->user_id){
                    if(Auth::id() != $code->user_id) $fail('Nie masz uprawnień aby użyć tego kodu');
                }
                if($code && $code->max_uses <= $code->used) $fail('Ten kod został już wykorzystany');
                if($code && $code->only_logged && !Auth::check()) $fail('Ten kod jest tylko dla zalogowanych użytkowników');

            }]
        ]);
        $cart->applyCode(Code::where('code', $request->code)->first());
        return response()->json($cart);
    }
}
