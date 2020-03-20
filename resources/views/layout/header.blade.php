<header-component v-if="$settings.navigation" :settings="$settings.settings" :user="user" :items="$settings.navigation.header"></header-component>
{{--SEO HEADER--}}
<div style="opacity: 0; max-height: 1px; position: fixed; left: -100vw">
    <img alt="Ideacap Logo" src="{{url('/')}}">
</div>
{{--END SEO HEADER--}}
@include('layout.slider')
