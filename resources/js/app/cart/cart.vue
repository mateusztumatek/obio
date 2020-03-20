<template>
    <div>
        <div v-if="$cart && $cart.cart">
            <v-navigation-drawer
                    :value="isOpen"
                    fixed
                    temporary
                    :width="($root.checkMobile())? '100%' : '35%'"
                    right
            >
                <div class="h-100 d-flex flex-column justify-space-between">
                    <v-list dense>
                        <v-list-item>
                            <v-list-item-title><h3 class="title">{{$t('Twoja karta')}}</h3></v-list-item-title>
                            <v-list-item-action>
                                <v-btn text icon small @click="$cart.emit(false)"><v-icon>mdi-close</v-icon></v-btn>
                            </v-list-item-action>
                        </v-list-item>
                        <v-divider></v-divider>
                        <v-container>
                            <v-list-item v-if="$cart.cart.items && $cart.cart.items.length > 0" :href="item.item_link" v-for="item,index in $cart.cart.items">
                                <v-list-item-avatar :size="(!$root.isMobile)? '100' : '50'" tile>
                                    <v-img :src="$root.getSrc(item.preview_image)"></v-img>
                                </v-list-item-avatar>
                                <v-list-item-content>
                                    <v-list-item-title class="title">{{item.name}}</v-list-item-title>
                                    <v-list-item-subtitle>{{$t('Rozmiar')}}: {{item.size}}</v-list-item-subtitle>
                                    <v-list-item-subtitle class="mt-2">{{$t('Cena jednostkowa')}}: {{item.total_price | toCurrency()}}</v-list-item-subtitle>
                                    <v-list-item-subtitle v-if="item.quantity > 1">{{$t('Cena za przedmioty')}}: {{item.items_price | toCurrency()}}</v-list-item-subtitle>
                                    <v-list-item-subtitle v-if="item.designs && item.designs.length > 0">Wgranych projektow: {{item.designs.length}}</v-list-item-subtitle>
                                    <v-list-item-subtitle v-if="!item.editable">{{$t('Ilość')}}: {{item.quantity}}</v-list-item-subtitle>
                                    <v-list-item-subtitle v-if="item.editable">
                                        <v-text-field @click.prevent type="number" dense v-model="item.quantity"></v-text-field>
                                    </v-list-item-subtitle>
                                </v-list-item-content>
                                <v-list-item-action @click.prevent style="align-self: center !important;">
                                    <v-btn small color="primary" @click="(item.editable)? $cart.updateItem(item, index) : $set(item, 'editable', true)"><span v-if="item.editable">Zapisz</span><span v-else>Edytuj</span></v-btn>
                                    <v-btn small color="accent" class="mt-1" @click="$cart.deleteItem(index)">Usuń</v-btn>
                                </v-list-item-action>
                            </v-list-item>
                            <v-list-item v-if="!$cart.cart.items || $cart.cart.items.length == 0">
                                <div class="empty-state text-center">
                                    <h2>{{$t('Brak produktów w koszyku')}}</h2>
                                </div>
                            </v-list-item>
                        </v-container>
                    </v-list>
                    <v-spacer></v-spacer>
                    <v-divider></v-divider>

                    <h3 class="my-3 text-center">{{$t('Cena za wszystko')}}: {{$cart.cart.totalPrice | toCurrency()}}</h3>
                    <v-btn tile height="70px" color="black" dark class="w-100" :href="$root.base_url+'/zamawiam'">{{$t('Przejdź do kasy')}}</v-btn>
                </div>
            </v-navigation-drawer>
        </div>
    </div>
</template>
<script>
    import {getCart} from "../../api/cart";
    import {editCartItem, deleteCartItem} from "../../api/cart";

    export default {
        data(){
            return{
                isOpen: false
            }
        },
        mounted(){
            this.$root.$eventBus.$on('cart_toogle', (data) => {
                this.isOpen = data;
            })
            this.$cart.getCart();
        },
        methods:{

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
