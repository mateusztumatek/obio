<template>
    <div :class="{'rate-small': small}">
        <div v-if="type == 'reviews'">
            <div class="d-flex align-center">
                <v-rating :value="average" background-color="grey" half-increments readonly color="primary" ></v-rating>
                <span v-if="count != false" :style="{'font-size': (small)? '0.8rem' : null}" class="ml-2 text-muted">({{totalRatesSlug}})</span>
            </div>
        </div>
        <div v-if="type == 'rate'" class="my-3">
            <v-form ref="rating_form">
                <div v-if="!rate.sended">
                    <v-text-field rounded :loading="loading" :error-messages="errors.name" :disabled="rate.user != null" :rules="[validation.required]" label="Imię" v-model="rate.name" outlined></v-text-field>
                    <v-textarea :loading="loading" :error-messages="errors.comment" rounded solo class="no-validation" label="Wpisz treść" v-model="rate.comment"></v-textarea>
                    <v-rating :loading="loading" class="mt-3" background-color="grey" half-increments v-model="rate.rate" color="primary"></v-rating>
                    <v-text-field :loading="loading" :error-messages="errors.rate" class="only-validation" v-model="rate.rate" :rules="[validation.required]"></v-text-field>
                    <v-btn :loading="loading" @click="storeRate()" class="w-100" depressed rounded color="black" height="60px" dark>Dodaj ocenę</v-btn>
                </div>
                <div class="empty-state" v-else>
                    <h3 class="headline">Dziękujemy za przesłanie swojej opini</h3>
                </div>
            </v-form>
            <v-data-iterator :items="rates" :items-per-page="5">
                <template v-slot="{items}">
                    <v-list>
                        <v-list-item v-for="rate in items">
                            <v-list-item-avatar>
                                <v-img :src="(rate.user && rate.user.avatar)? $root.getSrc(rate.user.avatar): $root.getSrc('default/user.png')"></v-img>
                            </v-list-item-avatar>
                            <v-list-item-content>
                                <v-list-item-title>{{rate.name}} <br> <span class="text-muted" style="font-size: 0.8rem">{{rate.created_diff}}</span></v-list-item-title>
                                <p style="font-size: 0.8rem" class="text-muted mt-2">{{rate.comment | striphtml}}</p>
                            </v-list-item-content>
                            <v-list-item-action>
                                <v-rating :value="rate.rate" background-color="grey" half-increments readonly color="primary" ></v-rating>
                                <v-btn @click="deleteRate(rate)" v-if="$root.user && $root.user.id == rate.user_id" color="red" depressed small dark>Usuń ocenę</v-btn>
                            </v-list-item-action>
                        </v-list-item>
                    </v-list>
                </template>
            </v-data-iterator>

        </div>
    </div>
</template>
<script>
    import {getRates, storeRate, deleteRate} from "../../api/rates";

    export default {
        props:['model', 'foreign_key', 'type', 'parent_rates', 'small', 'count'],
        data:() => {
            return{
                errors:{},
                rates:[],
                rate:{},
                loading: false,
            }
        },
        computed:{
          totalRatesSlug(){
              var slug = '';
              if(this.rates.length <= 1)slug = 'ocena';
              if(this.rates.length > 1 && this.rates.length < 5)slug = 'oceny';
              if(this.rates.length >= 5)slug = 'ocen';
              return this.rates.length+' '+slug;
          },
          average(){
              if(this.rates.length == 0) return 5;
              var total = 0;
              this.rates.forEach(item => {
                  total = total + item.rate;
              })
              total = total / this.rates.length;
              return total;
          }
        },
        mounted() {
            setTimeout(() => {
                if(this.$root.user){
                    this.$set(this.rate, 'user', this.$root.user);
                    this.$set(this.rate, 'name', this.$root.user.name);
                }
            }, 50);
            if(this.parent_rates){
                this.rates = this.parent_rates;
            }else{
                this.getRates();
            }
        },
        methods:{
            getRates(){
                getRates(this.model, this.foreign_key).then(response => {
                    this.rates = response;
                }).catch(e => {
                    this.$root.$eventBus.$emit('add_error', {text: 'Nie udało się pobrać ocen', type: 'error'});
                })
            },
            storeRate(){
                if(this.$refs.rating_form.validate()){
                    this.errors = {};
                    this.loading = true;
                    storeRate({type: this.model, foreign_key: this.foreign_key, ...this.rate}).then(response => {
                        this.rates.push(response);
                        this.$set(this.rate, 'sended', true);
                        this.loading = false;
                    }).catch(e => {
                        this.errors = e.response.data.errors;
                        this.loading = false;
                    })
                }
            },
            deleteRate(rate){
                deleteRate(rate.id).then(response => {
                    this.rates.splice(this.rates.findIndex(x => x.id == rate.id), 1);
                })
            }
        }
    }
</script>
<style lang="scss">
    .v-rating{
        .v-icon{
            padding: 3px;
        }
        .v-icon{
            &:first-of-type{
                padding-left: 0px !important;
            }
        }
    }
    .rate-small{
        .v-icon{
            padding: 2px !important;
            &:before{
                font-size: 0.9rem !important;
            }
        }
    }
</style>
