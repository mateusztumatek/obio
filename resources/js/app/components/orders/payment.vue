<template>
    <div v-if="order">
        <v-chip v-if="order.payu_payment && order.payu_payment.status == 'PENDING'" pill>
            <v-avatar
                    left
            >
                <v-progress-circular
                        indeterminate
                        color="primary"
                ></v-progress-circular>
            </v-avatar>
            <span>Płatność realizowana </span>
        </v-chip>
        <v-chip :color="(order.paid)? 'primary' : 'red'"><span v-if="order.paid">Zapłacone</span><span v-else>Nie zapłacone</span></v-chip>
    </div>
</template>
<script>
    import {getOrder} from "../../../api/order";
    export default {
        props:['hash'],
        data(){
            return{
                order: null
            }
        },
        mounted(){
            this.getOrder();
          setInterval(() => {
              this.getOrder();
          }, 7000)
        },
        methods:{
            getOrder(){
                getOrder(this.hash).then(response => {
                    this.order = response;
                })
            },
            refresh(){

            }
        }
    }
</script>
