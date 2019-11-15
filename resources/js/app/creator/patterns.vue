<template>
    <div>
        <v-row>
            <v-col lg="3" md="4" sm="12" v-for="pattern in patterns">
                <v-card :color="(pattern == selectedPattern)? 'primary darken-2' : ''" :dark="selectedPattern == pattern" ripple @click="selectPattern(pattern)">
                    <v-card-title>
                        {{pattern.name}}
                    </v-card-title>
                    <v-card-text>
                        <v-img class="ma-auto" width="50%" :src="$root.getSrc(pattern.image)"></v-img>
                    </v-card-text>
                </v-card>
            </v-col>
        </v-row>
    </div>
</template>
<script>
    import {getPatterns} from "../../api/patterns";

    export default {
        data(){
            return{
                patterns:[],
                selectedPattern: null
            }
        },
        mounted() {
            this.getPatterns();
        },
        methods:{
            selectPattern(pattern){
                this.selectedPattern = pattern;
                this.$emit('select', pattern);
            },
            getPatterns(){
                getPatterns().then(response => {
                    this.patterns = response;
                }).catch(e => {
                    this.$eventBus.$emit('add_error', {text: 'Nie udało się pobrać wzorów'});
                })
            }
        }
    }
</script>
