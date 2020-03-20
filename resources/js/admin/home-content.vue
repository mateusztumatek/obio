<template>
    <div class="col-md-12">
        <div v-if="isType('product')">
            <product-picker v-model="toReturn.product"></product-picker>
        </div>
      <!--  <div class="col-md-12">
            <button @click="addLink()" type="button" class="btn btn-primary">Dodaj link</button>
            <div class="row">
                <div class="col-md-3" v-for="(link, index) in toReturn.links" v-if="toReturn.links">
                    <div class="card" style="padding: 10px">
                        <div class="form-group">
                            <label>Nazwa linku</label>
                            <input class="form-control" v-model="link.name">
                        </div>
                        <div class="form-group">
                            <label>Adres url</label>
                            <input class="form-control" v-model="link.url">
                        </div>
                        <button @click="toReturn.links.splice(index, 1)" type="button" class="btn btn-danger">Usuń link</button>
                    </div>
                </div>
            </div>
        </div>-->
        <input type="hidden" name="value" :value="JSON.stringify(toReturn)">
    </div>
</template>
<script>
    export default{
        props:['value'],
        data:() => {
            return{
                data: null,
                toReturn: {},
                set:false,
            }
        },
        mounted(){
            if(this.value){
                this.toReturn = this.value;
            }
            this.$root.$eventBus.$on('form_data', (data) => {
                this.data = data;
            })
        },
        methods:{
          addLink(){
            if(!this.toReturn.links) this.$set(this.toReturn, 'links', []);
            this.toReturn.links.push({});
          },
          isType(type){
              if(!this.data) return false;
              var check = false;
              this.data.forEach(item => {
                  if(item.name == 'type' && item.value == type) check = true;
              })
              return check;
          }
        }
    }
</script>
