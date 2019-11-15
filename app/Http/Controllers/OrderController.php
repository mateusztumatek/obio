<?php

namespace App\Http\Controllers;

use App\Services\PayuHistory;
use App\Services\PayuModel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use OpenPayU_Configuration;
use OpenPayU_Order;
use App\Services\PayuPayment;
class OrderController extends Controller
{
    public function index(){
        OpenPayU_Configuration::setEnvironment(config('payu.env'));

        OpenPayU_Configuration::setMerchantPosId(config('payu.pos_id'));
        OpenPayU_Configuration::setSignatureKey(config('payu.md5'));

        OpenPayU_Configuration::setOauthClientId(config('payu.client_id'));
        OpenPayU_Configuration::setOauthClientSecret(config('payu.client_secret'));
        $order['continueUrl'] = url('/'); //customer will be redirected to this page after successfull payment
        $order['notifyUrl'] = url('/order/notify');
        $order['customerIp'] = $_SERVER['REMOTE_ADDR'];
        $order['merchantPosId'] = OpenPayU_Configuration::getMerchantPosId();
        $order['description'] = 'New order';
        $order['currencyCode'] = 'PLN';
        $order['totalAmount'] = 3200;
        $order['extOrderId'] = 8;

        $order['products'][0]['name'] = 'Product1';
        $order['products'][0]['unitPrice'] = 1000;
        $order['products'][0]['quantity'] = 1;

        $order['products'][1]['name'] = 'Product2';
        $order['products'][1]['unitPrice'] = 2200;
        $order['products'][1]['quantity'] = 1;

        //optional section buyer
        $order['buyer']['email'] = 'dd@ddd.pl';
        $order['buyer']['phone'] = '123123123';
        $order['buyer']['firstName'] = 'Jan';
        $order['buyer']['lastName'] = 'Kowalski';

        $response = OpenPayU_Order::create($order);
        $service = new PayuPayment();
        $payu_order = $service->getById($response->getResponse()->orderId);
        if(array_key_exists(0, $payu_order->orders)){
            $ord = $payu_order->orders[0];
            $history = collect();
            $history->push(PayuHistory::create(Carbon::now(), 'Płatność utworzona', 'Płatność dla zamówienia '.$ord->extOrderId. 'utworzona w systemie PayU'));
            PayuModel::create([
                'local_order_id' => $ord->extOrderId,
                'payu_order_id' => $ord->orderId,
                'currency' => $ord->currencyCode,
                'totalAmount' => number_format(intval($ord->totalAmount)/100, 2),
                'history' => serialize($history),
                'status' => $payu_order->status->statusCode,
            ]);
        }

        return redirect()->away($response->getResponse()->redirectUri);

/*        return view('order.index');*/
    }
    public function show(Request $request, $id){

        $service = new PayuPayment();
    }
    public function notify(Request $request){
        Log::notice('Request: ');

        $var = var_export($request->all(), true);
        Log::notice('Request: ');
        Log::notice($var);
        return 'fawfafa';
    }
}
