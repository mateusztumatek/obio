<template>
    <div>
        <v-form ref="user_form">
            <h2 class="font-weight-light">{{$t('Dane do zamówienia')}}: </h2>
            <v-switch
                    v-model="user.is_invoice"
                    :label="$t('Potrzebna faktura')"
            ></v-switch>
            <v-card :loading="loading" v-if="user.is_invoice" class="mb-3">
                <v-card-title style="justify-content: space-between">
                    Dane Firmy
                    <v-btn @click="copy">Kopiuj dane</v-btn>
                </v-card-title>
                <v-card-text>
                    <v-row>
                        <v-col cols="12">
                            <v-text-field :rules="(user.is_invoice)? [rules.required] : null" v-model="user.invoice.name" :label="$t('Nazwa firmy')"></v-text-field>
                        </v-col>
                        <v-col cols="12">
                            <v-text-field :rules="(user.is_invoice)? [rules.required] : null" v-model="user.invoice.nip" :label="$t('NIP firmy')"></v-text-field>
                        </v-col>
                        <v-col cols="12">
                            <v-text-field :rules="(user.is_invoice)? [rules.required] : null" v-model="user.invoice.postal" :label="$t('Kod pocztowy')"></v-text-field>
                        </v-col>
                        <v-col cols="12">
                            <v-text-field :rules="(user.is_invoice)? [rules.required]: null" v-model="user.invoice.street" :label="$t('Ulica numer domu (numer mieszkania)')"></v-text-field>
                        </v-col>
                        <v-col cols="12">
                            <v-text-field :rules="(user.is_invoice)? [rules.required] : null" v-model="user.invoice.city" :label="$t('Miasto')"></v-text-field>
                        </v-col>
                    </v-row>
                </v-card-text>
            </v-card>
            <v-card :loading="loading">
                <v-card-text>
                    Dane użytkownika
                </v-card-text>
                <v-card-text>
                    <v-row>
                        <v-col cols="12">
                            <v-text-field :rules="[rules.required, rules.email]" v-model="user.email" type="email" :label="$t('Twój adres email')"></v-text-field>
                        </v-col>
                        <v-col lg="6" sm="12">
                            <v-text-field :rules="[rules.required]" v-model="user.street" :label="$t('Ulica')"></v-text-field>
                        </v-col>
                        <div class="col-lg-3 col-sm-6">
                            <v-text-field :rules="[rules.required]" v-model="user.street_number" :label="$t('Numer domu')"></v-text-field>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <v-text-field v-model="user.flat_number" :label="$t('Numer mieszkania')"></v-text-field>
                        </div>
                        <div class="col-sm-12">
                            <v-text-field v-mask="masks.postal_mask" v-model="user.postal" :rules="[rules.required]" :label="$t('Kod pocztowy w formacie')+'(00-000)'"></v-text-field>
                        </div>
                        <div class="col-sm-12">
                            <v-text-field v-mask="'+## ### ### ###'" v-model="user.phone" :label="$t('Numer telefonu')"></v-text-field>
                        </div>
                        <div class="col-sm-12">
                            <v-text-field v-model="user.city" :rules="[rules.required]" :label="$t('Miasto')"></v-text-field>
                        </div>
                        <div class="col-sm-12">
                            <v-textarea v-model="user.notes" :label="$t('Uwagi do zamówienia')"></v-textarea>
                        </div>
                    </v-row>
                </v-card-text>
            </v-card>
        </v-form>
    </div>
</template>
<script>
    export default {
        props:['loading'],
        data(){
            return{
                temp: {
                  email: 'mbielak@ideashirt.pl',
                  street: 'Podwale',
                  street_number: 'podwale',
                  flat_number: '2',
                  phone: '+48 694 556 711',
                  city: 'Niemodlin',
                  postal: '49-100',
                  notes: 'Uwagi do zamowienia',
                  is_invoice: false,
                    invoice:{}
                },
                user:{is_invoice: false, invoice:{}},
                masks:{
                  postal_mask: '##-###',
                },
                rules: {
                    required: value => !!value || 'Te pole jest wymagane',
                    email: value => {
                        const pattern = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
                        return pattern.test(value) || 'Email jest niepoprawny.'
                    },
                },
            }
        },
        watch:{
            user:{
                handler(){
                    setTimeout(() => {
                        this.validate();
                        this.$emit('user', this.user);
                    },50)
                },
                deep: true
            }
        },
        mounted(){
          /*this.user = this.temp;*/
          setTimeout(() => {
              this.validate();
          }, 200)
        },
        methods:{
            validate(){
                if(this.$refs.user_form.validate()){
                    this.$set(this.user, 'valid', true);
                }else{
                    this.$set(this.user, 'valid', false);
                }
            },
            copy(){
                if(this.user.is_invoice){
                    (this.user.postal_code)? this.user.invoice.postal_code = this.user.postal_code : null;
                    if(this.user.flat_number){
                        (this.user.street && this.user.street_number) ? this.user.invoice.street = this.user.street+' '+this.user.street_number+' / '+this.user.flat_number : null;
                    }else (this.user.street_number && this.user.street)? this.user.invoice.street = this.user.street+' '+this.user.street_number : null;
                    (this.user.city)? this.user.invoice.city = this.user.city: null;
                }
            }
        }
    }
</script>
