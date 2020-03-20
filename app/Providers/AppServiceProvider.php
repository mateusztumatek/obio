<?php

namespace App\Providers;

use App\Observers\OrderObserver;
use App\Observers\PayuPaymentObserver;
use App\Services\PayuModel;
use Illuminate\Pagination\Paginator;
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
        /*Paginator::defaultView('my_pagination');*/
        Schema::defaultStringLength(191);
        PayuModel::observe(PayuPaymentObserver::class);
        \App\Shop\Order::observe(OrderObserver::class);
    }
}
