<?php

namespace App\Observers;

use App\Services\PayuModel;

class PayuPaymentObserver
{
    /**
     * Handle the services payu payment "created" event.
     *
     * @param  \App\ServicesPayuPayment  $servicesPayuPayment
     * @return void
     */
    public function created(PayuModel $payment)
    {
        $order = $payment->order;
        if($order){
            if($payment->status == 'SUCCESS' || $payment->status == 'COMPLETED'){
                $order->paid = true;
            }else{
                $order->paid = false;
            }
            $order->update();
        }
    }

    /**
     * Handle the services payu payment "updated" event.
     *
     * @param  \App\ServicesPayuPayment  $servicesPayuPayment
     * @return void
     */
    public function updated(PayuModel $payment)
    {
        $order = $payment->order;
        if($order){
            if($payment->status == 'SUCCESS' || $payment->status == 'COMPLETED'){
                $order->paid = true;
            }else{
                $order->paid = false;
            }
            $order->update();
        }
    }

    /**
     * Handle the services payu payment "deleted" event.
     *
     * @param  \App\ServicesPayuPayment  $servicesPayuPayment
     * @return void
     */
    public function deleted(PayuModel $payment)
    {
        //
    }

    /**
     * Handle the services payu payment "restored" event.
     *
     * @param  \App\ServicesPayuPayment  $servicesPayuPayment
     * @return void
     */
    public function restored(PayuModel $payment)
    {
        //
    }

    /**
     * Handle the services payu payment "force deleted" event.
     *
     * @param  \App\ServicesPayuPayment  $servicesPayuPayment
     * @return void
     */
    public function forceDeleted(PayuModel $payment)
    {
        //
    }
}
