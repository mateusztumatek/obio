<template>
    <div v-if="cart">
        <h2 class="font-weight-light">{{$t('Zamówione produkty')}}</h2>
        <v-list>
            <v-list-item v-for="item in cart.items" :href="item.item_link">
                <v-list-item-avatar :size="(!$root.isMobile)? '100' : '50'" tile>
                    <v-img :src="$root.getSrc(item.preview_image)"></v-img>
                </v-list-item-avatar>
                <v-list-item-content>
                    <v-list-item-title class="title">{{item.name}}</v-list-item-title>
                    <v-list-item-subtitle>{{$t('Rozmiar')}}: {{item.size}}</v-list-item-subtitle>
                    <v-list-item-subtitle class="mt-2">{{$t('Cena jednostkowa')}}: {{item.price | toCurrency()}}</v-list-item-subtitle>
                    <v-list-item-subtitle v-if="item.quantity > 1">{{$t('Cena za przedmioty')}}: {{item.items_price | toCurrency()}}</v-list-item-subtitle>
                    <v-list-item-subtitle v-if="item.design">{{$t('Cena za przedmioty')}} + {{$t('haft')}}: {{item.total_price | toCurrency()}}</v-list-item-subtitle>
                    <v-list-item-subtitle v-if="!item.editable">{{$t('Ilość')}}: {{item.quantity}}</v-list-item-subtitle>
                </v-list-item-content>
            </v-list-item>
            <v-divider></v-divider>
            <v-list-item>{{$t('Cena koszyka')}}: {{cart.price | toCurrency()}}</v-list-item>
            <v-list-item v-if="shipment">{{$t('Cena przesyłki')}}: {{shipment.price | toCurrency()}}</v-list-item>
            <v-list-item>{{$t('Cena całkowita')}}: {{ getTotalPrice() | toCurrency()}}</v-list-item>
        </v-list>
    </div>
</template>
<script>
    export default {
        props:['cart', 'shipment'],
        data(){
            return{

            }
        },
        methods:{
            getTotalPrice(){
                if(this.shipment){
                    return this.cart.price + this.shipment.price;
                }else return this.cart.price;
            }
        }
    }
</script>
