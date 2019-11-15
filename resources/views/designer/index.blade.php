@extends('layout.app')
@section('content')
<stepper-component :product="{{json_encode($product)}}"></stepper-component>
    @endsection()
