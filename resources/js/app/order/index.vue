<template>
    <div class="container">
        <div class="w-100 give-me-space">
            <h1>{{$t('Złóż zamówienie')}}</h1>
            <v-form ref="order_form">
                <v-row>
                    <v-col lg="6" sm="12">
                        <shipment-select :loading="loading" @select="selectShipment"></shipment-select>
                        <user-data :loading="loading" @user="setUser"></user-data>
                    </v-col>
                    <v-col lg="6" sm="12">
                        <order-products :cart="cart" :shipment="order.shipment"></order-products>
                        <v-radio-group v-model="order.payment_type" :rules="[rules.required]">
                            <v-radio
                                    v-for="payment, index in payment_methods"
                                    :key="index"
                                    :label="$t(payment.name)"
                                    :value="payment.value"
                            ></v-radio>
                        </v-radio-group>
                        <v-alert v-if="validate" v-for="error in errors" type="error">
                            {{error}}
                        </v-alert>
                        <v-btn :loading="loading" v-if="order.user" @click="makeOrder()" :disabled="errors.length > 0" color="primary" class="w-100 mt-3">{{$t('Złóż zamówienie')}}</v-btn>
                    </v-col>
                </v-row>
            </v-form>
        </div>
    </div>
</template>
<script>
    import {storeOrder} from "../../api/order";
    import shipmentSelect from './shipmentSelect';
    import userData from './user_data';
    import orderProducts from './order_products';
    export default {
        props: ['cart'],
        components:{shipmentSelect, userData, orderProducts},
        data(){
            return{
                loading: false,
                validate: false,
                order:{payment: ''},
                payment_methods:[
                    {name: 'Płatność przelewem (ręcznie)', value: 'bank'},
                    {name: 'Płatność PayU', value:'payu'},
                ],
                user: null,
                rules: {
                    required: value => !!value || 'Te pole jest wymagane',
                },
            }
        },
        computed:{
          errors(){
              var errors = [];
              if(this.validate){
                  if(!this.order.user || !this.order.user.valid){errors.push('Dane użytkownika są niepoprawne')};
                  if(!this.order.shipment){errors.push('Nie wybrano żadnej formy przysyłki')};
                  if(!this.order.payment_type){errors.push('Nie wybrano żadnej formy płatności')};
              }
              return errors;
          }
        },
        methods:{
            makeOrder(){
                this.validate = true;
                if(this.errors.length == 0){
                    if(this.$refs.order_form.validate()){
                        this.loading = true;
                        storeOrder(this.order).then(response => {
                            this.loading = false;
                            if(response.redirect){
                                window.location.href = response.redirect;
                            }
                        }).catch(e => {
                            this.$eventBus.$emit('add_error', {text: 'Błąd podczas składania zamówienia'});
                            if(typeof e.response.data == 'object'){
                                for(var i in e.response.data){
                                    this.$eventBus.$emit('add_error', {text: e.response.data[i]});
                                }
                            }
                            this.loading = false;
                        })
                    }
                }
            },
            setUser(user){
              this.order = {...this.order, user: user};
            },
            selectShipment(shipment){
                this.$set(this.order, 'shipment', shipment);
            }
        }
    }
</script>
