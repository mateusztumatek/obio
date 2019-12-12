<template>
    <div>
        <v-container>
            <v-row>
                <v-col cols="12" v-for="(design, key) in designs">
                    <div class="d-flex flex-wrap">
                        <div class="col-md-1 px-3">
                            <img style="max-width: 100%" :src="$root.getSrc(design.image, {width:250})">
                        </div>
                        <div class="col-md-11 text-left">
                            <h4>{{design.name}}</h4>
                            <div class="d-flex">
                                <v-btn class="text--white" color="primary" @click="openDesign(design)">{{$t('Otwórz projekt')}}</v-btn>
                                <v-btn class="ml-2 text--white" color="red" @click="deleteDesign(design)">{{$t('Usuń projekt')}}</v-btn>
                            </div>
                        </div>
                    </div>
                </v-col>
            </v-row>
        </v-container>
    </div>
</template>
<script>
    import {getDesigns, deleteDesign} from "../../api/designs";

    export default {
        name: 'Designs_elements',
        data(){
            return{
                designs: []
            }
        },
        mounted(){
          this.getDesigns();
          this.$root.$eventBus.$on('refreshDesigns', () => {this.getDesigns()});
        },
        methods:{
            getDesigns(){
                getDesigns().then(response => {
                    this.designs = response;
                })
            },
            openDesign(design){
/*
                this.$root.$eventBus.$emit('openDesign', design);
*/
                if(!design.storage){
                    window.location.href="/kreator?storage=db&design_id="+design.id;
                }else{
                    window.location.href="/kreator?storage="+design.storage+"&design_id="+design.id;
                }


/*
                this.$emit('close');
*/
            },
            deleteDesign(design){
                deleteDesign(design.id, (design.storage == 'session')? 'session' : 'db').then(response => {
                    this.designs.splice(this.designs.findIndex(x => x.id == design.id && x.storage == design.storage), 1);
                })
            }
        }
    }
</script>
