@php

    $categories = \App\Category::where('active', 1)->whereHas('products')->get();
    $categories = $categories->translate(\Illuminate\Support\Facades\App::getLocale(), 'pl');
    if(isset($category)){
        $active_category = $category;
    }else{
        $active_category = null;
    }

@endphp
<div class="container">
    <div class="col-md-12" style="justify-content: center">
        <div class="slick-slider-holder">
            <div class="category-slider">
                @foreach($categories as $category)
                    <div class="pa-4 slide @if($active_category && $active_category->id == $category->id) slide-active @endif">
                        <a href="{{$category->getModel()->getUrl()}}"><img src="{{url('/storage/'.$category->images)}}"></a>
                        <a href="{{$category->getModel()->getUrl()}}">{{$category->name}}</a>
                    </div>
                @endforeach
            </div>
            <div class="arrows">
                <div class="arrow-right">
                    <img src="{{url('/images/pixel arrow 2.png')}}">
                </div>
                <div class="arrow-left">
                    <img src="{{url('/images/pixel arrow 2.png')}}">
                </div>
            </div>
        </div>
    </div>
</div>
