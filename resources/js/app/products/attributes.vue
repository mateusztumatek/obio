<template>
    <div>
        <div v-for="attribute in attrs">
            <v-chip rounded class="mb-2" close-icon="mdi-delete" @click:close="unselect(attribute.id)" close v-if="selected[attribute.id] && selected[attribute.id] != '' && !attribute.is_boolean">{{attribute.name}}:
                <span v-if="attribute.type == 'text'">{{selected[attribute.id]}}</span>
                <span v-if="attribute.type == 'color'">
                    <div class="my-1 ml-2" style="width: 20px; height: 20px; border-radius: 100%" :style="{'background-color': $settings.resolveColor(selected[attribute.id]).hex}"></div>
                </span>
                <span v-if="attribute.type == 'bool'"> <span class="ml-2" v-if="selected[attribute.id] == 0">Nie</span><span v-else class="ml-2">Tak</span></span>
            </v-chip>
            <input :name="'attributes['+attribute.id+']'" type="hidden" :value="selected[attribute.id]">
            <v-select solo v-if="attribute.type == 'text' && attribute.product_attributes.length > 0" :items="attribute.product_attributes" item-text="value" item-value="value" v-model="selected[attribute.id]" :label="attribute.name"></v-select>
            <div v-if="attribute.type == 'color'">
                <color-picker :return_value="true" v-model="selected[attribute.id]" :items="attribute.product_attributes"></color-picker>
            </div>
            <v-checkbox true-value="1" false-value="0" dense v-if="attribute.type == 'bool' && attribute.product_attributes.length > 0" :label="attribute.name" v-model="selected[attribute.id]" class="mt-0"></v-checkbox>
        </div>
    </div>
</template>
<script>
    export default {
        props:['attributes', 'inputs'],
        data(){
            return{
                selected: {},
            }
        },
        computed:{
            attrs(){
                this.attributes.forEach(item => {
                    var result = Object.keys(item.product_attributes).map(function(key) {
                        return item.product_attributes[key];
                    });
                    item.product_attributes = result;
                })
                return this.attributes;
            }
        },
        mounted() {
            for(var i in this.inputs){
                var item = this.attributes.find(x => x.id == i);
                if(item){
                    this.$set(this.selected, item.id, this.inputs[i]);
                }
              /*  if(this.inputs[i] && item){
                    this.selected[i] = this.inputs[i];
                }
                if(this.inputs[i] && item){
                    if(this.inputs[i] == 1){
                        this.$set(this.selected, i, "1");
                    }
                }*/
            }
        },
        methods:{
            unselect(id){
                this.$set(this.selected, id, null);
                this.refresh();
            },
            refresh(){
                var tmp = Object.assign(this.selected);
                this.selected = null;
                this.selected = tmp;
            }
        }
    }
</script>

