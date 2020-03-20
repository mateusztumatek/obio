@extends('layout.app')
@section('title')
    {{setting('site.title')}}
    @endsection

@section('description')
    {{setting('site.description')}}
    @endsection
@section('content')
    @if(count($services = \App\Services\AppService::getPosts('service')) > 0)
    <div class="container">
        <div class="row justify-space-between ">
            @foreach($services as $service)
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="d-flex flex-wrap align-center">
                        <div class="col-md-3">
                            <v-img max-width="70px" :class="{'ma-auto': $vuetify.breakpoint.smAndDown}" src="{{url('/storage/'.$service->images)}}"></v-img>
                        </div>
                        <div class="col-lg-9 pr-0" :class="{'text-center': $vuetify.breakpoint.smAndDown}">
                            <h2 class="headline">{{$service->name}}</h2>
                            <p style="font-size: 1rem" class="mb-0 text-muted">{!! strip_tags($service->content) !!}</p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
    @endif
    @if(count($boxes = \App\Services\AppService::getPosts('box')) > 0)
    <div class="container" v-if="loaded">
        <div class="row">
            @foreach($boxes as $box)
            <div class="col-md-6">
                <div class="my-border" style="position: relative" :style="{'height': ($vuetify.breakpoint.mdAndUp)? '450px' : '350px'}">
                    <img style="height: 100%; width: 100%; object-fit: cover; transition: all 300ms" :style="{'transform': ($home.hovered == '{{$box->id}}')? 'scale(1.05)' : 'scale(1)'}" src="{{url('/storage/'.$box->images)}}">
                    <div style="top: 0px; position: absolute" class="w-100 h-100 d-flex align-center box" @mouseover="$home.setHover({{$box->id}})" @mouseleave="$home.setHover(null)">
                        <div class="ml-3 ml-lg-5 col-lg-6 col-10">
                            <h2 style="font-size: 1.8rem">{{$box->name}}</h2>
                            <p class="mb-5" style="font-size: 1.1rem">{{strip_tags($box->content)}}</p>
                            <div style="transition: all 300ms; overflow: hidden" :style="{'height': ($home.hovered == '{{$box->id}}')? '40px' : '0px'}">
                                <v-btn rounded color="black" :height="40+'px'" dark>Zobacz więcej</v-btn>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                @endforeach
        </div>
    </div>
        @endif
    @if(count($products = \App\Services\AppService::getHomeContent('product')) > 0)
    <div class="give-me-space">
        <div class="container" v-if="loaded">
            <div class="row">
                <div class="col-12 text-center">
                    <h2>Najpopularniejsze produkty</h2>
                </div>
               @foreach($products as $product)
                    @php $original_product = $product->getProduct();@endphp
                @if($original_product)
                <div class="col-lg-3 col-md-6">
                    <div class="my-border h-100 light-grey" style="position: relative" @mouseover="$home.setHoveredProduct('{{$product->id}}')" @mouseleave="$home.setHoveredProduct(null)">
                        <img :class="{'blured': $home.hovered_product == '{{$product->id}}'}" src="{{url('/storage/'.$product->image)}}" class="w-100">
                        <v-overlay :opacity="($home.hovered_product == '{{$product->id}}')? '0.8' : '0'" color="primary" absolute class="product-overlay">
                            <div class="w-100 h-100 pa-8">
                                <div class="d-flex flex-wrap h-100 flex-column justify-space-between">
                                    <div class="text-center">
                                        <transition name="fade">
                                            <p v-show="$home.hovered_product == '{{$product->id}}'" class="font-weight-light">Już od: <span class="font-weight-bold">{{$original_product->calculated * 100}} zł / 100 sztuk</span></p>
                                        </transition>
                                    </div>
                                    <transition name="fade">
                                    <div v-show="$home.hovered_product == '{{$product->id}}'">
                                        <v-btn class="w-100 my-1" color="black" href="{{$original_product->link}}" rounded outlined>Wyceń zamówienie</v-btn>
                                        <v-btn class="w-100 my-1" color="black" href="{{$original_product->link}}" rounded outlined>Dowiedz się więcej</v-btn>
                                    </div>
                                    </transition>
                                    <div class="text-center">
                                        <h2 style="font-size: 1.5rem">
                                            {{$product->name}}
                                        </h2>
                                    </div>
                                </div>
                            </div>
                        </v-overlay>
                    </div>
                </div>
                    @endif
                   @endforeach
                <div class="col-12 text-center">
                    <v-btn outlined color="black" height="45px" class="px-12" rounded><a class="default-link" href="{{route('produkty.index')}}">Wszystkie produkty</a></v-btn>
                </div>
            </div>
        </div>
    </div>
    @endif
    @if($info_post = \App\Services\AppService::getPosts('info')->first())
        <div class="give-me-space">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 d-flex align-center">
                        <div class="col-lg-10 ml-auto">
                            <h2 class="mb-10" style="font-size: 1.5rem">{{$info_post->name}}</h2>
                            <div class="text-muted">
                                {!! $info_post->content !!}
                            </div>
                            @if($info_post->url)
                            <v-btn href="{{App\Helpers\Helper::resolveUrl($info_post->url)}}" rounded outlined color="black" height="45px" class="px-12 mt-10">Czytaj więcej</v-btn>
                                @endif
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-lg-10 ml-auto">
                            <div class="my-border">
                                <v-img aspect-ratio="1" src="{{url('/storage/',$info_post->images)}}"></v-img>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endif
    @if(count($ig_posts = \App\Services\AppService::getPosts('instagram')) > 0)
        <div class="give-me-space" v-if="loaded">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h2>Sprawdź naszego Instagrama:</h2>
                    </div>
                    @foreach($ig_posts as $post)
                    <div class="col-lg-3 col-md-6">
                        <div class="my-border">
                            <v-img aspect-ratio="1" src="{{url('/storage/'.$post->images)}}"></v-img>
                        </div>
                    </div>
                        @endforeach
                    <div class="col-12 text-center">
                        <v-btn height="45px" rounded outlined color="black" class="px-12" href="{{setting('site.instagram_url')}}">Sprawdź nasz profil</v-btn>
                    </div>
                </div>
            </div>
        </div>
    @endif
    @endsection
    @section('js')
        <script>
                Vue.prototype.$home = new Vue({
                    data:() => {
                        return{
                            hovered: null,
                            hovered_product: null,
                        }
                    },
                    methods:{
                        setHover(id){
                            this.hovered = id;
                        },
                        setHoveredProduct(id){
                            this.hovered_product = id;
                        }
                    }
                })
        </script>
        @endsection

