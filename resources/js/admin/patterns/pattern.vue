<template>
    <div>
        <button type="button" class="btn btn-primary" @click="addLayer()">Dodaj nową warstwę</button>
        <div class="col-md-12 mb-2" v-for="layer in layers">
            <div class="row">
                <div class="col-md-4 d-flex">
                    <div class="form-group">
                        <label>Wysokość</label>
                        <input class="form-control" step="0.001" :value="layer.height" type="number" @change="changeHeight($event, layer)"></input>
                    </div>
                </div>
                <div class="col-md-4 d-flex">
                    <div class="form-group">
                        <label>Wielkość czcionki minimalna</label>
                        <input class="form-control" v-model="layer.fontSizeMin"></input>
                    </div>
                </div>
                <div class="col-md-4 d-flex">
                    <div class="form-group">
                        <label>Wielkość czcionki maksymalna</label>
                        <input class="form-control" v-model="layer.fontSizeMax"></input>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="holder" v-bind:style="{'height': totalHolderHeight+'px'}">
                <div class="layer" v-for="(layer, id) in layers" v-bind:style="{'height': layer.height+'%'}">
                    <div class="col-md-3 col-sm-6">
                        <span v-bind:style="{'font-size': layer.fontSizeMin+'px'}">min: {{layer.name}}</span>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <span v-bind:style="{'font-size': layer.fontSizeMax+'px'}">max: {{layer.name}}</span>
                    </div>
                    <button type="button" @click="deleteLayer(id)" class="btn btn-danger delete">Usuń</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default {
        props: ['data'],
        data(){
            const names = ['first', 'second', 'third'];
            return{
                totalHolderHeight: 400,
                layers:[]
            }
        },
        watch:{
          layers:{
              handler(val){
                  $('input[name="data"]').val(JSON.stringify(this.layers));
              },
              deep: true
          }
        },
        mounted(){
          if(this.data){
              this.layers = this.data;
          }
        },
        methods:{
            deleteLayer(id){
              this.layers.splice(id, 1);
              this.setHeight();
            },
            changeHeight(height, layer){
                height = height.target.value;
                var total = 100;
                var rest = total - height;
                layer.height = height;
                this.layers.forEach((item => {
                    if(item.name != layer.name){
                        var val = (rest / (this.layers.length - 1)).toFixed(2);
                        item.height = val;
                    }
                }))

            },
            addLayer(){
                if(!this.layers.find(x => x.name == 'first')){
                    var name = 'first';
                }else if(!this.layers.find(x => x.name == 'second')){
                    var name = 'second';
                }else if(!this.layers.find(x => x.name == 'third')){
                    var name = 'third';
                }
                if(this.layers.length < 3){
                    this.layers.push({
                        name: name,
                        fontSizeMin: 10,
                        fontSizeMax: 30,
                    })
                    this.setHeight();
                }
            },
            setHeight(){
                this.layers.forEach((item) => {
                    this.$set(item, 'height', (1/this.layers.length * 100).toFixed(2));
                })
            }
        }
    }
</script>
<style lang="scss">

    .holder{
        width: 76%;
        background-color: #eeeeee;
    }
    .layer{
        position: relative;
        .delete{
            position: absolute;
            right: 10px;
            top: 10px;
        }
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: #cccccc;
        border: 1px solid #222222;
    }
    @media screen and(max-width: 1200px){
        .holder{
            width: 100%;
        }
    }
</style>
