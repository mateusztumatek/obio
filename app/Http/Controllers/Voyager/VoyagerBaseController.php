<?php

namespace App\Http\Controllers\Voyager;

use http\Env\Request;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as BaseVoyagerBaseController;

class VoyagerBaseController extends BaseVoyagerBaseController
{
    public function copy(\Illuminate\Http\Request $request){
        $request->validate([
            'table' => 'required',
            'id' => 'required'
        ]);
        $element = DB::table($request->table)->where('id', $request->id)->first();
        if($element){
            try{
                $data = (array) $element;
                array_splice($data, 0, 1);
                DB::table($request->table)->insert($data);
            }catch(\Exception $e){
                return back()->with(['message' => $e->getMessage()]);
            }

        }
        return back()->with(['message' => 'Kopiowanie udane']);
    }
}
