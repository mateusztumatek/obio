<?php

namespace App\Http\Controllers;

use App\Pattern;
use Illuminate\Http\Request;

class PatternController extends Controller
{
    public function index(Request $request){
        return response()->json(Pattern::all());
    }
}
