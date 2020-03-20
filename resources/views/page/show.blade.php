@extends('layout.app')
@section('title')
    {{$page->page_title}}
@endsection
@section('description')
    {{$page->page_description}}
@endsection
@section('css')
    <style type="text/css">
        {!! $page->css !!}
        .v-content{
            background-color: white !important;
        }
    </style>
    @endsection
@section('content')
    <div class="give-me-space">
        <div class="container">
            <div class="row text-center" style="justify-content: center">
                <div class="col-md-12">
                    {!! $page->html !!}
                </div>
            </div>
            <div class="clearfix"></div>
            @if($page->title == 'Kontakt' || $page->title == 'kontakt')
            <div style="width: 100%; display: flex !important; justify-content: center">
                <div class="col-12">
                    <contact-form></contact-form>
                </div>
            </div>
                @endif
        </div>
    </div>
@endsection
