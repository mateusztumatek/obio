@if(isset($brand_slides) && $brand_slides)
<div class="container mt-12">
    <div class="give-me-space pb-0">
        <h2 class="header-2">
            {{__('my.Nasze marki')}}
        </h2>
        <div class="slick-slider-holder">
            <div class="brands-slider">
                @foreach($brand_slides as $slide)
                    <div class="pa-10">
                        <img class="w-100" src="{{url('/storage/'.$slide->image)}}">
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
    @endif
@section('js')
<script>
    $(document).ready(function () {
        $('.brands-slider').slick({
            slidesToShow: 7,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            prevArrow: $('.arrow-left'),
            nextArrow: $('.arrow-right'),
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1,
                        infinite: true,
                        dots: false
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                }]
        });
    })
</script>
@endsection
