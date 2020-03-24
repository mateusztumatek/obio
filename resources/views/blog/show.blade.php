@extends('layout.app')
@section('title')
    {{$blog->title}}
    @endsection
@section('description')
    {{substr(strip_tags($blog->content), 0, 150)}}
    @endsection
@section('content')
    <div class="container">
        <div class="row" v-cloak>
            <div class="col-12">
                <ul class="v-breadcrumbs">
                    <li>
                        <a href="{{route('blog.index')}}" class="v-breadcrumbs__item">Blog</a>
                    </li>
                    <li class="v-breadcrumbs__divider">-</li>
                    <li>
                        <a href="{{route('blogs.show', ['url' => $blog->url])}}" class="v-breadcrumbs__item">{{substr($blog->title, 0, 20)}}</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-8">
                <v-card color="white">
                    <v-img height="400px" src="{{url('/storage/'.$blog->images[0])}}"></v-img>
                    <v-card-title><h1 class="headline">{{$blog->title}} </h1>
                        <div class="w-100">
                            <span class="text-muted" style="font-size: 0.8rem">{{$blog->created_at->diffForHumans()}}</span><br>
                        </div>
                    </v-card-title>
                    <v-card-text>
                        <div class="mb-4">
                            <rate-component model="blog" type="reviews" foreign_key="{{$blog->id}}" type="review" :parent_rates="{{$blog->rates}}" ></rate-component>
                        </div>

                        <div>{!! $blog->content !!}</div>
                        <rate-component type="rate" foreign_key="{{$blog->id}}" model="blog" :parent_rates="{{$blog->rates}}" ></rate-component>
                    </v-card-text>
                </v-card>
            </div>
            <div class="col-lg-4">
                <v-list>
                    <v-list-item>
                        <v-list-item-content>
                            <v-list-item-title>Ostatnie posty:</v-list-item-title>
                        </v-list-item-content>
                    </v-list-item>
                    @foreach($blogs as $blog)
                        <v-list-item three-line href="{{route('blogs.show', ['url' => $blog->url])}}">
                            <v-list-item-avatar tile size="100">
                                <a class="w-100" href="{{route('blogs.show', ['url' => $blog->url])}}"><v-img src="{{url('/storage/'.$blog->images[0])}}"></v-img></a>
                            </v-list-item-avatar>
                            <v-list-item-content>
                                <v-list-item-title><a class="my-link" href="{{route('blogs.show', ['url' => $blog->url])}}">{{substr($blog->title, 0, 60)}}...</a></v-list-item-title>
                                <v-list-item-subtitle>{{$blog->created_at->diffForHumans()}}</v-list-item-subtitle>
                                <p class="text-muted" style="font-size: 0.9rem">{{substr(strip_tags($blog->content), 0, 100)}}...</p>
                            </v-list-item-content>
                        </v-list-item>
                    @endforeach
                </v-list>
            </div>
        </div>
    </div>
@endsection
