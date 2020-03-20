import Vue from 'vue';
import {addToCart, getCart, deleteCartItem, editCartItem, applyCode} from "../api/cart";
export default {
    data:() => {
        return{
            cart: null,
            cartShow: false,
        }
    },
    mounted(){
        Vue.prototype.$eventBus.$on('updateCart', (cart) => {
            this.cart = cart;
        });
    },
    methods:{
        addToCart(product_id, design, quantity, size, image = null, pattern_id = null){
            addToCart({product_id: product_id, design: design, quantity: quantity, size: size, image: image, pattern_id: pattern_id}).then(response => {
                this.$eventBus.$emit('set_cart', response);
                this.$eventBus.$emit('add_message', {text: 'Poprawnie dodano przedmiot do koszyka'});
            })
        },
        toggleCart(value = null){
            if(value != null){
                this.$set(this, 'cartShow', value);
            }else this.$set(this, 'cartShow', !this.cartShow);
            Vue.prototype.$eventBus.$emit('cart_toogle', this.cartShow);
        },
        setCart(cart){
            this.cart = cart;
        },
        applyCode(code){
            return new Promise((resolve, reject) => {
                applyCode({code: code}).then(response => {
                    this.cart = response;
                    resolve();
                }).catch(e => {
                    reject(e);
                })
            })
        },
        deleteItem(index){
            deleteCartItem(index).then(response => {this.cart=response; this.$eventBus.$emit('updateCart', this.cart);}).catch(e => {this.$eventBus.$emit('add_error', {text: 'Nie udało się usunąć przedmiotu z koszyka'})});
        },
        updateItem(item,index){
            editCartItem(index, item).then(response => {
                this.cart = response;
                this.$eventBus.$emit('updateCart', this.cart);
            }).catch(e => {
                this.$eventBus.$emit('add_error', {text: 'Nie udało się zaktualizować produktu w koszyku'});
            })
        },
        getCart(){
            getCart().then(response => {
                this.cart = response;
                this.$root.$eventBus.$emit('updateCart', this.cart);
            }).catch(e => {
                this.$eventBus.$emit('app/add_error', {text: 'Nie udało się pobrac koszyka'});
            })
        },
        emit(value){
            if(!value){
                this.$root.toggleCart(false);
            }
        }
    }

}
