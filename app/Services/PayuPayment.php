<?php
namespace App\Services;
use OpenPayU_Order;
use OpenPayU_Configuration;
use Carbon\Carbon;
class PayuPayment{


    public function __construct()
    {
        OpenPayU_Configuration::setEnvironment(config('payu.env'));

        OpenPayU_Configuration::setMerchantPosId(config('payu.pos_id'));
        OpenPayU_Configuration::setSignatureKey(config('payu.md5'));

        OpenPayU_Configuration::setOauthClientId(config('payu.client_id'));
        OpenPayU_Configuration::setOauthClientSecret(config('payu.client_secret'));
    }
    public function makePayment($data){
        $order['continueUrl'] = $data->getLink(); //customer will be redirected to this page after successfull payment
        $order['notifyUrl'] = url('/order/notify');
        $order['customerIp'] = $_SERVER['REMOTE_ADDR'];
        $order['merchantPosId'] = OpenPayU_Configuration::getMerchantPosId();
        $order['description'] = 'New order '.$data->id;
        $order['currencyCode'] = 'PLN';
        $order['totalAmount'] = $data->amount;
        $order['extOrderId'] = 'obio_test'.$data->id;

        foreach ($data->items as $key => $item){
            $order['products'][$key]['name'] = $item->product->name;
            $order['products'][$key]['unitPrice'] = $item->price;
            $order['products'][$key]['quantity'] = $item->quantity;
        }

        //optional section buyer
        $order['buyer']['email'] = $data->address->email;
        $order['buyer']['phone'] =  $data->address->phone;
      /*  $order['buyer']['firstName'] = 'Jan';
        $order['buyer']['lastName'] = 'Kowalski';*/

        $response = OpenPayU_Order::create($order);
        $response_data = $response->getResponse();
        if($response_data->status->statusCode == 'SUCCESS'){
            $data->payment_link = $response_data->redirectUri;
            $data->update();
        }
        $service = new PayuPayment();
        $payu_order = $service->getById($response->getResponse()->orderId);
        if(array_key_exists(0, $payu_order->orders)){
            $ord = $payu_order->orders[0];
            $history = collect();
            $history->push(PayuHistory::create(Carbon::now(), 'Płatność utworzona', 'Płatność dla zamówienia '.$ord->extOrderId. 'utworzona w systemie PayU'));
            PayuModel::create([
                'local_order_id' => $data->id,
                'payu_order_id' => $ord->orderId,
                'currency' => $ord->currencyCode,
                'totalAmount' => number_format(intval($ord->totalAmount)/100, 2),
                'history' => serialize($history),
                'status' => $payu_order->status->statusCode,
            ]);
        }
        if($response_data->redirectUri){
            return ['redirect' => $response_data->redirectUri];
        }else return null;
    }
    public function getById($id){
        return OpenPayU_Order::retrieve($id)->getResponse();
    }
}
