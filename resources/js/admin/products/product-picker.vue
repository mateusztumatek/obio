<template>
    <div class="col-md-12">
        <div class="form-group">
            <label>Wpisz nazwę produktu</label>
            <div v-if="value">
                <label>Wybrany produkt:</label>
                <p style="font-size: 1.2rem; font-weight: bold">{{value.name}}</p>
                <button @click="$emit('input', null)" type="button" class="btn btn-primary">Zmień</button>
            </div>
            <input class="form-control" v-model="term">
            <div class="row" style="margin: 10px 0px" v-if="!value">
                <div class="col-md-3" v-for="item in filtered">
                    <img :src="storage(item.main_image)" style="max-width: 200px; max-height: 200px; object-fit: contain">
                    <p>{{item.name}}</p>
                    <button type="button" class="btn btn-primary btn-small" @click="$emit('input', item)">Wybierz produkt</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    import {getProducts} from "../../api/products";

    export default {
        props:['value'],
        data:() => {
            return{
                term: '',
                products:[],
            }
        },
        computed:{
          filtered(){
              if(this.term == '') return [];
              return this.products.filter(x => {
                  var search = x.name.toLowerCase();
                  return search.indexOf(this.term.toLowerCase()) != -1;
              })
          }
        },
        mounted() {
            this.getProducts();
        },
        methods:{
            getProducts(){
                getProducts({limit: 100000}).then(response => {
                    this.products = response.data;
                })
            },
            select(item){
                this.$emit('input', item.id);
            }
        }
    }
</script>
