<template>
    <div>
        <div class="col-md-12" style="margin-top: 30px">
            <h4>Atrybuty produktu: </h4>
        </div>

        <div v-for="attribute in attributes_list" class="col-md-12" style="margin-bottom: 10px; padding: 10px">
            <div class="card">
                <div class="card-header">
                    {{attribute.name}}
                </div>
                <div class="card-body">
                    <div class="form-group" v-if="attribute.is_boolean">
                        <label>{{attribute.name}}</label>
                        <input :type="(attribute.is_boolean)? 'checkbox' : 'text'"  v-bind:class="{'form-control': !attribute.is_boolean, 'form-check-input': attribute.is_boolean}" v-model="attributes[attribute.id]">
                    </div>
                    <div v-else>
                        <button @click="" type="button" @click="addAtribute(attribute)" class="btn btn-primary" >Dodaj ten atrybut</button>
                        <ul class="list-group">
                            <li class="list-group-item" v-for="a,key in attributes[attribute.id]">
                                <span v-if="a.type == 'text' || (a.attribute && a.attribute.type == 'text')">{{a.value}},</span>
                                <span v-if="a.type == 'color' || (a.attribute && a.attribute.type == 'color')">
                                    {{getColorById(a.value)}}
                                </span>
                                <span v-if="a.type == 'bool' || (a.attribute && a.attribute.type == 'bool')"><span v-if="a.value == true">Tak</span><span v-else>Nie</span></span>
                                <span v-if="a.additional_price">Dodatkowa cena: {{a.additional_price}}</span>
                                <span v-if="a.default">Domyślny</span>
                            <button type="button" class="btn btn-danger" @click="deleteAttribute(key, attribute.id)">Usuń</button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal" tabindex="-1" role="dialog" v-bind:class="{'show': added.id}" v-bind:style="{'display': (added.id != null)? 'block' : 'none'}">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Atrybut {{added.name}}</h5>
                    </div>
                    <div class="modal-body">
                        <div class="form-group" v-if="added.type == 'text'">
                            <label>Wpisz wartość</label>
                            <input class="form-control" v-model="added.value">
                        </div>
                        <div class="form-group" v-if="added.type == 'color'">
                            <label>Wybierz kolor</label>
                            <div class="colors">
                                <div :class="{'active' : added.value == item.id}" class="color" @click="$set(added, 'value', item.id)" :style="{'background-color': item.hex}" v-for="item in colors"></div>
                            </div>
                        </div>
                        <div class="form-group" v-if="added.type == 'bool'">
                            <label>Wybierz {{added.name}}</label>
                            <input type="checkbox" class="form-check-input" value="1" v-model="added.value">
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Atrubyt domyślny</label>
                            <input class="form-check-input" type="checkbox" v-model="added.default" value="1">
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Dodatkowo naliczana cena</label>
                            <input type="number" min="0" class="form-control" v-model="added.additional_price">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" @click="storeAttribute()">Dodaj</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal" @click="added = {}">Zamknij</button>
                    </div>
                </div>
            </div>
        </div>
        <div style="display: none">
            <div v-for="(item, index) in data">
                <input type="hidden" :name="'attributes['+index+'][attribute_id]'" :value="item.attribute_id">
                <input type="hidden" :name="'attributes['+index+'][value]'" :value="item.value">
                <input type="hidden" :name="'attributes['+index+'][default]'" :value="item.default">
                <input type="hidden" :name="'attributes['+index+'][additional_price]'" :value="item.additional_price">
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        props:['attributes_list', 'product'],
        data(){
            return{
                added: {},
                attributes:{},
                colors:[],
            }
        },
        computed:{
            data(){
                var arr = [];
                for (var i in this.attributes){
                    this.attributes[i].forEach(item => {
                        arr.push(item);
                    })
                }
                return arr;
            }
        },
        mounted(){
            this.getColors();
          if (this.product){
              this.product.attributes.forEach(item => {
                 if(!this.attributes[item.attribute_id]) this.$set(this.attributes, item.attribute_id, []);
                 this.attributes[item.attribute_id].push(item);
                 this.refresh();
              })
          }
        },
        methods:{
            getColors(){
                axios.get(this.$root.base_url+'/admin/colors').then(({data}) => {
                    this.colors = data;
                })
            },
            refresh(){
                var tmp = this.attributes;
                this.attributes = {};
                this.attributes = tmp;
            },
            addAtribute(attribute){
                this.added = attribute;
                this.added.attribute_id = attribute.id;
            },
            storeAttribute(){
                if(!this.attributes[this.added.id] || typeof this.attributes[this.added.id] != 'object'){
                    this.attributes[this.added.id] = [];
                }
                this.attributes[this.added.id].push(Object.assign({}, this.added));
                this.refresh();
                this.added = {};
            },
            deleteAttribute(key, tab_id){
                var temp = Object.assign(this.attributes[tab_id]);
                temp.splice(key, 1);
                Vue.set(this.attributes, tab_id, temp);
                this.refresh();
            },
            getColorById(id){
                var item= this.colors.find(x => x.id == id);
                if(!item) return 'Nie znaleziono';
                return item.name
            }
        }

    }
</script>
<style lang="scss">
    .color{
        position: relative;
        &:after{
            content:"" !important;
            width: 20px !important;
            height: 20px !important;
            border-radius: 100% !important;
            position: absolute !important;
            right: -5px !important;
            top: -5px !important;
            border: 1px solid white;
            background-color: black !important;
        }
    }
    .modal{
        background-color: rgba(0,0,0,0.3);
    }
    .card{
        .card-header{
            padding: 10px 25px;
        }
        border-radius: 10px;
        -webkit-box-shadow: 2px 2px 15px 0px rgba(0,0,0,0.2) !important;
        -moz-box-shadow: 2px 2px 15px 0px rgba(0,0,0,0.2) !important;
        box-shadow: 2px 2px 15px 0px rgba(0,0,0,0.2) !important;
    }
    .list-group-item{
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
</style>
