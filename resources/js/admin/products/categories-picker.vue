<template>
    <div class="col-md-12">
        <h3 style="font-size: 1rem">Wybierz kategorie</h3>
        <div class="row">
            <div class="col-md-4" v-for="category in categories">
                <ul class="list-group">
                    <li :class="{'active': selected.findIndex(x => x.id == category.id) != -1}" @click.prevent.stop="toggleCat(category)" class="list-group-item category">{{category.name}}</li>
                    <span v-for="subcat in category.childrens">
                        <li @click.prevent.stop="toggleCat(subcat)" :class="{'active': selected.findIndex(x => x.id == subcat.id) != -1}" style="margin-left: 20px; flex-wrap: wrap" class="list-group-item category"><div>{{subcat.name}}</div></li>
                        <li @click.prevent.stop="toggleCat(subcat2)" :class="{'active': selected.findIndex(x => x.id == subcat2.id) != -1}" v-for="subcat2 in subcat.childrens" style="margin-left: 40px; flex-wrap: wrap" class="list-group-item category"><div>{{subcat2.name}}</div></li>
                    </span>
                </ul>
            </div>
        </div>
        <div style="display: none">
            <input v-for="(select, index) in selected" type="hidden" :name="'categories['+index+']'" :value="select.id">
        </div>
    </div>
</template>
<script>

    export default {
        props:['categories', 'data'],
        data:() => {
            return{
                selected:[],
            }
        },
        mounted() {
            if(this.data){
                this.selected = this.data;
            }
        },
        methods:{
            toggleCat(cat){
                var index = -1;
                if((index = this.selected.findIndex(x => x.id == cat.id)) != -1){
                    this.selected.splice(index, 1);
                }else{
                    this.selected.push(cat);
                }
            }
        }
    }
</script>
<style lang="scss">
    .category{
        cursor: pointer;
    }
</style>
