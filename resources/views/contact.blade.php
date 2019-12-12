@extends('layout.app')
@section('title')
    Kontakt
    @endsection
@section('description')
    Masz pytania odnośnie zamówienia, lub produktu na stornie, skontaktuj się z nami Ideacap
    @endsection
@section('content')
    <div class="give-me-space">
        <div class="container">
            <div class="row text-center" style="justify-content: center">
                <div class="col-md-12">
                    <h1>{{__('my.Skontaktuj się z nami')}}</h1>
                </div>
            </div>
        </div>
        <contact-form></contact-form>
    </div>
    @endsection
