<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;

class StorageController extends Controller
{
    public function index(Request $request, $path){
        $path = storage_path('/app/public/'.$path);
        if(file_exists($path)){
            $info = pathinfo($path);
            if(is_array($info)){
                if($info['extension'] == 'jpg' || $info['extension'] == 'png'){
                    if($request->width || $request->height){
                        $img = Image::make($path);
                        if($request->width){
                            $img->resize($request->width, null, function ($constraint) {
                                $constraint->aspectRatio();
                            });
                        }
                        return $img->response($info['extension']);
                    }
                }
            }
            return response()->file($path);
        }else{
            abort(404);
        }
    }
}
