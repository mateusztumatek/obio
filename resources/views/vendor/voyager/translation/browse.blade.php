@extends('voyager::master')

@section('page_title', 'Tlumaczenia')

@section('page_header')
    <div class="container-fluid">
        <h1 class="page-title">
            Tlumaczenia
        </h1>
    </div>
@stop

@section('content')
    <div class="page-content browse container-fluid">
        @include('voyager::alerts')
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body" id="app">
                        <translations :translations="{{json_encode($translations)}}" :keys="{{json_encode($keys)}}"></translations>
                    </div>
                </div>
            </div>
        </div>
    </div>

@stop

@section('css')

@stop

@section('javascript')
    <script>
        var base_url = '{{url('/')}}';

    </script>
@stop
