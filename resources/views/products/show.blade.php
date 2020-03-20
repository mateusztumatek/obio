@extends('layout.app')
@section('title')
    {{$product->name}}
    @endsection
@section('description')
    {{$product->short_desc}}
    @endsection
@section('content')
    <div class="container">
        <div class="give-me-space" v-cloak>
            <div>
                <div class="row">
                    @php
                        $images = $product->getModel()->getImages();
                    @endphp
                    <div class="col-md-6 pr-4 text-center" style="z-index: 1">
                        <v-img width="100%" v-if="!$product.selectedImage" src="{{url('/storage/'.$images[0])}}"></v-img>
                        <v-img width="100%" v-if="$product.selectedImage" :src="$product.selectedImage"></v-img>
                            <div class="row">
                                @foreach($images as $image)
                                    <div class="col-2">
                                        <img @click="$product.selectedImage = '{{\Illuminate\Support\Facades\Storage::url($image)}}'" style="width: 100%" src="{{\Illuminate\Support\Facades\Storage::url($image)}}">
                                    </div>
                                @endforeach
                            </div>
                    </div>
                    <div class="col-md-6 d-flex justify-center" data-class_after_load="slide_from_center_right" style="z-index: 0">
                        <div class="col-lg-10 col-md-10 col-sm-12">
                            {{--<p>{{$product->getModel()->category()->first()->name}}</p>--}}
                            <div class="header d-flex" style="justify-content: space-between; flex-wrap: wrap">
                                <h1>
                                    {{$product->name}}
                                    @if($product->is_new)
                                        <v-chip class="ml-2" color="primary">Nowość</v-chip>
                                    @endif
                                </h1>
                                <div>
                                    <p class="mb-0 font-weight-bold">{{price($product->calculated)}} zł</p>
                                    @if($product->price > $product->calculated)
                                        <p class="mb-0 text-muted price-crossed">{{price($product->price)}} zł</p>
                                    @endif
                                </div>
                            </div>
                            <rate-component :parent_rates="{{$product->rates}}" foreign_key="{{$product->id}}" model="product" type="reviews"></rate-component>
                            <div class="mt-3">
                                <div data-description_holder>{!! $product->desc !!}</div>
                                <div class="clearfix"></div>
                                <v-divider class="my-4"></v-divider>
                                <h3 class="headline" style="font-size: 1rem !important;">Wybierz wariant:</h3>
                                <div v-for="(variant, key) in $product.attributes">
                                    <v-select v-if="$product.attributes[key][0].attribute.type == 'text'" v-model="$product.selectedAttributes[key]" return-object class="my-2 shaped" solo :label="'Wybierz '+key" :items="variant" item-text="value"></v-select>
                                    <div v-if="$product.attributes[key][0].attribute.type == 'bool'">
                                        <v-checkbox :label="'Wybierz '+key" :true-value="$product.attributes[key][0]" :false-value="null"  v-model="$product.selectedAttributes[key]"></v-checkbox>
                                    </div>
                                    <div v-if="$product.attributes[key][0].attribute.type == 'color'">
                                        <color-picker :items="variant" :label="'Wybierz '+key" v-model="$product.selectedAttributes[key]"></color-picker>
                                    </div>
                                </div>
                                <span v-if="$product.calcPrice != 0" class="text-muted">Cena: <span class="display-1 font-weight-light">@{{$product.calcPrice | toCurrency}}</span></span>
                                <v-divider class="my-4"></v-divider>
                                <div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <number-input :min="1" v-model="$product.quantity"></number-input>
                                        </div>
                                        @if($product->is_printable)
                                        <div class="col-md-12 col-sm-12 col-xs-12 py-0">
                                            <v-btn @click="$refs.file_input.click()" class="w-100" depressed height="50px" color="black" dark rounded>Wgraj swój plik</v-btn>
                                            <upload-progress></upload-progress>
                                            <input @change="$product.uploadProject" type="file" ref="file_input" :accept="$product.acceptSlug" style="display: none">
                                            <v-list class="mt-3" v-if="$product.designs.length > 0">
                                                <v-list-item v-for="(item, index) in $product.designs">
                                                    <v-list-item-avatar tile size="100px">
                                                        <v-img :src="$root.getSrc(item.file)"></v-img>
                                                    </v-list-item-avatar>
                                                    <v-list-item-content>
                                                        <p class="text-muted mb-2" v-if="item.size">Rozmiar pliku: @{{item.size | prettyBytes}}</p>
                                                        <p class="text-muted mb-2" v-if="item.width">Szerokość pliku: @{{item.width}}px</p>
                                                        <p class="text-muted mb-2" v-if="item.width">Wysokość pliku: @{{item.height}}px</p>
                                                        <p class="text-muted mb-2" v-if="item.extension">Typ pliku: @{{item.extension}}</p>
                                                        <v-btn small @click="(!item.has_comment)? item.has_comment = true : item.has_comment = false">Dodaj komentarz do pliku</v-btn>
                                                        <v-textarea v-if="item.has_comment" label="Komentarz do pliku" v-model="item.comment"></v-textarea>
                                                    </v-list-item-content>
                                                    <v-list-item-action>
                                                        <v-btn color="red" @click="$product.designs.splice(index, 1)">Usuń projekt</v-btn>
                                                    </v-list-item-action>
                                                </v-list-item>
                                            </v-list>
                                        </div>
                                        @endif
                                        <div class="row mx-0" style="width: 100%">
                                            <div class="col-auto">
                                                <v-btn @click="$product.addToCart()" rounded height="50px" color="black" depressed dark>Dodaj do koszyka</v-btn>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <rate-component type="rate" model="product" foreign_key="{{$product->id}}"></rate-component>
                                        </div>
                                        <div class="col-md-12" v-for="error in $product.errors">
                                            <v-alert type="error">
                                                @{{error}}
                                            </v-alert>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endsection
    @section('js')
        <script>
            Vue.prototype.$product.setProduct({!! json_encode($product->getModel()) !!});
            Vue.prototype.$product.setAttributes(JSON.parse('{!! json_encode($attributes) !!}'));

        </script>
        @endsection
