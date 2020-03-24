<?php

namespace App\Http\Controllers;

use App\Shop\Attribute;
use App\Shop\Category;
use App\Shop\Product;
use App\Relations\ProductAttribute;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Cache;

class ProductController extends Controller
{
    public function index(Request $request, $slug = null, $slug2 = null, $slug3 = null){
        if($slug){
            $category = Category::where('url', $slug)->first();
            if(!$category) return back()->withErrors('Nie ma takiej kategorii');
        }
        if($slug2){
            $category = Category::where('parent_id', $category->id)->where('url', $slug2)->first();
            if(!$category) return back()->withErrors('Nie ma takiej kategorii');
        }
        if($slug3){
            $category = Category::where('parent_id', $category->id)->where('url', $slug3)->first();
            if(!$category) return back()->withErrors('Nie ma takiej kategorii');
        }
        $attribute_cache_key = 'attributes';
        if(!($attributes = Cache::get($attribute_cache_key))){
            $attributes = \App\Shop\Attribute::getAllAttributes();
            Cache::put($attribute_cache_key, $attributes, Carbon::now()->addDays(2));
        }

        $products = new \App\Shop\Product();
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
            $products = $products->whereHas('categories', function ($q)use($category){
                $q->where('category_id', $category->id);
            });
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
        $products = $products->with('rates')->paginate(($request->limit)? $request->limit : 30);
/*        $products = $products->translate();*/
        if($request->ajax()) return response()->json($products);
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
        if(!$product) return back()->with(['errors' => 'Nie ma takiego produktu']);
        $product->update([
            'views_count' => $product->views_count + 1
        ]);
        $product = $product->translate(App::getLocale(), 'pl');
        $attributes = $product->attributes;
        $attributes = $attributes->groupBy('attribute.name');
        $proposed = $product->getModel()->getProposed();
        if(!$product) return back()->with(['message' => 'Produkt nie istnieje']);
        return view('products.show', compact('product', 'attributes', 'proposed'));
    }
}
