<?php

namespace App\Http\Controllers;

use App\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(Request $request){
        $blogs = Blog::with('rates')->paginate(40);
        return view('blog.index', compact('blogs'));
    }

    public function show(Request $request, $url){
        $blog = Blog::where('url', $url)->with('rates')->first();
        if(!$blog) return back()->withErrors('Nie ma takiego postu');
        $blogs = Blog::latest()->take(5)->get();
        return view('blog.show', compact('blog', 'blogs'));
    }
}
