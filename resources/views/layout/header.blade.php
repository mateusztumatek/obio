<header-component v-if="$settings.navigation" :settings="$settings.settings" :user="user" :items="$settings.navigation.header"></header-component>
{{--SEO HEADER--}}
@php
    $nav = \App\Services\AppService::navigation();
    if($nav && array_key_exists('header', $nav)) $nav = $nav['header'];
    else $nav = [];
@endphp

<div style="opacity: 0; max-height: 0px; transform: translateX(-100%)">
    <a href="{{url('/')}}" title="Obio | Sticko"><img alt="Ideacap Logo" src="{{url('/storage/'.setting('site.logo'))}}"></a>
    @foreach($nav as $item)
        <a href="{{$item['url']}}" title="{{$item['name']}}">{{$item['name']}}</a>
        @if(array_key_exists('childrens', $item))
            @foreach($item['childrens'] as $child1)
                <a href="{{$child1->link}}" title="{{$child1->name}}">{{$child1->name}}</a>
                    @foreach($child1->childrens as $child2)
                        <a href="{{$child2->link}}" title="{{$child2->name}}">{{$child2->name}}</a>
                        @foreach($child2->childrens as $child3)
                            <a href="{{$child3->link}}" title="{{$child3->name}}">{{$child3->name}}</a>
                        @endforeach
                    @endforeach
                @endforeach
            @endif
        @endforeach
</div>
{{--END SEO HEADER--}}
@include('layout.slider')
