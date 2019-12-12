<?php

namespace App\Providers;

use App\Observers\OrderObserver;
use App\Observers\PayuPaymentObserver;
use App\Order;
use App\Services\PayuModel;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        PayuModel::observe(PayuPaymentObserver::class);
        Order::observe(OrderObserver::class);
    }
}
