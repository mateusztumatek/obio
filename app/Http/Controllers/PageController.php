<?php

namespace App\Http\Controllers;

use App\Page;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function show(Request $request, $slug){
        $page = Page::where('url', $slug)->first();
        if(!$page){
            return redirect()->route('home')->withErrors('Nie ma takiej strony');
        }
        return view('page.show', compact('page'));
    }
}
