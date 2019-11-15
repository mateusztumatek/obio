<template>
    <v-dialog style="border-radius: 0px !important;" v-model="show" fullscreen hide-overlay transition="dialog-bottom-transition">
        <v-card>
            <v-toolbar dark color="black">
                <v-btn color="white" icon @click="show = false">
                    <v-icon class="white--text">mdi-close</v-icon>
                </v-btn>
                <v-toolbar-title>Twoje projekty</v-toolbar-title>
            </v-toolbar>
            <Designs @close="show=false"></Designs>
        </v-card>
    </v-dialog>
</template>
<script>
    import Designs from '../creator/designs';
    export default {
        components: {Designs},
        data(){
            return{
                show: false
            }
        },
        mounted() {
            this.$root.$eventBus.$on('toggleDesigns', (data = null) => {
                if(data != null){
                    this.show = data;
                }else this.show = !this.show;
            })
        }
    }
</script>
<style lang="scss">
    .v-dialog{
        .v-sheet{
            border-radius: 0px !important;
        }
    }
</style>
