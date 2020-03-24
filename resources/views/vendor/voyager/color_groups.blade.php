@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        .color{
            width: 30px;
            height: 30px;
            border-radius: 100%;
            margin: 5px;
            display: flex;
            position: relative;
        }
        .active-color:after{
            content:'';
            width: 10px;
            height: 10px;
            background-color: #0F110C;
            position: absolute;
            right: -2px;
            top: -2px;
            border-radius: 100%;

        }
    </style>
@stop

@section('page_title', 'Grupy kolorów')

@section('page_header')
    <h1 class="page-title">
        Grupy kolorów
    </h1>
    @include('voyager::multilingual.language-selector')
@stop
@section('content')
    <div class="page-content edit-add container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">
                    <div class="panel-body" id="admin_app">
                        <div class="col-md-12" v-if="loaded">
                            <div class="card">
                                <div class="card-header">
                                    <button class="btn btn-primary" @click="$colors.groups.push({})">Dodaj grupę kolorów</button>
                                </div>
                            </div>
                            <div class="card" v-for="group in $colors.groups" style="margin: 10px 0px;">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label>Nazwa grupy</label>
                                        <input type="text" class="form-control" v-model="group.name">
                                    </div>
                                    <div class="form-group">
                                        <label>Kolor grupy</label>
                                        <input type="color" class="form-control" v-model="group.hex">
                                    </div>
                                    <div class="form-group">
                                        <label>Kolory</label>
                                        <div style="display: flex; flex-wrap: wrap">
                                            <div v-for="color in $colors.all_colors" class="color active-color" :style="{'background-color': color}"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- panel-body -->
                </div>
            </div>
        </div>
    </div>

@stop

    @section('javascript')
        <script>
            setTimeout(() => {
                Vue.prototype.$colors.setAllColors(JSON.parse('{!! $colors->toJson() !!}'));
            }, 500)
        </script>
        @endsection

