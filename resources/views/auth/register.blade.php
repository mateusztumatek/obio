@extends('layout.app')
@section('title')
    {{setting('site.title')}}
@endsection

@section('description')
    {{setting('site.description')}}
@endsection
@section('content')
    <div class="container give-me-space">
        <div class="row justify-center">
            <div class="col-md-8" v-if="$user">
                <h1 class="display-2">Zarejestruj się</h1>
                <v-form ref="login_form" class="mt-5">
                    <v-text-field :error-messages="$user.errors.email" :rules="[$user.rules.required]" label="Imię i nazwisko" v-model="$user.user.name"></v-text-field>
                    <v-text-field :error-messages="$user.errors.email" :rules="[$user.rules.required]" label="Adres email" v-model="$user.user.email"></v-text-field>
                    <v-text-field :error-messages="$user.errors.password" :rules="[$user.rules.required]" label="Hasło" type="password" v-model="$user.user.password"></v-text-field>
                    <v-text-field :error-messages="$user.errors.password_confirmation" :rules="[$user.rules.required]" label="Potwierdź hasło" type="password" v-model="$user.user.password_confirmation"></v-text-field>
                </v-form>
                <v-btn @click="$user.register($refs.login_form)" color="black" height="50px" class="px-10" dark depressed>Zarejestruj się</v-btn>
            </div>
        </div>
    </div>
@endsection

