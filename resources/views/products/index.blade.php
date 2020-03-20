@extends('layout.app')
@section('title')
    @if(isset($category) && $category) {{$category->page_title}} @else Produkty sklepu Ideacap @endif
    @endsection
@section('description')
    @if(isset($category) && $category) {{$category->page_description}}  @else Sprawdz naszą ofertę produktową, oraz zaprojektuj swoj haft. @endif
    @endsection
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 xs-only">
                <v-btn class="w-100" type="button" data-toggle="collapsed" data-target="#filters" aria-expanded="false" aria-controls="filters">Pokaż filtry</v-btn>
            </div>
            <div class="col-md-3 col-sm-12">
                <div data-xs-class="collapse" id="filters">
                    <form action="{{url()->current()}}" method="GET">
                        <div class="left_navigation">
                            <div class="form-group">
                                <div class="mb-2">
                                    <label>{{__('my.Sortuj po')}}</label>
                                </div>
                                <input name="orderBy" type="hidden" @if(request()->orderBy) value="{{request()->orderBy}}" @endif>
                                <v-select clearable @input="setField($event, 'orderBy')" item-text="name" item-value="value" :items="{{json_encode(\App\Shop\Product::getSortable())}}" solo tile class="" label="{{__('my.Sortuj po')}}" @if(request()->orderBy) value="{{request()->orderBy}}" @endif></v-select>
                            </div>
                            <div class="form-group">
                                <div class="mb-2">
                                    <label>{{__('my.Rosnące')}}</label>
                                </div>
                                <input name="orderType" type="hidden" @if(request()->orderType) value="{{request()->orderType}}" @endif>
                                <v-radio-group name="orderType" @if(request()->orderType) value="{{request()->orderType}}" @endif @change="setField($event, 'orderType')">
                                    <v-radio
                                            label="{{__('my.Rosnąco')}}"
                                            value="asc"
                                    ></v-radio>
                                    <v-radio
                                            label="{{__('my.Malejąco')}}"
                                            value="desc"
                                    ></v-radio>
                                </v-radio-group>
                            </div>
                            <div class="form-group">
                                <div class="mb-2">
                                    <label>{{__('my.Cena')}}: </label>
                                </div>
                                <div class="row">
                                    <div class="col-6 py-0">
                                        <v-text-field value="{{request()->get('price_from')}}" class="" label="{{__('my.Cena od')}}" solo name="price_from"></v-text-field>
                                    </div>
                                    <div class="col-6 py-0">
                                        <v-text-field value="{{request()->get('price_to')}}" class="" label="{{__('my.Cena do')}}" solo name="price_to"></v-text-field>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <products-attributes :inputs="{{json_encode(request()->get('attributes'))}}" :attributes="{{json_encode($attributes)}}"></products-attributes>
                            </div>
                            <v-btn type="submit" class="w-100" rounded color="primary" style="color:#222222;">{{__('my.Szukaj')}}</v-btn>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-9 col-sm-12">
                <div class="row" v-if="loaded">
                    @foreach($products as $product)
                        <div class="col-md-4 col-sm-6 pt-0">
                            <v-card @mouseover="$products.hovered = '{{$product->id}}'" @mouseleave="$products.hovered = null" :class="{'elevation-8': $products.hovered == '{{$product->id}}'}" ripple href="{{$product->link}}" class="my-border-2">
                                <v-img src="{{url('/storage/'.$product->getImages()[0])}}" height="250px"></v-img>
                                <v-card-title>
                                    <strong class="font-weight-bold">{{$product->name}}</strong>
                                    <div class="w-100">
                                        <rate-component :count="false" small="true" model="product" foreign_key="{{$product->id}}" type="reviews" :parent_rates="{{$product->rates}}"></rate-component>
                                    </div>
                                </v-card-title>
                                <v-card-text class="d-flex justify-space-between align-end">
                                    <span class="price">{{$product->calculated}} <span style="font-size: 1rem">zł</span></span>
                                    @if($product->is_sellout)
                                    <span class="price-crossed" style="font-size: 2rem; font-weight: 200 !important;">{{$product->price}} <span style="font-size: 1rem">zł</span></span>
                                        @endif
                                </v-card-text>
                                <v-card-actions>
                                    <v-btn rounded color="primary" class="px-12" href="{{$product->link}}"><a href="{{$product->link}}" class="default-link black--text">Zobacz więcej</a></v-btn>
                                </v-card-actions>
                            </v-card>
                        </div>
                 {{--       <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-12 pt-0">
                            <div class="product my-border">
                                <div class="image-holder" onclick="window.location.href='{{$product->getLink()}}'">
                                    <a href="{{$product->getLink()}}"><img class="w-100" src="{{url('/storage/'.$product->getImages()[0])}}"></a>
                                    <div class="text-center product-desc">
                                        <h2>{{number_format($product->price, 2)}} PLN</h2>
                                        <v-btn href="{{$product->link}}" color="secondary" tile style="color: #222222">{{__('my.Zobacz więcej')}}</v-btn>
                                    </div>
                                </div>
                                <div class="product-name">
                                    <a class="my-link" href="{{$product->getLink()}}">{{$product->getTranslatedAttribute('name', \Illuminate\Support\Facades\App::getLocale(), 'pl')}}</a>
                                </div>
                            </div>
                        </div>--}}
                    @endforeach
                    @if(count($products) == 0)
                        <div class="col-12">
                            <div class="empty-state"><span style="font-size: 2rem; font-weight: bold">{{__('my.Brak produktów')}}</span></div>
                        </div>
                            <div class="col-12 text-center">
                                <v-btn tile @if(isset($category) && $category) href="{{$category->link}}" @else href="{{route('produkty.index')}}" @endif>{{__('my.Resetuj filtry')}}</v-btn>
                                @if(isset($category) && $category)
                                    <v-btn tile class=" ml-2" href="{{route('produkty.index')}}">{{__('my.Zobacz wszystkie produkty')}}</v-btn>
                                    @endif
                            </div>
                        @endif
                </div>
                {{$products->appends($_GET)->links()}}
            </div>
        </div>
    </div>
    @endsection
    @section('js')
    <script>
        Vue.prototype.$products = new Vue({
            data: () => {
                return{
                    hovered: null
                }
            },
            methods:{
                isHovered(id){
                    return this.hovered == id;
                }
            }
        });
    </script>
        @endsection
