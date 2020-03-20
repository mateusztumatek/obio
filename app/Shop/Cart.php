<?php

namespace App\Shop;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Session;

class Cart
{
    public $items, $price, $totalPrice, $code, $discount;
    public function addItem($product, $quantity, $preview_image, $attributes, $designs, $link){

        $items_price = 0;
        $product->quantity = $quantity;
        $product->preview_image = $preview_image;
        $calc = $product->calculated;
        $attributes = collect($attributes);
        foreach ($attributes as $attr){
            $calc = $calc + $attr->price;
        }
        $items_price = $items_price + ($calc * $quantity);
        $total_price = $calc;
        $product->items_price = $items_price;
        $product->designs = $designs;
        $product->setAttribute('attributes', $attributes);
        $product->total_price = $total_price;
        $product->price = $product->calculated;
        $this->price = $this->price + $product->items_price;
        $product->item_link = $link;
        $this->items->push($product);
        $this->refresh();

    }
    public static function getCart(){
        if(!Session::has('cart')){
            $cart = new Cart();
            $cart->items = collect();
            $cart->price = 0;
            $cart->refresh();
            Session::put('cart', $cart);
        }else{
            $cart = Session::get('cart');
        }
        return $cart;
    }
    public function deleteItem($id){
        $item = $this->items[$id];
        $this->price = $this->price - $item->items_price;
        $this->items->splice($id, 1);
        $this->refresh();
    }
    public function save(){
        Session::put('cart', $this);
    }
    public function updateItem($index, $item){
        $temp = $this->items[$index];
        $temp->quantity = $item['quantity'];
        $this->deleteItem($index);
        $this->addItem($temp, $temp->quantity, $temp->preview_image, $temp->attributes, $temp->designs, $temp->link);
    }
    public static function reset(){
        $cart = new Cart();
        $cart->items = collect();
        $cart->price = 0;
        $cart->save();
    }
    public function applyCode($code){
        $this->code = $code;
        $this->refresh();
    }
    public function refresh(){
        if($this->code){
            if($this->code->value_discount){
              $this->discount = $this->code->value_discount;
              $this->totalPrice = $this->price - $this->code->value_discount;
            }
            if($this->code->percentage_discount){
                $calc = ($this->code->percentage_discount / 100) * $this->price;
                $this->discount = $calc;
                $this->totalPrice = $this->price - $calc;
            }
        }else{
            $this->totalPrice = $this->price;
            $this->discount = null;
        }
    }
    public function checkIfAlreadyExist($product, $size){
        foreach ($this->items as $key => $item){
            if($item->id == $product->id) return $key;
        }
        return null;
    }
}
