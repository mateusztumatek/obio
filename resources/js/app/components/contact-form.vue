<template>
    <div class="row" style="justify-content: center">
        <div class="col-md-7 contact_holder" style="margin: auto">
            <v-card class="elevation-5 my-border">
                <v-card-text>
                    <v-card-title>Formularz kontaktowy</v-card-title>
                    <v-form ref="contact_form" v-if="!contact.sended">
                        <v-text-field
                                outlined
                                rounded
                                v-model="contact.name"
                                :loading="loading"
                                :rules="rules.name"
                                :label="$t('Twoje imię')"
                        ></v-text-field>
                        <v-text-field
                                :loading="loading"
                                outlined
                                rounded
                                v-model="contact.email"
                                :rules="rules.email"
                                :label="$t('Twój email')"
                        ></v-text-field>
                        <v-textarea
                                :loading="loading"
                                outlined
                                rounded
                                v-model="contact.message"
                                :rules="rules.message"
                                :label="$t('Wiadomość')"
                        ></v-textarea>
                    </v-form>
                    <div v-if="contact.sended" class="empty-state">
                        <h3 class="display-1">Wiadomość wysłana</h3>
                    </div>
                    <v-btn  rounded :loading="loading" color="dark" dark height="50px" class="w-100" x-large @click="sendMessage()">{{$t('Wyślij')}}</v-btn>
                </v-card-text>
            </v-card>
        </div>
    </div>
</template>
<script>
    export default {
        data(){
            return{
                loading: false,
                rules:{
                  email:[
                      v => !!v || 'E-mail jest wymagany',
                      v => /.+@.+\..+/.test(v) || 'Te pole musi być poprawnym adresem email',
                  ],
                  name: [
                      v => !!v || 'Imię jest wymagane',
                  ],
                  message: [
                      v => !!v || 'Te pole jest wymagane',
                  ]
                },
                contact: {}
            }
        },
        methods:{
            sendMessage(){
                if(this.$refs.contact_form.validate()){
                    this.loading = true;

                    axios.post(this.$root.base_url+'/kontakt/wyslij', this.contact).then(response => {
                        this.loading = false;
                        this.$set(this.contact, 'sended', true);
                    }).catch(e => {
                        this.loading = true;
                    })
                }
            }
        }
    }
</script>
