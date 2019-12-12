<template>
    <div>
        <h2 class="font-weight-light">{{$t('Wybierz sposób wysyłki')}}:</h2>
        <div class="row" >
            <div class="col-md-4" v-for="shipment in shipments">
                <v-card :loading="loading" :color="(selected && selected.id == shipment.id)? 'primary' : null" ripple @click="selectShipment(shipment)">
                    <v-card-title style="justify-content: space-between">
                        <div>
                            {{shipment.name}}  <span class="font-weight-light ml-3">{{shipment.price | toCurrency()}}</span>
                        </div>
                    </v-card-title>
                    <v-card-text v-if="shipment.logo">
                        <v-avatar tile size="100%">
                            <img
                                    style="object-fit: contain"
                                    :src="$root.getSrc(shipment.logo)"
                                    alt="Shipment logo"
                            >
                        </v-avatar>
                    </v-card-text>
                </v-card>
            </div>
        </div>
    </div>
</template>
<script>
    import {getShipments} from "../../api/shipments";

    export default {
        props:['loading'],
        data(){
            return{
                shipments: [],
                selected: null
            }
        },
        mounted() {
            this.getShipments();
        },
        methods:{
            selectShipment(shipment){
                this.selected = shipment;
                this.$emit('select', this.selected);
            },
            getShipments(){
                getShipments().then(response => {
                    this.shipments = response;
                    this.loading = false;
                })
            }
        }
    }
</script>
