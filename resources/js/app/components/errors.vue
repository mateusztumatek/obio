<template>
    <div class="errors">
        <transition-group name="slide-fade" mode="in-out">
            <div v-bind:key="key" v-for="error, key in errors" >
                <v-alert :light="true" style="border-color: #222222 !important; border-radius: 50px" :color="(error.type == 'info')? 'primary' : 'accent'" :type="error.type" dismissible>
                    {{error.text}}
                </v-alert>
            </div>
        </transition-group>
    </div>
</template>
<script>
    export default {
        data(){
            return{
                errors:[],
            }
        },
        mounted(){
            this.$eventBus.$on('add_error', (data) => {
                data.type = 'error';
                this.errors.unshift(data);
                this.resetErrors(data);

            })
            this.$root.$eventBus.$on('add_message', (data) => {
                data.type = 'info';
                this.errors.unshift(data);
                this.resetErrors(data);
            })
        },
        methods:{
            resetErrors(data){
                if(data.duration){
                    setTimeout(() => {
                        this.errors = [];
                    }, data.duration)
                }else{
                    setTimeout(() => {
                        this.errors = [];
                    }, 5000)
                }
            }
        }
    }
</script>
<style lang="scss">
    .errors{
        z-index: 10000000;
        position: fixed;
        width: 50%;
        left: 25%;
        bottom: 60px;
        .primary{
            i{
                color: #222222 !important;
            }
        }
    }
    @media screen and (max-width: 1200px){
        .errors{
            width: 95%;
            left: 2.5%;
        }
    }
    .slide-fade-enter-active {
        transition: all .4s ease;
    }
    .slide-fade-leave-active {
        transition: all .4s cubic-bezier(1.0, 0.5, 0.8, 1.0);
    }
    .slide-fade-enter, .slide-fade-leave-to
        /* .slide-fade-leave-active below version 2.1.8 */ {
        transform: translatey(30px);
        opacity: 0;
    }
</style>
