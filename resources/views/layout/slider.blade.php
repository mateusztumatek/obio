@php
    $carousel = \App\Services\AppService::getPosts('carousel');

@endphp
@if(\App\Services\AppService::displaySlider())
<div class="container">
    <div class="my-border">
        <v-carousel
                cycle
                height="400"
                hide-delimiter-background
                show-arrows-on-hover
        >
            @foreach($carousel as $item)
            <v-carousel-item>
               <v-img height="100%" src="{{url('/storage/'.$item->images)}}">
                   <div class="w-100 px-12 d-flex flex-column justify-center" style="height: 100%">
                       <div>
                           <h2 class="display-1 mb-2">{{$item->name}}</h2>
                           <p class="headline">{{strip_tags($item->content)}}</p>
                           @if($item->url)
                               <v-btn outlined height="45px" class="px-12 my-btn" rounded color="black"><a class="default-link black--text" href="{{url('/').$item->url}}">Zobacz więcej</a></v-btn>
                           @endif
                       </div>
                   </div>
               </v-img>
            </v-carousel-item>
                @endforeach
        </v-carousel>
    </div>
</div>
    @endif
