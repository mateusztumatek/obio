<template>
    <div>
        <v-container>
            <div class="row">
                <v-col sm="2" col="2" class="py-0 d-flex justify-end col-3">
                    <v-btn rounded height="50px" outlined icon text x-large depressed @click="decrement"><v-icon>mdi-minus</v-icon></v-btn>
                </v-col>
                <v-col sm="8" class="py-0">
                    <v-text-field rounded height="50px" class="no-validation" outlined :value="myValue" :label="label" type="number" @input="updateValue" ></v-text-field>
                </v-col>
                <v-col sm="2" col="2" style="display: flex; justify-content: flex-end" class="py-0 d-flex justify-start col-3">
                    <v-btn rounded height="50px" outlined icon text x-large depressed @click="increment"><v-icon>mdi-plus</v-icon></v-btn>
                </v-col>
            </div>
        </v-container>
<!--
        <v-text-field :value="value" ref="input" @input="updateValue"></v-text-field>
-->
    </div>
</template>
<script>
    export default {
        props: ['value', 'label', 'min'],
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
                this.validate(value);
            },
            validate(value){
                if(this.min && this.min > value){
                    this.$emit('input', this.min);
                }
            },
        }
    }
</script>
