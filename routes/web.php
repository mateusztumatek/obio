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
    Route::get('/', 'HomeController@index');

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
    });

    Route::post('upload/{path}', 'UploadController@upload');
    Route::resource('patterns', 'PatternController');
    Route::resource('/fontss', 'FontsController');

    Route::resource('/produkty', 'ProductController');

    Route::post('/cart/add', 'CartController@add');
    Route::put('/cart/{id}', 'CartController@update');

    Route::get('/cart', 'CartController@show');
    Route::delete('/cart/{id}', 'CartController@destroy');
    Route::get('/zamawiam', 'OrderController@index');
    Route::post('/order/notify', 'OrderController@notify');
    Route::get('/orders/{id}', 'OrderController@show');
    Route::resource('shipments', 'ShipmentController');
    Route::resource('/orders', 'OrderController');

    Route::get('/settings', 'HomeController@settings');

    Route::get('/kreator', 'DesignController@showKreator')->name('kreator');
    Route::get('/kontakt', 'HomeController@contact');
    Route::post('/kontakt/wyslij', 'HomeController@sendMessage');

    Route::post('/newsletter', 'HomeController@newsletter');

    Route::get('/oferta/{slug}', 'ProductController@index')->name('category');
    Route::resource('/creator_settings', 'CreatorSettingController');
});

