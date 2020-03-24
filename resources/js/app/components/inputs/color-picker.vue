<template>
    <div style="margin-bottom: 30px">
        <label>{{label}}</label>
        <div class="colors">
            <div :class="{'active' : value && value.id == item.id}" class="color" @click="$emit('input', (return_value)? item.id : item)" :style="{'background-color': item.value}" v-for="item in colors"></div>
        </div>
    </div>
</template>
<script>
    export default {
        props:['value', 'label', 'items', 'return_value'],
        data:() => {
            return{

            }
        },
        computed:{
            colors(){
                if(this.items && this.items.length > 0){
                    if(this.items[0][0] == '#') return this.items;
                    var array = [];
                    this.items.forEach(item => {
                        var resolve = this.$settings.resolveColor(item.value);
                        array.push({...item, id: resolve.id, value: resolve.hex, name_color: resolve.name});
                    })
                    return array;
                }
                return [];
            }
        },
        mounted() {
            if(!this.$settings.colors_init){
                this.$settings.getColors();
            }
        }
    }
</script>
<style lang="scss">
    .colors{
        display: flex;
        flex-wrap: wrap;
        .color{
            border: 1px solid rgba(230,230,230);
            margin-top: 10px;
            width: 30px;
            border-radius: 100%;
            height: 30px;
            position: relative;
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
            &:after{
                padding: 3px;
                border-radius: 100%;
                transition: all 200ms;
                opacity: 0;
                content: "\F12C";
                display: inline-block;
                font: normal normal normal 13px/1 "Material Design Icons";
                font-size: 15px !important;
                text-rendering: auto;
                line-height: inherit;
                color: white !important;
                -webkit-font-smoothing: antialiased;
            }
        }
        .active{
            &:after{
                opacity: 1;

            }
        }
        .color:not(:first-of-type){
            margin-left: 10px
        }
    }
</style>
