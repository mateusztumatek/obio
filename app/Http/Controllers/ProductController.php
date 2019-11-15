<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function bounds(Request $request, $id){
        $product = Product::find($id);

        $temp_x = $request->data['tools'][0]['width'] * $request->data['tools'][0]['scaleX'];
        if($request->data['tools'][0]['x'] < -$temp_x || $request->data['tools'][0]['x'] > $request->data['configKonva']['width']){
            return response()->json(['message' => 'Nie możesz ustawiać projektu poza obszar roboczy'], 400);
        }
        $product->data = json_encode($request->data);
        $product->update();
        return response()->json($product);
    }
    public function show(Request $request, $id){
        $product = Product::find($id);
        if(!$product) return back()->with(['message' => 'Produkt nie istnieje']);
    }
}
