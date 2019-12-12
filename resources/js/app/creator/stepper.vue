<template>
    <v-stepper v-model="step" non-lineary>
        <v-stepper-header>
            <v-row >
                <div class="col-md-4 col-sm-12">
                    <v-btn :color="(step == 1)? 'primary': null" class="stepper-header my-border w-100 h-100" @click="step=1" tile>1. {{$t('Wybierz styl')}}</v-btn>
                </div>
                <div class="col-md-4 col-sm-12">
                    <v-btn :disabled="selectedPattern == null && step2done == false" :color="(step == 2)? 'primary': null" class="stepper-header my-border w-100 h-100" @click="step=2" tile>2. {{$t('Zaprojektuj czapkę')}}</v-btn>
                </div>
                <div class="col-md-4 col-sm-12">
                    <v-btn :disabled="project == null" :color="(step == 3)? 'primary': null" class="stepper-header my-border w-100 h-100" @click="$root.$eventBus.$emit('final_step');" tile>3. {{$t('Sfinalizuj transakcję')}}</v-btn>
                </div>
            </v-row>
           <!-- <v-stepper-step class="step-first" :complete="step > 1" editable step="1">
                <div class="stepper-step-content col-md-12">
                    1. Wybierz styl
                </div>
            </v-stepper-step>

            <v-divider></v-divider>

            <v-stepper-step class="step-second" :complete="step > 2" editable step="2">
                <div class="stepper-step-content col-md-12">
                    2. Zaprojektuj czapkę
                </div>
            </v-stepper-step>

            <v-divider></v-divider>

            <v-stepper-step class="step-third" step="3">
                <div class="stepper-step-content col-md-12">
                    3. Sfinalizuj transakcję
                </div>
            </v-stepper-step>-->
        </v-stepper-header>

        <v-stepper-items>
            <v-stepper-content step="1">
                <patterns @select="selectPattern"></patterns>
            </v-stepper-content>

            <v-stepper-content step="2">
                <creator @done="creatorDone" :settings="creator_settings" :product="product" :pattern="selectedPattern"></creator>
            </v-stepper-content>
            <v-stepper-content step="3">
                <confirmation :image="imageBlob" :pattern="selectedPattern" :project="project" :product="product" :design="design"></confirmation>
            </v-stepper-content>
        </v-stepper-items>
    </v-stepper>
</template>
<script>
    import Creator from './creator';
    import Patterns from './patterns';
    import Confirmation from './confirmation';
    import Slick from 'vue-slick'
    import {creatorSettings} from "../../api/creator_settings";

    export default{
        props: ['product', 'parent_design'],
        components:{
          Creator,Patterns,Confirmation, Slick
        },
        data(){
            return{
                step: 1,
                selectedPattern: null,
                imageBlob: null,
                project: null,
                design: null,
                step2done: false,
                creator_settings: null,
            }
        },
        watch:{
            step: function(){
                if(this.step == 2){
                    setTimeout(() => {
                        window.initColorSlider();
                    }, 100)
                }
            }
        },
        mounted(){
            this.$root.$eventBus.$on('openDesign', (design) => {
                this.step = 2;
                this.step2done = true;
            })
            if(this.parent_design){
                this.$root.$eventBus.$emit('openDesign', this.parent_design);
            }
            this.getCreatorOptions();
        },
        methods:{
            getCreatorOptions(){
                creatorSettings().then(response => {
                      this.creator_settings = response;
                })
            },
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
    @import "../../../sass/variables";
    .v-stepper{
        border-radius: 0px !important;
        box-shadow: none !important;
        background-color: transparent !important;
        .v-stepper__content{
            padding: 8px 0px !important;
        }
        .v-stepper__header{
            height: unset;
            .v-stepper__step--complete{
                div{
                    color: white !important;
                }
                background-color: grey !important;
            }
            box-shadow: none !important;
            hr{
                display: none !important;
            }
            .step-first{
                padding-left: 0px !important;
                padding-right: 8px !important;
            }
            .step-second{
                padding-left: 8px !important;
                padding-right: 8px !important;
            }
            .step-third{
                padding-left: 8px !important;
                padding-right: 0px !important;
            }
            .v-stepper__step--complete{
                background-color: white !important;
                .stepper-step-content{
                    color: black !important;
                }
            }
            .v-stepper__step{
                &:hover{
                    background-color: white !important;
                }
                padding-top: 0px !important;
                padding-bottom: 0px !important;
                display: flex;
                justify-content: center;
                width: 33.33%;
                span{
                    display: none !important;
                }
                .v-stepper__label{
                    height: 100%;
                    text-align: center;
                    width: 100%;
                }
                .stepper-step-content{
                    font-weight: bold !important;
                    font-size: 1.5rem;
                    text-transform: uppercase;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    text-align: center;
                    height: 100%;
                    width: 100%;
                    border: $my-border;
                }
            }
        }
    }

    .stepper-header{
        min-height: 72px;
        font-size: 1.6rem !important;
    }
    @media only screen and (max-width: 959px){
        .v-stepper__label{
            display: flex !important;
        }
        .stepper-header{
            font-size: 0.8rem !important;
        }
    }

</style>
