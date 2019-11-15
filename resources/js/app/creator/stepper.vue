<template>
    <v-stepper v-model="step" non-lineary>
        <v-stepper-header>
            <v-stepper-step :complete="step > 1" editable step="1">Name of step 1</v-stepper-step>

            <v-divider></v-divider>

            <v-stepper-step :complete="step > 2" editable step="2">Name of step 2</v-stepper-step>

            <v-divider></v-divider>

            <v-stepper-step step="3">Name of step 3</v-stepper-step>
        </v-stepper-header>

        <v-stepper-items>
            <v-stepper-content step="1">
                <patterns @select="selectPattern"></patterns>
                <v-btn text>Cancel</v-btn>
            </v-stepper-content>

            <v-stepper-content step="2">
                <creator @done="creatorDone" :product="product" :pattern="selectedPattern"></creator>

                <v-btn text>Cancel</v-btn>
            </v-stepper-content>
            <v-stepper-content step="3">
                <confirmation :image="imageBlob" :project="project" :product="product" :design="design"></confirmation>
                <v-btn text>Cancel</v-btn>
            </v-stepper-content>
        </v-stepper-items>
    </v-stepper>
</template>
<script>
    import Creator from './creator';
    import Patterns from './patterns';
    import Confirmation from './confirmation';
    export default{
        props: ['product'],
        components:{
          Creator,Patterns,Confirmation
        },
        data(){
            return{
                step: 1,
                selectedPattern: null,
                imageBlob: null,
                project: null,
                design: null
            }
        },
        mounted(){
            this.$root.$eventBus.$on('openDesign', (design) => {
                this.step = 2;
            })
        },
        methods:{
            selectPattern(pattern){
                this.selectedPattern = pattern;
                this.step = 2;
            },
            creatorDone(data){
                this.imageBlob = data.image;
                this.project = data.projectImage;
                this.design = data.design;
                this.step = 3;
            }
        }
    }
</script>
<style lang="scss">
    .v-stepper{
        border-radius: 0px !important;
        box-shadow: none !important;
        background-color: transparent !important;
        .v-stepper__header{
            .v-stepper__step--complete{
                div{
                    color: white !important;
                }
                background-color: grey !important;
            }
            box-shadow: none !important;
            border: 1px solid grey;
            hr{
                display: none !important;
            }
            .v-stepper__step{
                display: flex;
                justify-content: center;
                width: 33.33%;
            }
        }
    }
</style>
