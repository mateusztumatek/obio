@extends('layout.app')
@section('content')
    <div class="container">
        <div class="row" v-cloak>
            @foreach($blogs as $blog)
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <v-card ripple elevation="8">
                    <v-img height="200px" src="{{url('/storage/'.$blog->images[0])}}"></v-img>
                    <v-card-title>
                        {{substr($blog->title,0, 60)}}...<br>
                        <span class="text-muted" style="font-size: 0.8rem">{{$blog->created_at->diffForHumans()}}</span>
                    </v-card-title>
                    <v-card-text>
                        <rate-component model="blog" type="reviews" foreign_key="{{$blog->id}}" type="review" :parent_rates="{{$blog->rates}}" ></rate-component>
                        <p class="text-muted">{{substr(strip_tags($blog->content), 0, 200)}}...</p>
                    </v-card-text>
                    <v-card-actions>
                        <v-btn color="black" dark depressed><a class="white--text default-link" href="{{route('blogs.show', ['url' => $blog->url])}}">Zobacz</a></v-btn>
                    </v-card-actions>
                </v-card>
            </div>
                @endforeach
            <div class="col-12">
                {{$blogs->links()}}
            </div>
        </div>
    </div>
    @endsection
