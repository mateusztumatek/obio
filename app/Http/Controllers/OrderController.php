<?php

namespace App\Http\Controllers;

use App\Address;
use App\Cart;
use App\Order;
use App\Services\PayuHistory;
use App\Services\PayuModel;
use App\Shipment;
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
    protected $fillable = ['user_id', 'address_id', 'payment_type', 'shipping_id', 'notes', 'status', 'hash', 'amount', 'shipment_amount', 'payment_link', 'paid', 'tracking'];

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
        $address = Address::create($request->user);
        $request->request->set('address_id', $address->id);
        $shipment = Shipment::find($request->shipment['id']);
        $request->request->set('shipping_id', $shipment->id);
        $amount = $cart->price + $shipment->price;
        $request->request->set('amount', $amount);
        $request->request->set('status', 'new');
        $request->request->set('hash', md5(Str::random(60)));
        $request->request->set('shipment_amount', $shipment->price);
        $request->request->set('paid', false);
        $order = Order::create($request->all());
        foreach ($cart->items as $item){
            if($item->design){
                $design_id = $item->design->id;
            }else $design_id = null;
            $price = $item->price;
            $design_price = $item->total_price - $item->items_price;
            $order->items()->create([
                'order_id' => $order->id,
                'product_id' => $item->id,
                'design_id' => $design_id,
                'quantity' => $item->quantity,
                'price' => $price,
                'design_price' => $design_price
            ]);
        }
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
        if(!$order) return back()->withErrors(['Nie ma takiego zamówienia']);
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
}
