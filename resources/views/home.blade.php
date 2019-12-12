@extends('layout.app')
@section('title')
    {{setting('site.title')}}
    @endsection

@section('description')
    {{setting('site.description')}}
    @endsection
@section('content')
    @if($banner)
    <div class="container">
        <div class="row banner-row">
            <div class="col-md-6 left-section">
                <div class="content">
                    <h1 data-aos="fade-right">{{$banner->name}}</h1>
                    <p  data-aos-delay="200" data-aos="fade-right">{!! strip_tags($banner->content)!!}</p>
                    <div data-aos-delay="400" data-aos="fade-right">
                        <v-btn tile class="my-border" x-large>{{__('my.Wybierz czapkę')}}</v-btn>
                    </div>
                </div>
            </div>
            <div class="col-md-6 s-relative">
                <div class="banner-holder">
                    <img class="bg" src="{{url('/images/bannerbg.png')}}">
                    <img class="cap" src="{{url('/images/cap.png')}}">
                </div>
            </div>
        </div>
    </div>
    @endif
    @include('home.brands-slider')

    @include('home.kafelki')
    @if(isset($seo) && $seo)
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="seo">
                    {!! $seo->value !!}
                    <v-btn class="my-border seo-trigger">{{__('my.Zobacz więcej')}}</v-btn>
                </div>
            </div>
        </div>
    </div>
    @endif
  {{--  <div class="give-me-space">
        <div class="container">
            <div class="give-me-space">
                <h2 class="header-2">Zobacz przykładowe projekty Haft</h2>
                <div class="designs-slider">
                    @foreach($designs as $design)
                        <div class="pa-5">
                            <img style="width: 100%" src="{{url('/storage/'.$design->image)}}">
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>--}}
 {{--   <div class="reverse-section mt-5">
        <div class="give-me-space">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1>Sprawdź</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>--}}
    @endsection
    @section('js')
        <script>

            $('.designs-slider').slick({
                centerMode: true,
                centerPadding: '60px',
                slidesToShow: 5,
                responsive: [
                    {
                        breakpoint: 1400,
                        settings: {
                            arrows: false,
                            centerMode: true,
                            centerPadding: '40px',
                            slidesToShow: 3
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            arrows: false,
                            centerMode: true,
                            centerPadding: '40px',
                            slidesToShow: 1
                        }
                    }
                ]
            });
        </script>
        @endsection
