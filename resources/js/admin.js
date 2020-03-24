require('./bootstrap-admin');
window.Vue = require('vue');
import 'grapesjs/dist/css/grapes.min.css';
import 'grapesjs-preset-webpage/dist/grapesjs-preset-webpage.min.css';

Vue.component('products-edit-add', require('./admin/products/edit-add.vue').default);
Vue.component('products-attributes', require('./admin/products/attributes').default);
Vue.component('example', require('./app/example.vue').default);
Vue.component('pattern-edit-add', require('./admin/patterns/pattern.vue').default);
Vue.component('product-attributes', require('./admin/products/attributes').default);
Vue.component('translations', require('./admin/translations/translations').default);
Vue.component('product-picker', require('./admin/products/product-picker').default);
Vue.component('home-content', require('./admin/home-content').default);
Vue.component('page-builder', require('./admin/page-builder').default);
Vue.component('categories-picker', require('./admin/products/categories-picker').default);
Vue.component('color-picker', require('./app/components/inputs/color-picker').default);

import Mixins from './mixins';
Vue.mixin({
    methods:{
        getSrc(src){
            return this.$root.getSrc(src);
        }
    }
})
import Colors from './admin/colors'
import ProductMixin from './admin/product-mixins';
Vue.prototype.$product = new Vue(ProductMixin);
Vue.prototype.$eventBus = new Vue(Colors);
Vue.mixin(Mixins);
Vue.prototype.$colors = new Vue(Colors);
if(window.document.getElementById('admin_app')){
    const app = new Vue({
        el: '#admin_app',
        data(){
            return {
                base_url: null,
                loaded: false,
            }
        },
        created(){
            this.base_url = base_url;
        },
        mounted(){
            setTimeout(() => {
                this.loaded = true;
            }, 200);
        },
        methods: {
            getSrc(src, params){
                if(params){

                }
                return this.base_url+'/storage/'+src;
            },
           /* setInputValue(data, input){
                console.log($("input[name = " + input + "]"));
            }*/
        }
    });
}



