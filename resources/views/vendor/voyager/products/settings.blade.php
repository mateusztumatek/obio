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

    <!-- Styles -->
</head>
<body>
<v-app id="app">
    <v-content class="container">
        <div class="flex-center position-ref">
            <div class="ma-auto">
                <example :image="'{{url('/storage/'.$product->main_image)}}'" :product="{{json_encode($product)}}"></example>
            </div>
        </div>
    </v-content>
    <errors></errors>
</v-app>
</body>
<script>
    var base_url = "{{url('/')}}";
</script>
<script src="{{ asset('js/app.js') }}" defer></script>
</html>
