<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/@mdi/font@4.x/css/materialdesignicons.min.css" rel="stylesheet">
    <title>Laravel</title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

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
    <v-content class="container">
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
</v-app>
</body>
<script>
    var base_url = "{{url('/')}}";
</script>
<script src="{{ asset('js/app.js') }}" defer></script>
</html>
