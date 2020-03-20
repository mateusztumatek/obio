<template>
    <div style="margin-bottom: 30px">
        <label>{{label}}</label>
        <div class="colors">
            <div :class="{'active' : value && item.id == value.id}" class="color" @click="$emit('input', (return_value)? item.value : item)" :style="{'background-color': item.value}" v-for="item in items"></div>
        </div>
    </div>
</template>
<script>
    export default {
        props:['value', 'label', 'items', 'return_value'],
        data:() => {
            return{

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
