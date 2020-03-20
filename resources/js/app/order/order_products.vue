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
                    <v-list-item-subtitle class="mt-2">{{$t('Cena jednostkowa')}}: {{item.total_price | toCurrency()}}</v-list-item-subtitle>
                    <div>
                        <v-chip small class="mr-2" v-for="(attr, key) in item.attributes">{{key}}
                            <span v-if="attr.type == 'text'">{{attr.value}}</span>
                            <span v-if="attr.type == 'color'"><div style="width: 20px; margin-right: -5px; margin-left: 15px; border-radius: 100%; height: 20px" :style="{'background-color': attr.value}"></div></span>
                            <span v-if="attr.type == 'bool'"></span>
                        </v-chip>
                    </div>
                    <v-list-item-subtitle v-if="item.quantity > 1">{{$t('Cena za przedmioty')}}: {{item.items_price | toCurrency()}}</v-list-item-subtitle>
                    <v-list-item-subtitle v-if="!item.editable">{{$t('Ilość')}}: {{item.quantity}}</v-list-item-subtitle>
                </v-list-item-content>
            </v-list-item>
            <v-divider></v-divider>
            <discount-component></discount-component>
            <v-list-item>{{$t('Cena koszyka')}}: {{cart.price | toCurrency()}}</v-list-item>
            <v-list-item v-if="getShipmentPrice != 0">{{$t('Cena przesyłki')}}: {{getShipmentPrice | toCurrency()}}</v-list-item>
            <v-list-item v-if="hasFreeShipping"><span class="font-weight-bold green--text">Darmowa dostawa</span></v-list-item>
            <v-list-item v-if="cart.discount"><span class="green--text">Zniżka całkowita: -{{cart.discount | toCurrency()}}</span></v-list-item>
            <v-list-item>{{$t('Cena całkowita')}}: {{ getTotalPrice | toCurrency()}}</v-list-item>
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
        computed:{
            getShipmentPrice(){
                if(this.hasFreeShipping) return 0;
                if(this.shipment){
                    return this.shipment.price;
                }else{
                    return 0;
                }
            },
            hasFreeShipping(){
                var setting = this.$settings.getSetting('admin.free_shipping_limit');
                if(setting){
                    if(this.cart.totalPrice >= setting) return true;
                }
                return false;
            },
            getTotalPrice(){
                return this.cart.totalPrice + this.getShipmentPrice;
            }
        },
    }
</script>
