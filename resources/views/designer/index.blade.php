@extends('layout.app')
@section('title')
    Kreator czapek z haftem.
    @endsection
@section('description')
    Kreator czapek z haftem.
    @endsection
@section('content')
    <div class="container">
        @if($products)

            @include('designer.products_picker', ['products' => $products])
            @endif
        @if($product)
            <stepper-component :product="{{json_encode($product)}}"></stepper-component>
        @elseif($design)
            <stepper-component :product="{{json_encode($design->product->load('attributes'))}}" :parent_design="{{json_encode($design)}}"></stepper-component>
        @endif
    </div>

    @endsection
