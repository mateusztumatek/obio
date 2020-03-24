<?php

namespace App\Http\Controllers;

use App\Shop\Code;
use App\Shop\Product;
use App\Shop\Address;
use App\Shop\Cart;
use App\Shop\Order;
use App\Services\PayuHistory;
use App\Services\PayuModel;
use App\Shop\Shipment;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;
use OpenPayU_Configuration;
use OpenPayU_Order;
use App\Services\PayuPayment;
class OrderController extends Controller
{
    public function index(){
        $cart = Cart::getCart();
        if(count($cart->items) == 0) return redirect()->back()->withErrors(['Brak produktów w koszyku']);
        return view('order.index');
    }
    public function store(Request $request){
        $request->validate([
            'user.email' => 'required|email',
            'user.street' => 'required',
            'user.street_number' => 'required',
            'payment_type' => 'required',
            'shipment.id' => 'required|exists:shipments,id'
        ]);
        if(Auth::id()){
            $user = $request->user;
            $user['user_id'] = Auth::id();
            $request->request->set('user', $user);
            $request->request->set('user_id', Auth::id());
        }
        if(array_key_exists('notes', $request->user)){
            $request->request->set('notes', $request->user['notes']);
        }
        $cart = Cart::getCart();
        if($cart->code){
            $code = Code::find($cart->code->id);
            $cart->applyCode(null);
            $cart->applyCode($code);
            $cart_check = $cart->code->validate();
            if($cart_check->error){
                return response()->json($cart_check->errors, 400);
            }
        }
        $address = Address::create($request->user);
        $request->request->set('address_id', $address->id);
        $shipment = Shipment::find($request->shipment['id']);
        $request->request->set('shipping_id', $shipment->id);
        if(($free_shipping_limit = setting('admin.free_shipping_limit')) && $free_shipping_limit != null && $cart->totalPrice >= $free_shipping_limit){
            $shipment_price = 0;
        }else{
            $shipment_price = $shipment->price;
        }
        $amount = $cart->totalPrice + $shipment_price;
        $request->request->set('amount', $amount);
        $request->request->set('status', 'new');
        $request->request->set('hash', md5(Str::random(60)));
        $request->request->set('shipment_amount', $shipment_price);
        $request->request->set('paid', false);
        $order = Order::create($request->all());
        if($cart->code){
            $code->update([
                'used' => $cart->code->used + 1
            ]);
        }
        foreach ($cart->items as $item){
            $price = $item->price;
            $product = Product::find($item->id);
            $product->update([
                'orders_count' => $product->orders_count + 1
            ]);
            $order->items()->create([
                'product_id' => $item->id,
                'quantity' => $item->quantity,
                'price' => $price,
                'attributes' => $item->attributes,
                'designs' => $item->designs
            ]);
        }
        /*Cart::reset();*/
        if($request->payment_type == 'payu'){
            $payu = new PayuPayment();
            $response = $payu->makePayment($order);
            if($response){
                return response()->json(['redirect' => $response['redirect']]);
            }else{
                return response()->json(['errors' => ['Nie udało się utworzyć płatności Payu']], 400);
            }
        }
        return response()->json(['redirect' => url('/orders/'.$order->hash)]);

    }
    public function show(Request $request, $hash){
        $order = Order::with('items', 'address', 'payuPayment')->where('hash', $hash)->first();
        if(!$order) return redirect()->route('home')->withErrors(['Nie ma takiego zamówienia']);
        if($request->ajax()) return response()->json($order);
        return view('order.show', compact('order'));
    }
    public function notify(Request $request){
        $order = Order::find($request->order['extOrderId']);
        if($order){
            $payuPayment = PayuModel::where('local_order_id', $order->id)->first();
            if($payuPayment){
                if(array_key_exists('status', $request->order)){
                    $payuPayment->status = $request->order['status'];
                    $payuPayment->update();
                }
            }
        }
    }
    public function reorder(Request $request){
        try{
            Cart::reset();
            $cart = Cart::getCart();
            $request->validate([
                'order_id' => 'required|exists:orders,id'
            ]);
            $order = Order::find($request->order_id);
            foreach ($order->items as $item){
                $product = Product::find($item->product_id);
                $cart->addItem($product, $item->quantity, $item->preview_image, $item->attributes, $item->link);
            }
        }catch(\Exception $e){
            return redirect()->back()->withErrors('Nie udało się wykonać tej akcji');
        }
        return redirect()->to(route('orders.index'));
    }
}
