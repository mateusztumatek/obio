<?php

namespace App\Http\Controllers;

use App\Design;
use App\Font;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class FontsController extends Controller
{
    public function index(Request $request)
    {
        $fonts = Font::all();
        return response()->json($fonts);
    }
}
