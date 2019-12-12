<h1 class="header-2">Wybierz czapkę</h1>
<div class="row">
    <div class="col-md-3">
        <form action="{{url()->current()}}" method="GET">
            <div class="left_navigation my-border pa-4">
                <h2 class="mb-4">{{__('my.Wybierz ulubioną czapkę')}}</h2>
                <div class="form-group">
                    <div class="mb-2">
                        <label>{{__('my.Sortuj po')}}</label>
                    </div>
                    <input name="orderBy" type="hidden" @if(request()->orderBy) value="{{request()->orderBy}}" @endif>
                    <v-select clearable @input="setField($event, 'orderBy')" :items="{{json_encode(\App\Product::getSortable())}}" solo tile class="my-text-field" label="{{__('my.Sortuj po')}}" @if(request()->orderBy) value="{{request()->orderBy}}" @endif></v-select>
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
                            <v-text-field value="{{request()->get('price_from')}}" class="my-text-field" label="{{__('my.Cena od')}}" solo name="price_from"></v-text-field>
                        </div>
                        <div class="col-6 py-0">
                            <v-text-field value="{{request()->get('price_to')}}" class="my-text-field" label="{{__('my.Cena do')}}" solo name="price_to"></v-text-field>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <products-attributes :inputs="{{json_encode(request()->get('attributes'))}}" :attributes="{{json_encode($attributes)}}"></products-attributes>
                </div>
                <v-btn type="submit" class="w-100" color="secondary" style="color:#222222;" tile>{{__('my.Szukaj')}}</v-btn>
            </div>
        </form>
    </div>
    <div class="col-md-9">
        <div class="row">
            @foreach($products as $product)
                <div class="col-lg-3 col-md-4 col-sm-12 pt-0">
                    <div class="product my-border">
                        <div class="image-holder" onclick="window.location.href='{{$product->getLink()}}'">
                            <a href="{{$product->getLink()}}"><img class="w-100" src="{{url('/storage/'.$product->getImages()[0])}}"></a>
                        </div>
                        <div class="text-center product-desc">
                            <h2>{{number_format($product->price, 2)}} PLN</h2>
                            <v-btn x-large href="{{$product->getCreatorLink()}}" color="secondary" fab style="color: #222222"><v-img :src="$root.base_url+'/icons/edit.svg'" style="max-width: 50%"></v-img></v-btn>
                        </div>
                        <div class="product-name">
                            <a class="my-link" href="{{$product->getLink()}}">{{$product->getTranslatedAttribute('name', \Illuminate\Support\Facades\App::getLocale(), 'pl')}}</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        {{$products->links()}}

    </div>
</div>
