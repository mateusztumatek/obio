<?php

namespace App\Http\Controllers;

use App\Design;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class DesignController extends Controller
{
    public function index(Request $request){
        $designs = Design::getDesigns();
        return response()->json($designs);
    }
    public function save(Request $request){
        $designs = Design::getDesigns();
        $request->request->set('data', json_encode($request->data));
        if(Auth::id()){
            $request->request->set('user_id', Auth::id());
            $design = Design::create($request->all());
            $designs->push($design);
        }else{
            $designs_session = Design::getDesigns();
            $design = new Design();
            $design->product_id = $request->product_id;
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
