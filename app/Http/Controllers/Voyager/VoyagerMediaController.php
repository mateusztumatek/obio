<?php

namespace App\Http\Controllers\Voyager;

use Illuminate\Http\Request;
use TCG\Voyager\Http\Controllers\VoyagerMediaController as BaseVoyagerMediaController;

class VoyagerMediaController extends BaseVoyagerMediaController
{
    public function upload(Request $request)
    {
        $to_return = parent::upload($request); // TODO: Change the autogenerated stub
        if($request->page_builder){
            $img = url('/storage/'.$to_return->original['path']);
            return response()->json(['data' => [$img]]);
        }
        return $to_return;
    }
}
