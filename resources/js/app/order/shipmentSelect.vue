<template>
    <div>
        <h2 class="font-weight-light">{{$t('Wybierz sposób wysyłki')}}:</h2>
        <div class="row" >
            <div class="col-md-4" v-for="shipment in shipments">
                <v-card :class="{'elevation-4': selected && selected.id == shipment.id}" :loading="loading" :color="(selected && selected.id == shipment.id)? 'primary' : null" ripple @click="selectShipment(shipment)">
                    <v-img
                            class="white--text align-end"
                            height="150px"
                            :src="$root.getSrc(shipment.logo)"
                    >
                        <v-card-title style="position: relative; min-height: 50px">
                            <v-overlay opacity="0.6" absolute>
                                {{shipment.name}}  <span class="font-weight-light white--text ml-3">{{shipment.price | toCurrency()}}</span>
                            </v-overlay>
                        </v-card-title>
                    </v-img>
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
