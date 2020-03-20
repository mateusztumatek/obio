import Vue from 'vue';
Vue.component('example', require('./app/example.vue').default);
/*Vue.component('creator', require('./app/creator/creator.vue').default);*/
Vue.component('stepper-component', require('./app/creator/stepper.vue').default);
Vue.component('cart-component', require('./app/cart/cart.vue').default);
Vue.component('sidebar-component', require('./app/components/sidebar.vue').default);
Vue.component('header-component', require('./app/components/header.vue').default);
Vue.component('designs-holder', require('./app/components/design-holder').default);
Vue.component('errors', require('./app/components/errors').default);
Vue.component('order', require('./app/order/index').default);
Vue.component('discount-component', require('./app/order/discount-component').default);
Vue.component('number-input', require('./app/components/inputs/number').default);
Vue.component('order_payment', require('./app/components/orders/payment').default);
Vue.component('products-attributes', require('./app/products/attributes').default);
Vue.component('product-actions', require('./app/components/products/actions').default);
Vue.component('product-slider', require('./app/components/products-slider').default);
Vue.component('contact-form', require('./app/components/contact-form').default);
Vue.component('newsletter', require('./app/components/newsletter').default);
Vue.component('color-picker', require('./app/components/inputs/color-picker').default);
Vue.component('upload-progress', require('./app/components/upload-progress').default);
Vue.component('rate-component', require('./app/components/rate-component').default);


Vue.filter('prettyBytes', function (num) {
    // jacked from: https://github.com/sindresorhus/pretty-bytes
    if (typeof num !== 'number' || isNaN(num)) {
        throw new TypeError('Expected a number');
    }

    var exponent;
    var unit;
    var neg = num < 0;
    var units = ['B', 'kB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];

    if (neg) {
        num = -num;
    }

    if (num < 1) {
        return (neg ? '-' : '') + num + ' B';
    }

    exponent = Math.min(Math.floor(Math.log(num) / Math.log(1000)), units.length - 1);
    num = (num / Math.pow(1000, exponent)).toFixed(2) * 1;
    unit = units[exponent];

    return (neg ? '-' : '') + num + ' ' + unit;
});
Vue.filter('striphtml', function (value) {
    var div = document.createElement("div");
    div.innerHTML = value;
    var text = div.textContent || div.innerText || "";
    return text;
});
