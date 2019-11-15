<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use OpenPayU_Configuration;
use OpenPayU_Order;
use App\Services\PayuPayment;
class OrderController extends Controller
{
    public function index(){

        $order['continueUrl'] = url('/'); //customer will be redirected to this page after successfull payment
        $order['notifyUrl'] = url('/order/notify');
        $order['customerIp'] = $_SERVER['REMOTE_ADDR'];
        $order['merchantPosId'] = OpenPayU_Configuration::getMerchantPosId();
        $order['description'] = 'New order';
        $order['currencyCode'] = 'PLN';
        $order['totalAmount'] = 3200;
        $order['extOrderId'] = 12345;

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
        return redirect()->away($response->getResponse()->redirectUri);

/*        return view('order.index');*/
    }
    public function show(Request $request, $id){

        $service = new PayuPayment();
    }
    public function notify(Request $request){
        $var = var_export($request->all(), true);
        Log::notice('Request: ');
        Log::notice($var);
        return 'fawfafa';
    }
}
