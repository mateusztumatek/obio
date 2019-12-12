@extends('layout.app')
@section('title')
    {{$product->name}}
    @endsection
@section('description')
    {{$product->short_desc}}
    @endsection
@section('content')
    <div class="container">
        <div class="give-me-space">
            <div class="container">
                <div class="row">
                    @php
                        $images = $product->getModel()->getImages();
                    @endphp
                    <div class="col-md-6 pr-4 text-center" data-class_after_load="slide_from_center_left" style="z-index: 1">
                        <img style="max-width: 80%; margin: auto" src="{{url('/storage/'.$images[0])}}">
                        <div class="thumbnails">
                            <div class="row">
                                @foreach($images as $image)
                                    <div class="col-4">
                                        <img style="width: 100%" src="{{\Illuminate\Support\Facades\Storage::url($image)}}">
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6" data-class_after_load="slide_from_center_right" style="z-index: 0">
                        <p>{{$product->getModel()->category()->first()->name}}</p>
                        <div class="header d-flex" style="justify-content: space-between; flex-wrap: wrap">
                            <h1>
                                {{$product->name}}
                                @if($product->is_new)
                                    <v-chip class="ml-2" color="primary">Nowość</v-chip>
                                @endif
                            </h1>
                            <div>
                                <p class="mb-0 font-weight-bold">{{price($product->calculated)}} zł</p>
                                @if($product->price > $product->calculated)
                                    <p class="mb-0 text-muted price-crossed">{{price($product->price)}} zł</p>
                                @endif
                            </div>
                        </div>
                        <div class="mt-3">
                            <div data-description_holder>{!! $product->desc !!}</div>
                            <div class="clearfix"></div>
                            <div class="mt-3">
                                @foreach($product->attributes as $attribute)
                                    @if($attribute->attribute->name != 'Rozmiar')
                                    <v-chip class="my-1" color="primary">{{$attribute->attribute->name}}: {{$attribute->value}}</v-chip>
                                    @endif
                                @endforeach
                            </div>

                            <product-actions :product="{{json_encode($product->getModel())}}"></product-actions>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endsection
