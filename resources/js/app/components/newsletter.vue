<template>
    <div class="newsletter">
        <v-form ref="newsletter_form" lazy-validation>
            <div class="col-12 py-0 text-right" style="margin: auto">
                <v-text-field
                        :error="(errors && errors.email && errors.email.length > 0)? true : false"
                        :error-messages="errors.email"
                        rounded
                        :rules="rules.email"  :loading="loading" prepend-icon="mdi-email-check-outline" v-model="subscriber.email" outlined style="border-width: 2px" dark :label="$t('Wpisz swoj adres email')"></v-text-field>
                <div v-for="agree in agrees" class="d-flex justify-end text-right">
                    <v-checkbox
                            class="mt-0 mb-2 no-validation"
                            dense
                            small
                            rounded
                            :rules="rules.agree"
                            dark
                            v-model="agree.value"
                            :label="$t(agree.text)"
                            :loading="loading"
                    ></v-checkbox>
                </div>
                <div v-if="completed" >
                    <v-alert dark tile>{{$t('Zostałeś zapisany na listę naszych odbiorców')}}</v-alert>
                </div>
                <v-btn v-if="!completed" x-large class="my-border-dark" color="white" @click="send" rounded :loading="loading" :disabled="completed">{{$t('Zapisz mnie na newsletter')}}</v-btn>
            </div>
        </v-form>
    </div>

</template>
<script>
    import {newsletterSave} from "../../api/newsletter";

    export default {
        name: 'AutocompleteAsync',
        data() {
            return {
                completed: false,
                rules:{
                    email:[
                        v => !!v || 'E-mail is required',
                        v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
                    ],
                    agree:[
                        v => (v == false)? 'Ten element musi byc zaznaczony' : true
                    ]
                },
                agrees:[
                    {
                        text: 'Zgadasz się na przetwarzanie danych osobowych?',
                        value: false,
                    },
                    {
                        text: 'Zgadzasz się na RODO?',
                        value: false,
                    }
                ],
                errors:[],
                subscriber:{},
                loading: false
            }
        },
        mounted: function(){
        },
        methods:{
            send(){
                if(this.$refs.newsletter_form.validate()){
                    this.loading = true;
                    this.errors = [];
                    newsletterSave(this.subscriber).then(response => {
                        this.loading = false;
                        this.completed = true;
                    }).catch(e => {
                        this.errors = e.response.data.errors;
                        this.loading = false;
                    })
                }
            }
        }
    }
</script>
<style lang="scss">
    .newsletter{
        .v-input--checkbox{
            .v-label{
                width: 80%;
            }
            .v-input__slot{
                display: flex;
                justify-content: flex-end;
            }
        }
        .v-label{
            text-align: right !important;
        }
    }
</style>
