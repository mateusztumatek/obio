require('./bootstrap-admin');
window.Vue = require('vue');
import VueKonva from 'vue-konva'
Vue.use(VueKonva);
Vue.component('products-edit-add', require('./admin/products/edit-add.vue').default);
Vue.component('example', require('./app/example.vue').default);
Vue.component('pattern-edit-add', require('./admin/patterns/pattern.vue').default);

Vue.mixin({
    methods:{
        getSrc(src){
            return this.$root.getSrc(src);
        }
    }
})
if(window.document.getElementById('app')){
    const app = new Vue({
        el: '#app',
        data(){
            return {
                base_url: null
            }
        },
        created(){
            this.base_url = base_url;
        },

        methods: {
            getSrc(src, params){
                if(params){

                }
                return this.base_url+'/storage/'+src;
            }
        }
    });
}



