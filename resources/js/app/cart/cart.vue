<template>
    <v-navigation-drawer
            :value="visible"
            @input="emit"
            fixed
            temporary
            :width="($root.checkMobile())? '100%' : '35%'"
            right
    >

        <v-list dense>
            <v-list-item>
                <v-list-item-title><h3 class="title">Twoja karta</h3></v-list-item-title>
                <v-list-item-action>
                    <v-btn text icon small @click="emit(false)"><v-icon>mdi-close</v-icon></v-btn>
                </v-list-item-action>
            </v-list-item>
            <v-divider></v-divider>
            <v-container>
                <v-list-item v-if="cart.items && cart.items.length > 0" :href="(!item.editable)?'/?design_id='+item.design.id:null" v-for="item,index in cart.items">
                    <v-list-item-avatar size="100" tile>
                        <v-img :src="$root.getSrc(item.preview_image)"></v-img>
                    </v-list-item-avatar>
                    <v-list-item-content>
                        <v-list-item-title class="title">{{item.name}}</v-list-item-title>
                        <v-list-item-subtitle class="mt-2">Cena jednostkowa: {{item.price | toCurrency()}}</v-list-item-subtitle>
                        <v-list-item-subtitle v-if="item.quantity > 1">Cena za przedmioty: {{item.items_price | toCurrency()}}</v-list-item-subtitle>
                        <v-list-item-subtitle v-if="item.design">Cena za przedmioty + haft: {{item.total_price | toCurrency()}}</v-list-item-subtitle>
                        <v-list-item-subtitle v-if="!item.editable">Ilość: {{item.quantity}}</v-list-item-subtitle>
                        <v-list-item-subtitle v-if="item.editable">
                            <v-text-field type="number" dense v-model="item.quantity"></v-text-field>
                        </v-list-item-subtitle>
                    </v-list-item-content>
                    <v-list-item-action @click.prevent style="align-self: center !important;">
                        <v-btn small color="primary" @click="(item.editable)? updateItem(item, index) : $set(item, 'editable', true)"><span v-if="item.editable">Zapisz</span><span v-else>Edytuj</span></v-btn>
                        <v-btn small color="accent" class="mt-1" @click="deleteItem(index)">Usuń</v-btn>
                    </v-list-item-action>
                </v-list-item>
                <v-list-item v-if="!cart.items || cart.items.length == 0">
                    <div class="empty-state text-center">
                        <h2>Brak produktów w koszyku</h2>
                    </div>
                </v-list-item>
            </v-container>
            <v-divider></v-divider>
            <v-list-item>
                <v-list-item-content>
                    <h3 class="titlte">Cena za wszystko: {{cart.price | toCurrency()}}</h3>
                </v-list-item-content>
            </v-list-item>
            <v-list-item>
                <v-btn class="w-100" :href="$root.base_url+'/zamawiam'">Przejdz do kasy</v-btn>
            </v-list-item>
        </v-list>
    </v-navigation-drawer>
</template>
<script>
    import {getCart} from "../../api/cart";
    import {editCartItem, deleteCartItem} from "../../api/cart";

    export default {
        props:['show'],
        data(){
            return{
                visible: false,
                cart:{}
            }
        },
        watch:{
            show: function(){
                this.visible = this.show;
            }
        },
        mounted(){
            this.visible = this.show;
            this.getCart();
            this.$eventBus.$on('set_cart', (data) => {
                this.cart= data;
            })
        },
        methods:{
            deleteItem(index){
                deleteCartItem(index).then(response => {this.cart=response}).catch(e => {this.$eventBus.$emit('add_error', {text: 'Nie udało się usunąć przedmiotu z koszyka'})});
            },
            updateItem(item,index){
                editCartItem(index, item).then(response => {
                    this.cart = response;
                }).catch(e => {
                    this.$eventBus.$emit('add_error', {text: 'Nie udało się zaktualizować produktu w koszyku'});
                })
            },
            showDesign(item){

            },
            getCart(){
                getCart().then(response => {
                    this.cart = response;
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
</script>
<style lang="scss">

    .cart-active{
        right: 0px;
    }
    .cart-open{
        right: 0px !important;
    }
    .cart{
        padding: 32px;
        color: #EEEEEE;
        height: 100vh;
        position: fixed;
        right: -1000px;
        top: 0px;
        width: 30%;
        background-color: black;
        .header{
            font-size: 24px;
            font-weight: bold;
        }
    }
</style>
