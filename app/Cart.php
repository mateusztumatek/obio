<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Session;

class Cart
{
    public $items, $price;
    public function addItem($product, $quantity, $design, $preview_image){
        $items_price = 0;
        $product->quantity = $quantity;
        $product->preview_image = $preview_image;
        $product->design = $design;
        $items_price = $items_price + ($product->getPrice() * $quantity);
        if($design){
            $design->price = $design->calculatePrice();
            $total_price = $items_price + $design->price;
        }
        $product->items_price = $items_price;
        $product->total_price = $total_price;
        $this->price = $this->price + $product->total_price;
        $this->items->push($product);
    }
    public static function getCart(){
        if(!Session::has('cart')){
            $cart = new Cart();
            $cart->items = collect();
            $cart->price = 0;
            Session::put('cart', $cart);
        }else{
            $cart = Session::get('cart');
        }
        return $cart;
    }
    public function deleteItem($id){
        $item = $this->items[$id];
        $this->price = $this->price - $item->total_price;
        $this->items->splice($id, 1);
    }
    public function save(){
        Session::put('cart', $this);
    }
    public function updateItem($index, $item){
        $temp = $this->items[$index];
        $temp->quantity = $item['quantity'];
        $this->deleteItem($index);
        $this->addItem($temp, $temp->quantity, $temp->design, $temp->preview_image);
    }
}
