<template>
    <v-list-item>
        <div v-if="$cart.cart" class="my-3 w-100">
            <v-btn @click="show = !show" depressed outlined color="black" small height="40px">Wprowadź kod rabatowy</v-btn>
            <transition name="slide-fade">
                <v-form ref="coupon_form" v-if="show">
                    <v-text-field :error-messages="errors.code" :loading="loading" :rules="[validation.required]" v-model="code" class="mt-3 coupon-input" outlined label="Kod rabatowy">
                        <template v-slot:append>
                            <v-btn v-if="!$cart.cart.code" :loading="loading" color="black" @click="processCode()" dark depressed>Zapisz</v-btn>
                            <v-btn v-else icon @click="deleteCode()"><v-icon>mdi-close</v-icon></v-btn>
                        </template>
                    </v-text-field>
                </v-form>
            </transition>
        </div>
    </v-list-item>
</template>
<script>
    export default {
        data:() => {
            return{
                errors:{},
                loading: false,
                show: false,
                code: '',
            }
        },
        mounted(){
            setTimeout(() => {
                if(this.$cart.cart && this.$cart.cart.code){
                    this.code = this.$cart.cart.code.code;
                }
            }, 1500)
        },
        methods:{
            processCode(){
                if(this.$refs.coupon_form.validate()){
                    this.errors = {};
                    this.loading = true;
                    this.$cart.applyCode(this.code).then(response => {
                        this.loading = false;
                    }).catch(e => {
                        this.errors = e.response.data.errors;
                        this.loading = false;
                    })
                }
            },
            deleteCode(){
                this.loading = true;
                this.$cart.applyCode(null).then(response => {
                    this.code = '';
                    this.loading = false;
                })
            }
        }
    }
</script>
<style lang="scss">
    .coupon-input{
        .v-input__append-inner{
            margin-top: 10px !important;
        }
    }
</style>

