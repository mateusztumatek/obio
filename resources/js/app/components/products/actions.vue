<template>
    <div>
        <div class="row">
            <div class="col-md-12">
                <v-chip class="ma-1" v-for="size in sizes" :color="(selectedSize == size.value)? 'primary' : null" @click="selectedSize = size.value">{{size.value}}</v-chip>
            </div>
            <div class="col-md-6 col-sm-10 col-xs-12 py-0">
                <number-input v-model="quantity"></number-input>
            </div>
            <div class="row mx-0" style="width: 100%">
                <div class="col-auto">
                    <v-btn @click="addToCart" tile height="50px" color="black" depressed dark>Dodaj do koszyka</v-btn>
                </div>
            </div>
            <div class="col-md-12" v-for="error in errors">
                <v-alert type="error">
                    {{error}}
                </v-alert>
            </div>
        </div>
    </div>
</template>
<script>
    import {dataURItoBlob} from "../../../helpers/helpers";
    import {Upload} from "../../../api/upload";

    export default {
        props:['product', 'showDesignerButton', 'design'],
        data(){
            return{
                sizes: [],
                selectedSize: null,
                quantity: 1,
                errors:[],
            }
        },
        mounted() {

        },
        methods:{
            addToCart(){
                this.errors = [];
                if(!this.selectedSize){
                    this.errors.push('Nie wybrano rozmiaru');
                    return null;
                }
                if(this.design != null){
                    this.uploadDesignImage().then(image => {
                        this.$root.addToCart(this.product.id, this.design, this.quantity, this.selectedSize, image, this.design.pattern_id)
                    })
                }else{
                    this.$root.addToCart(this.product.id, null, this.quantity, this.selectedSize);
                }



            },
            uploadDesignImage(){
                return new Promise((resolve, reject) => {
                    var blob = dataURItoBlob(this.design.image); //Converts to blob using link above
                    var form = new FormData();
                    form.append("image", blob);
                    Upload(form, 'designs_previews').then(response => {
                        if(response[0]){
                            resolve(response[0]);
                        }else{
                            reject(null)
                        }
                    }).catch(e => {reject(null)})
                })
            }
        }
    }
</script>
