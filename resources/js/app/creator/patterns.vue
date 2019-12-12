<template>
    <div>
        <v-row>
            <div class="col-6 col-lg-2 col-md-4" v-for="pattern in patterns">
                <v-card style="border-color: #222222 !important;" tile class="my-border" :color="(pattern == selectedPattern)? 'primary' : ''" :dark="selectedPattern == pattern" ripple @click="selectPattern(pattern)">
                    <v-card-title>
                        {{pattern.name}}
                    </v-card-title>
                    <v-card-text>
                        <v-img class="ma-auto" width="50%" :src="$root.getSrc(pattern.image)"></v-img>
                    </v-card-text>
                </v-card>
            </div>
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
            this.$root.$eventBus.$on('openDesign', (design) => {
                setTimeout(() => {
                    this.selectedPattern = this.patterns.find(x => x.id == design.pattern_id);
                    this.$emit('select', this.selectedPattern);
                }, 500)
            })
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
<style lang="scss">
    .card-title-absolute{
        position: absolute;
        left: 0px;
        top: 0px;
        background-color: #222222;
    }
</style>
