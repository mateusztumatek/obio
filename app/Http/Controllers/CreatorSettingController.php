<?php

namespace App\Http\Controllers;

use App\CreatorSetting;
use Illuminate\Http\Request;

class CreatorSettingController extends Controller
{
    public function index(Request $request){
        return response()->json(CreatorSetting::all());
    }
}
