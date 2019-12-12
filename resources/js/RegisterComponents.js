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
Vue.component('number-input', require('./app/components/inputs/number').default);
Vue.component('order_payment', require('./app/components/orders/payment').default);
Vue.component('products-attributes', require('./app/products/attributes').default);
Vue.component('product-actions', require('./app/components/products/actions').default);
Vue.component('product-slider', require('./app/components/products-slider').default);
Vue.component('contact-form', require('./app/components/contact-form').default);
Vue.component('newsletter', require('./app/components/newsletter').default);
