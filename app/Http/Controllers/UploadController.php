<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class UploadController extends Controller
{
    public function upload(Request $request, $path){
        $arr = collect();
        $details = [];
        if($request->allFiles()){
            $date = Carbon::now();
            foreach ($request->allFiles() as $file){
                $image = $file;
                if($image->getClientOriginalExtension() == "" || $image->getClientOriginalExtension() == null){
                    $filename = md5(Str::random(60)).'.jpg';
                }
                else $filename = md5(Str::random(60)).'.'.$image->getClientOriginalExtension();

                /* Making directory for small Image */

                $path = $path.'/'.$date->format('F').$date->format('Y').'/';
                try{
                    $sizeInfo = getimagesize($file);
                    $details['width'] = $sizeInfo[0];
                    $details['height'] = $sizeInfo[1];
                }catch (\Exception $exception){}
                if(!\Illuminate\Support\Facades\File::exists(storage_path('app/public/'.$path))){
                    \Illuminate\Support\Facades\File::makeDirectory(storage_path('app/public/'.$path), 493, true);
                }

                $image->move(storage_path('app/public/'.$path), $filename);
                if(!$request->details){
                    $arr->push($path.'/'.$filename);
                }else{
                    $path = $path.'/'.$filename;
                    $details['file'] = $path;
                    $details = $this->fileInfo($path, $details);
                    $arr->push($details);
                }

            }

        }else{
            return response()->json(['message' => 'Field' .$path.' not found'],  404);
        }
        return response()->json(json_decode($arr));
    }
    public function fileInfo($filePath, $details)
    {
        $filePath = pathinfo(storage_path('/app/public/'.$filePath));
        $file = array();
        $file['name'] = $filePath['filename'];
        $file['extension'] = $filePath['extension'];
        $file['size'] = filesize($filePath['dirname'] . '/' . $filePath['basename']);
        $details = array_merge($details, $file);
        return $details;
    }
}
