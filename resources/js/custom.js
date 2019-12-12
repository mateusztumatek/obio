require('./plugins/glitch');
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
    setTimeout(() => {
        $('*[data-class_after_load]').each(function (index, item) {
            $(item).addClass($(item).data('class_after_load'));
        });
    }, 200)

    $( ".bg" ).mgGlitch({
        // set 'true' to stop the plugin
        destroy : false,
        // set 'false' to stop glitching
        glitch: true,
        // set 'false' to stop scaling
        scale: true,
        // set 'false' to stop glitch blending
        blend : true,
        // select blend mode type
        blendModeType : 'hue',
        // set min time for glitch 1 elem
        glitch1TimeMin : 100,
        // set max time for glitch 1 elem
        glitch1TimeMax : 200,
        // set min time for glitch 2 elem
        glitch2TimeMin : 10,
        // set max time for glitch 2 elem
        glitch2TimeMax : 400,
    });
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
