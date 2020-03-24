<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
$locale = \Illuminate\Support\Facades\App::getLocale();
if($locale == 'pl') $locale = '';
Route::group(['prefix' => $locale], function (){

    Route::get('/', 'HomeController@index')->name('home');
    Route::get('/user/orders', 'UserController@orders');
    Route::resource('/user', 'UserController');
    \Illuminate\Support\Facades\Auth::routes();
    /*Route::get('/storage/{filePath}', 'StorageController@index')->where(['filePath' => '.*']);*/
    Route::post('/products/{id}/bounds', 'ProductController@bounds');
    Route::resource('/designs', 'DesignController');
    Route::delete('/designs/{id}/{storage}', 'DesignController@destroy');
    Route::post('/saveProject', 'DesignController@save');
    Route::group(['prefix' => 'admin'], function () {
        Voyager::routes();
        Route::post('copy', 'Voyager\VoyagerBaseController@copy')->name('admin.copy');
        Route::get('products/{id}/settings', 'Voyager\ProductController@settings');
        Route::get('/tlumaczenia', 'Voyager\TranslateController@index')->name('tlumaczenia.index');
        Route::post('/tlumaczenia', 'Voyager\TranslateController@store');
        Route::get('/colors', 'Voyager\ProductController@colors');
        Route::post('/clear_cache', function (){
            \Illuminate\Support\Facades\Artisan::call('cache:clear');
            return back()->with(['message' => 'Wyczyszczono cache poprawnie']);
        });
    });

    Route::post('upload/{path}', 'UploadController@upload');
    Route::resource('patterns', 'PatternController');
    Route::resource('/fontss', 'FontsController');

    Route::resource('/produkty', 'ProductController');
    Route::get('/kategoria/{slug}/{slug2?}/{slug3?}', 'ProductController@index')->name('category.show');

    Route::post('/cart/add', 'CartController@add');
    Route::put('/cart/{id}', 'CartController@update');
    Route::get('/cart', 'CartController@show');
    Route::delete('/cart/{id}', 'CartController@destroy');
    Route::post('/cart/code', 'CartController@code');


    Route::get('/zamawiam', 'OrderController@index')->name('orders.index');
    Route::post('/order/notify', 'OrderController@notify');
    Route::post('/order/reorder', 'OrderController@reorder');
    Route::get('/orders/{id}', 'OrderController@show');
    Route::resource('shipments', 'ShipmentController');
    Route::resource('/orders', 'OrderController');

    Route::get('/color_groups', 'HomeController@colors');
    Route::get('/settings', 'HomeController@settings');

    Route::post('/kontakt/wyslij', 'HomeController@sendMessage');

    Route::post('/newsletter', 'HomeController@newsletter');

    Route::resource('/creator_settings', 'CreatorSettingController');

    Route::get('/home', function (){
        return redirect(url('/'));
    });
    Route::resource('/rates', 'RateController');
    Route::get('/blog/{url}', 'BlogController@show')->name('blogs.show');
    Route::resource('blog', 'BlogController');
    Route::get('{slug}', 'PageController@show');

});

