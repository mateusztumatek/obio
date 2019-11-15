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

Route::get('/', 'HomeController@index');

Route::get('/storage/{filePath}', 'StorageController@index')->where(['filePath' => '.*']);
Route::post('/products/{id}/bounds', 'ProductController@bounds');
Route::resource('/designs', 'DesignController');
Route::delete('/designs/{id}/{storage}', 'DesignController@destroy');
Route::post('/saveProject', 'DesignController@save');
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    Route::get('products/{id}/settings', 'Voyager\ProductController@settings');
});

Route::post('upload/{path}', 'UploadController@upload');
Route::resource('patterns', 'PatternController');
Route::resource('/fonts', 'FontsController');

Route::resource('/products', 'ProductController');

Route::post('/cart/add', 'CartController@add');
Route::put('/cart/{id}', 'CartController@update');

Route::get('/cart', 'CartController@show');
Route::delete('/cart/{id}', 'CartController@destroy');
Route::get('/zamawiam', 'OrderController@index');
Route::post('/order/notify', 'OrderController@notify');
Route::get('/orders/{id}', 'OrderController@show');
