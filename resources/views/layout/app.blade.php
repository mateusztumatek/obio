<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/@mdi/font@4.x/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Space+Mono:400,700&display=swap" rel="stylesheet">
    <title>@yield('title', setting('site.title'))</title>
    <meta name="description" content="@yield('description', setting('site.description'))"/>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <style>
        .loader{
            z-index: 10000000;
            transition: all 300ms;
            position: fixed;
            left: 0px;
            top: 0px;
            width: 100vw;
            height: 100vh;
            background-color: #222222;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .loader > .holder{
            position: relative;
            height: 90px;
        }
        .loader > .holder > img{
            width: 100%;
            height: 100%;
        }
        .loader > .holder > .trans{
            transition: all 100ms;
            height: 100%;
            position: absolute;
            left: 0px;
            top: 0px;
            background-color: #08FF97;
            z-index: -1;
        }
        .loaded{
            transform: scaleY(0.0001);
            opacity: 0;
        }
    </style>
    <!-- Fonts -->
@php
    $fonts = \App\Font::all();
    foreach ($fonts as $font){
    $font->url = url('/storage/'.$font->url);
    }
@endphp
    <!-- Styles -->
    <script>
        var fonts = JSON.parse('{!! json_encode($fonts) !!}');
        fonts.forEach((item) => {
            var junction_font = new FontFace(item.font_family, "url("+item.url+")");
            junction_font.load().then(function(loaded_face) {
                document.fonts.add(loaded_face);
            })
        });
    </script>
</head>
<body>
<v-app id="app">
    @include('layout.header')
    <v-content style="padding: 24px 0px">
        <div class="flex-center position-ref">
            <div class="ma-auto">
                @yield('content')
                {{--
                                <example :image="'{{url('/storage/'.$product->main_image)}}'" :product="{{json_encode($product)}}"></example>
                --}}
            </div>
        </div>
    </v-content>
    @include('layout.sidebar')
    <cart-component :show="cartShow"></cart-component>
    <designs-holder></designs-holder>
    <errors></errors>
    <div class="loader" id="loader">
        <div class="holder">
            <img src="{{url('/storage/logo-inverted.png')}}">
            <div class="trans"></div>
        </div>
    </div>
    <v-speed-dial
            class="ml-2"
            v-model="fab"
            fixed
            right
            bottom
            right
    >
        <template v-slot:activator>
            <v-btn
                    color="white"
                    fab
            >
                <v-icon v-if="fab">mdi-close</v-icon>
                <v-icon v-else>mdi-flag-outline</v-icon>
            </v-btn>
        </template>
        <v-btn
                fab
                dark
                small
                color="black"
                href="{{\App\Helpers\Helper::getChangeLangLink('en')}}"
        >
            <img style="max-width: 30px" :src="$root.base_url+'/images/england.svg'">
        </v-btn>
        <v-btn
                fab
                dark
                small
                color="black"
                href="{{\App\Helpers\Helper::getChangeLangLink('pl')}}"
        >
            <v-img max-width="30" :src="$root.base_url+'/images/poland.svg'"></v-img>
        </v-btn>
        <v-btn
                fab
                dark
                small
                href="{{\App\Helpers\Helper::getChangeLangLink('de')}}"
                color="black"
        >
            <v-img max-width="30" :src="$root.base_url+'/images/germany.svg'"></v-img>
        </v-btn>
    </v-speed-dial>
    @include('layout.footer')
</v-app>
</body>
<script>
    var clearLoader = () => {
        window.document.getElementById('loader').classList.add('loaded');
    }
    var i =1;
    var loader = setInterval(() => {
        i = i+1;
        var value = i*10;
        if(value >= 100) value = 100;
        window.document.getElementById('loader').querySelector('.trans').style.width=value+'%';
    },1);
    window.addEventListener('load', function(){
        window.document.getElementById('loader').querySelector('.trans').style.width=100+'%';
        setTimeout(() => {
            clearLoader();
            clearInterval(loader);
            AOS.init();

        }, 150)
    })
</script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<script>
    var translations = JSON.parse('{!! json_encode(\Illuminate\Support\Facades\Lang::get('my')) !!}');
    var session_errors = JSON.parse('{!! json_encode($errors->all()) !!}');
    @if(\Illuminate\Support\Facades\App::getLocale() != 'pl')
            var lang_slug = '/{{\Illuminate\Support\Facades\App::getLocale()}}';
        @else
            var lang_slug = '';
        @endif
    var base_url= "{{url('/')}}";
    var relative_url = "{{url('/')}}"+lang_slug;
    var lang_slug = "{{(\Illuminate\Support\Facades\App::getLocale() != 'pl')? \Illuminate\Support\Facades\App::getLocale() : ''}}"
</script>
<script src="{{ asset('js/app.js') }}"></script>

@yield('js')
</html>
