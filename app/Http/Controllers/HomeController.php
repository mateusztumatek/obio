<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use PragmaRX\Tracker\Vendor\Laravel\Facade as Tracker;

class HomeController extends Controller
{
    public function index(Request $request){
        $product = Product::find(2);
        return view('designer.index', compact('product'));
    }
}
