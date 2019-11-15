<?php
namespace App\Services;
use OpenPayU_Order;
use OpenPayU_Configuration;
class PayuPayment{


    public function __construct()
    {
        OpenPayU_Configuration::setEnvironment(config('payu.env'));

        OpenPayU_Configuration::setMerchantPosId(config('payu.pos_id'));
        OpenPayU_Configuration::setSignatureKey(config('payu.md5'));

        OpenPayU_Configuration::setOauthClientId(config('payu.client_id'));
        OpenPayU_Configuration::setOauthClientSecret(config('payu.client_secret'));
    }

    public function getById($id){
        return OpenPayU_Order::retrieve($id)->getResponse();
    }
}
