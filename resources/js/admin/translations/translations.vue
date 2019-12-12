<template>
    <div>

        <input placeholder="Szukaj" v-model="term" class="form-control" style="margin-bottom: 10px">
        <table class="">
            <table id="dataTable" class="table table-hover dataTable no-footer" role="grid" aria-describedby="dataTable_info">
                <thead>
                <tr>
                    <th>
                        Klucz
                    </th>
                    <th v-for="langs, key in array">{{key}}</th>
                </tr>
                </thead>
                <tbody>
                    <tr v-for="key in filtered" role="row" class="odd">
                        <td>
                            {{key}}
                        </td>
                        <td  v-for="lang in array">
                            <input style="min-width: 300px" v-model="lang[key]" class="form-control">
                        </td>
                    </tr>
                </tbody>
            </table>
            <button v-if="!adding" @click="adding = true" class="btn btn-primary">Dodaj tłumaczenie</button>
            <div v-if="adding">
                <div class="form-group">
                    <label>
                        Klucz
                    </label>
                    <input placeholder="Klucz" class="form-control" v-model="new_key">
                </div>
                <button @click="addNew()" class="btn btn-primary" :disabled="new_key == null || new_key == ''">Dodaj</button>
            </div>
            <div style="margin-top: 10px">
                <button class="btn btn-primary btn-lg"  @click="save()">Zapisz</button>
            </div>
            <div class="col-md-12" v-for="message in messages">
                <div class="alert alert-info">{{message}}</div>
            </div>
        </table>
    </div>
</template>
<script>
    export default {
        props:['translations', 'keys'],
        data(){
            return{
                term: '',
                my_keys: null,
                new_key: null,
                adding: false,
                array: null,
                messages:[],
            }
        },
        computed:{
          filtered(){
              if(this.my_keys){
                  return this.my_keys.filter(item => {
                      return item.toLowerCase().includes(this.term.toLowerCase());
                  });
              }else return [];
          }
        },
        mounted() {
            this.my_keys = this.keys;
          this.array = this.translations;
        },
        methods:{
            addNew(){
                if(this.my_keys.find(x => x == this.new_key)){
                    this.messages.push('Ten klucz już istnieje');
                    setTimeout(() => {this.messages = [];}, 3000)
                    return null;
                }
                this.my_keys.push(this.new_key);
                this.new_key = null;
                this.adding = false;
            },
            save(){
                axios.post(this.$root.base_url+'/admin/tlumaczenia', {translations: this.array}).then(response => {
                    this.messages.push('Zapisano poprawnie');
                    setTimeout(() => {this.messages = []}, 3000);
                })
            }
        }
    }
</script>
