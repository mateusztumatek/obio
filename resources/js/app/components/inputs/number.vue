<template>
    <div>
        <v-container>
            <v-row>
                <v-col sm="2" class="py-0">
                    <v-btn icon text x-large depressed @click="decrement"><v-icon>mdi-minus</v-icon></v-btn>
                </v-col>
                <v-col sm="8" class="py-0">
                    <v-text-field :value="myValue" :label="label" type="number" @input="updateValue" ></v-text-field>
                </v-col>
                <v-col sm="2" style="display: flex; justify-content: flex-end" class="py-0">
                    <v-btn icon text x-large depressed @click="increment"><v-icon>mdi-plus</v-icon></v-btn>
                </v-col>
            </v-row>
        </v-container>
<!--
        <v-text-field :value="value" ref="input" @input="updateValue"></v-text-field>
-->
    </div>
</template>
<script>
    export default {
        props: ['value', 'label'],
        computed:{
          myValue(){return parseInt(this.value)}
        },
        methods:{
            increment(){
                this.updateValue(parseInt(this.value)+ 1);
            },
            decrement(){
                this.updateValue(parseInt(this.value) + -1);
            },
            updateValue(value){
                this.$emit('input', value);
            }
        }
    }
</script>
