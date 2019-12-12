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
                            <div class="col-md-4">
                                <div class="order-item">
                                    @if($item->design)
                                        <a href="{{($des = $item->design)? $des->getLink() : null}}"><img class="w-100" src="{{url('/storage/'.$item->design->image)}}"></a>
                                    @else
                                        <a href="{{$item->product->getLink()}}"><img class="w-100" src="{{url('/storage/'.$item->product->getImages()[0])}}"></a>
                                    @endif
                                    {{$item->product->name}}
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="col-md-6">
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
