$(document).ready(() => {
    /*$('.banner-row').height()*/
    $('*[data-description_holder]').each((index, item) => {
       if($(item).height() > 400){
           $(item).addClass('description-holder');
       }
    })
    $('.description-holder').each((index, item) => {
        var button = $('<button type="button" class="expand_description_button">Rozwiń</button>');
        button.on('click', function () {
            if(!$(this).parent().hasClass('description-expand')){
                $(this).parent().addClass('description-expand');
                $(this).text('Zwiń')
            }else{
                $(this).parent().removeClass('description-expand');
                $(this).text('Rozwiń')
            }
        })
        $(item).append(button);
    })

    $('.seo-trigger').on('click', function () {
        $(this).parent().addClass('seo-active');
    })
    $('.category-slider').slick({
        dots: false,
        infinite: false,
        speed: 300,
        slidesToShow: 8,
        prevArrow: $('.arrow-left'),
        nextArrow: $('.arrow-right'),
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: true
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }]
    })
    $('*[data-xs-class]').each((index, item) => {
        $(item).addClass($(item).attr('data-xs-class'));
    });
    $('*[data-toggle]').on('click', function () {
        var elem = $($(this).attr('data-target'));
        if(elem){
            if(elem.hasClass($(this).attr('data-toggle'))){
                elem.removeClass($(this).attr('data-toggle'));
            }else{
                elem.addClass($(this).attr('data-toggle'));
            }
        }
    })

})

window.initColorSlider = () => {
    $('.color-slider').slick({
        slidesToShow: 7,
        slidesToScroll: 2,
        centerPadding: '10px',
        centerMode: true,
        prevArrow: $('.arrow-left'),
        nextArrow: $('.arrow-right'),
    })
    $('.arrow-left').click();
    $('.arrow-left').click();
    $('.arrow-left').click();
    $('.arrow-left').click();
    $('.arrow-left').click();
    $('.arrow-left').click();
    $('.arrow-left').click();
}
