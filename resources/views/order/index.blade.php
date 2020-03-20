@extends('layout.app')
@section('content')
    <order :cart="$cart.cart"></order>
    @endsection
