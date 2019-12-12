<?php

namespace App\Http\Controllers;

use App\Attribute;
use App\Category;
use App\Product;
use App\ProductAttribute;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class ProductController extends Controller
{
    public function index(Request $request, $slug = null){
        if($slug){
            $category = Category::where('url', $slug)->first();
            if(!$category) return back()->withErrors('Nie ma takiej kategorii');
        }
        $attributes = Attribute::getAllAttributes();
        $products = new Product();
        if($request->get('attributes')){
            foreach ($request->get('attributes') as $key => $attr){
                if($attr != null){
                    $atr = Attribute::find($key);
                    if(!$atr->is_boolean || $attr != '0'){
                        $products = $products->whereHas('attributes', function($q)use($attr, $key){
                            if(App::getLocale() != 'pl'){
                                $q->where('attribute_id', $key)->whereTranslation('value', $attr);
                            }else{
                                $q->where('attribute_id', $key)->where('value', $attr);
                            }
                        });
                    }
                }
            }
        }
        if(isset($category) && $category){
            $products = $products->where('category_id', $category->id);
            $category = $category->translate(App::getLocale(), 'pl');
        }
        if($request->price_to && $request->price_to != ''){
            $products = $products->where('price', '<=', $request->price_to);
        }
        if($request->price_from && $request->price_from != ''){
            $products = $products->where('price', '>=', $request->price_from);
        }
        if($request->orderBy){
            $products = $products->orderBy($request->orderBy, ($request->orderType)? $request->orderType : 'desc');
        }else{
            $products = $products->orderBy('created_at', 'desc');
        }
        $products = $products->paginate(20);
/*        $products = $products->translate();*/
        return view('products.index', compact('attributes', 'products', 'category'));
    }
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
    public function show(Request $request, $slug){
        $product = Product::where('url', $slug)->first();
        $product = $product->translate(App::getLocale(), 'pl');
        if(!$product) return back()->with(['message' => 'Produkt nie istnieje']);
        return view('products.show', compact('product'));
    }
}
