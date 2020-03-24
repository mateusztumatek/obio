@extends('layout.app')
@section('content')
    <div class="container">
        <div class="give-me-space">
            <h1>Zamówienie nr {{$order->id}}</h1>
            <div class="row">
                <div class="col-md-6">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <h2 class="font-weight-light w-100">Zakupione produkty: </h2>
                        </div>
                        @foreach($order->items as $item)
                            <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                                <v-card>
                                    <v-img src="{{url('/storage/'.$item->product->getImages()[0])}}" height="150px"></v-img>
                                    <v-card-title style="font-size: 1.1rem;">{{$item->product->name}} <br> Ilość: {{$item->quantity}}</v-card-title>
                                    <v-card-text>
                                        <p>Cena za 1 przedmiot: {{$item->price}} zł</p>
                                        @if($item->quantity > 1)
                                        <p>Cena za wszystkie przedmioty: {{$item->price * $item->quantity}} zł</p>
                                            @endif
                                        <v-chip-group
                                                column
                                                active-class="primary--text"
                                        >
                                            @foreach($item->attributes as $key => $attribute)
                                                <v-chip>{{$key}}
                                                    @if($attribute->type == 'text') {{$attribute->value}} @endif
                                                    @if($attribute->type == 'color')
                                                        <div style="width: 20px; height: 20px; border-radius: 100%; margin-left: 5px; margin-right: -5px; background-color: {{$attribute->value}}"></div>
                                                    @endif
                                                </v-chip>
                                            @endforeach
                                        </v-chip-group>
                                    </v-card-text>
                                </v-card>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="col-md-6">
                    @if($order->hasDesign())
                    <v-card class="mb-3">
                        <v-card-title>Wgrane projekty:</v-card-title>
                        <v-card-text>
                            <v-list>
                                @foreach($order->items as $item)
                                    @if($item->designs && count($item->designs) > 0)
                                        @foreach($item->designs as $design)
                                        <v-list-item>
                                            <v-list-item-avatar color="grey" size="60">
                                                <span class="white--text headline">.{{$design->extension}}</span>
                                            </v-list-item-avatar>
                                            <v-list-item-content>
                                                <v-list-item-title>Projekt do produktu: {{$item->product->name}}</v-list-item-title>
                                                @if(property_exists($design, 'width') && $design->width)
                                                <p>Wymiary: {{$design->width}} x {{$design->height}}</p>
                                                    @endif
                                                <p>Rozmiar pliku: {{\App\Helpers\Helper::formatBytes($design->size)}}</p>
                                                @if(property_exists($design, 'comment') && $design->comment != '')
                                                    <p>Komentarz do tego pliku: {{$design->comment}}</p>
                                                    @endif
                                                <div class="mt-2">
                                                    <v-btn download href="{{url('/storage/'.$design->file)}}" small color="primary" depressed rounded>Pobierz projekt</v-btn>
                                                </div>
                                            </v-list-item-content>
                                        </v-list-item>
                                        @endforeach
                                    @endif
                                @endforeach
                            </v-list>
                        </v-card-text>
                    </v-card>
                    @endif
                    <v-simple-table>
                        <template v-slot:default>
                            <thead>
                            <tr>
                                <th class="text-left">Atrybut</th>
                                <th class="text-left">Nazwa</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>ID</td>
                                <td>{{$order->id}}</td>
                            </tr>
                            <tr>
                                <td>Całkowita kwota zamowienia</td>
                                <td>{{$order->amount}} zł</td>
                            </tr>
                            <tr>
                                <td>Całkowita kwota dostawy</td>
                                <td>{{$order->shipment_amount}} zł</td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>{{$order->address->email}}</td>
                            </tr>
                            <tr>
                                <td>Miasto</td>
                                <td>{{$order->address->city}}</td>
                            </tr>
                            <tr>
                                <td>Kod pocztowy</td>
                                <td>{{$order->address->postal}}</td>
                            </tr>
                            <tr>
                                <td>Ulica i numer domu</td>
                                <td>{{$order->address->street}}</td>
                            </tr>
                            @if($order->address->phone)
                                <tr>
                                    <td>Telefon</td>
                                    <td>{{$order->address->phone}}</td>
                                </tr>
                            @endif
                            <tr>
                                <td>Płatność:</td>
                                <td>{{$order->payment_type}}</td>
                            </tr>
                            <tr>
                                <td>Status:</td>
                                <td><v-chip class="lighten-3" color="{{$order->status_color}}">{{$order->status_slug}}</v-chip></td>
                            </tr>
                            @if($order->payment_link)
                                <tr>
                                    <td>Link do płatności:</td>
                                    <td><a href="{{$order->payment_link}}">Zapłać</a></td>
                                </tr>
                            @endif
                            <tr>
                                <td>Status płatności</td>

                                <td><order_payment hash="{{$order->hash}}"></order_payment></td>
                            </tr>
                            </tbody>
                        </template>
                    </v-simple-table>
                </div>
            </div>
        </div>
    </div>
    @endsection
