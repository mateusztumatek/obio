@extends('layout.app')
@section('title')
    Konto użytkownika {{\Illuminate\Support\Facades\Auth::user()->name}}
    @endsection
@section('content')
    <div class="container" v-cloak>
        <div class="give-me-space">
            <h1 class="display-1">Konto: {{\Illuminate\Support\Facades\Auth::user()->name}}</h1>
            <p class="text-muted">Dołączył dnia {{\Illuminate\Support\Facades\Auth::user()->created_at->format('Y-m-d')}}</p>
            <v-tabs v-model="$user.tab">
                <v-tab key="main">Twoje dane</v-tab>
                <v-tab key="orders">Twoje zamówienia</v-tab>
            </v-tabs>
            <v-tabs-items v-model="$user.tab">
                <v-tab-item key="0">
                    <div class="px-2 py-8">
                        <h3 class="headline">Twoje dane:</h3>
                        <v-form ref="update_form">
                            <v-text-field :loading="$user.loading" :error-messages="$user.errors.name" label="Imię i nazwisko" v-model="$user.user.name"></v-text-field>
                            <v-text-field :loading="$user.loading" :error-messages="$user.errors.email" label="Email" type="email" v-model="$user.user.email" disabled></v-text-field>
                            <v-checkbox label="Aktualizuj hasło" v-model="$user.user.update_password" true-value="1" false-value="0"></v-checkbox>
                            <div v-if="$user.user.update_password">
                                <v-text-field :loading="$user.loading" :error-messages="$user.errors.password" label="Nowe hasło" type="password" v-model="$user.user.password"></v-text-field>
                                <v-text-field :loading="$user.loading" :error-messages="$user.errors.password_confirmation" label="Powtórz new hasło" type="password" v-model="$user.user.password_confirmation"></v-text-field>
                            </div>
                            <v-btn :loading="$user.loading" color="black" height="50px" dark @click="$user.updateUser($refs.update_form)">Aktualizuj dane</v-btn>
                        </v-form>
                    </div>
                </v-tab-item>
                <v-tab-item key="1">
                    <div class="px-2 py-8">
                        <h3 class="headline">Twoje zamówienia: </h3>
                        <v-list v-if="$user.orders && $user.orders.data">
                            <v-list-item two-line v-for="order in $user.orders.data" class="mb-10">
                                <v-list-item-title>Zamówienie nr: @{{order.id}}
                                    <p class="text-muted my-3">Zamówione przedmioty:</p>
                                    <div class="w-100">
                                        <div v-for="item in order.items">
                                            @{{item.product.name}}
                                        </div>
                                    </div>
                                </v-list-item-title>
                                <v-list-item-action>
                                    <form method="post" action="{{url('/order/reorder')}}">
                                        @csrf
                                        <input name="order_id" :value="order.id" type="hidden">
                                        <v-btn type="submit" color="primary" dark>Złóż ponownie</v-btn>
                                    </form>
                                </v-list-item-action>
                            </v-list-item>
                        </v-list>
                    </div>
                </v-tab-item>
            </v-tabs-items>
        </div>
    </div>
    @endsection
    @section('js')
        <script>
            Vue.prototype.$user.setActiveTab('main');
        </script>
        @endsection
