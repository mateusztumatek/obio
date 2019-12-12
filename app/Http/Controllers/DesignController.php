<?php

namespace App\Http\Controllers;

use App\Attribute;
use App\Design;
use App\Pattern;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class DesignController extends Controller
{
    public function index(Request $request){
        $designs = Design::getDesigns();
        return response()->json($designs);
    }
    public function showKreator(Request $request){
        $product = null;
        $design = null;
        $with = collect();
        if($request->product_id){
            $product = Product::with('attributes')->find($request->product_id);
        }

        if($request->design_id){
            $design = Design::getDesign($request->design_id, $request->storage);
            if(!$design){
                $with->push('Nie udalo sie pobrać projektu');
            }
        }
        if(!$product && !$design){
            $products = Product::where('data', '!=', null)->paginate(20);
            $attributes = Attribute::getAllAttributes();
        }else{
            $products = null;
            $attributes = null;
        }
        return view('designer.index', compact('product', 'design', 'products', 'attributes'))->withErrors($with);
    }
    public function save(Request $request){
        $designs = Design::getDesigns();
        $request->validate([
            'pattern_id' => 'required|exists:patterns,id'
        ]);
        $request->request->set('data', json_encode($request->data));
        if(Auth::id()){
            $request->request->set('user_id', Auth::id());
            $design = Design::create($request->all());
            $designs->push($design);
        }else{
            $designs_session = Design::getDesigns();
            $design = new Design();
            $design->product_id = $request->product_id;
            $design->pattern_id = $request->pattern_id;
            $design->pattern = Pattern::find($request->pattern_id);
            $design->image = $request->image;
            $design->data = $request->data;
            $design->name = 'Example name';
            $design->storage = 'session';
            (!$designs_session)? $id = 1 : $id = count($designs_session)+1;
            $design->id = $id;
            $designs_session->push($design);
            Session::put('designs', $designs_session);
            $designs->push($design);
        }
        return response()->json($design);
    }
    public function destroy(Request $request, $id, $storage){
        if($storage == 'session'){
            $designs = $request->session()->get('designs');
            $designs = $designs->reject(function ($item)use($id){
                return $item->id == $id;
            });
            $request->session()->put('designs', $designs);
        }else{
            Design::find($id)->delete();
        }
        return response()->json(true);
    }
}
