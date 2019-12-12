<template>
    <div class="row" style="justify-content: center">
        <div class="col-md-7 contact_holder">
            <v-form ref="contact_form">
                <v-text-field
                        class="my-text-field"
                        solo
                        v-model="contact.name"
                        :loading="loading"
                        :rules="rules.name"

                        :label="$t('Twoje imię')"
                ></v-text-field>
                <v-text-field
                        class="my-text-field"
                        :loading="loading"
                        solo
                        v-model="contact.email"
                        :rules="rules.email"
                        :label="$t('Twój email')"
                ></v-text-field>
                <v-textarea
                        class="my-text-field"
                        :loading="loading"
                        solo
                        v-model="contact.message"
                        :rules="rules.message"
                        :label="$t('Wiadomość')"
                ></v-textarea>
            </v-form>
        </div>

        <div class="col-md-7 contact_holder">
            <v-btn :loading="loading" class="my-button my-border w-100" x-large tile @click="sendMessage()">{{$t('Wyślij')}}</v-btn>
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
                    }).catch(e => {
                        this.loading = true;
                    })
                }
            }
        }
    }
</script>
