<template>
    <div>
        <div v-for="attribute in attrs">
            <v-chip tile class="mb-2" close-icon="mdi-delete" @click:close="unselect(attribute.id)" close v-if="selected[attribute.id] && selected[attribute.id] != '' && !attribute.is_boolean">{{attribute.name}}: {{selected[attribute.id]}}</v-chip>
            <input :name="'attributes['+attribute.id+']'" type="hidden" :value="selected[attribute.id]">
            <v-select v-if="!attribute.is_boolean" :items="attribute.product_attributes" item-text="value" item-value="value" v-model="selected[attribute.id]" solo tile class="my-text-field" :label="attribute.name"></v-select>
            <v-checkbox true-value="1" false-value="0" dense v-else :label="attribute.name" v-model="selected[attribute.id]" class="mt-0"></v-checkbox>
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
                if(this.inputs[i] && item && !item.is_boolean){
                    this.selected[i] = this.inputs[i];
                }
                if(this.inputs[i] && item && item.is_boolean){
                    if(this.inputs[i] == 1){
                        this.$set(this.selected, i, "1");
                    }
                }
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
<style lang="scss">
    .v-chip{
        border-radius: 0px !important;
    }
</style>
