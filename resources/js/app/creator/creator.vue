<template>
    <div v-if="product">
        <div class="row">
            <div class="col-md-4 pt-0">
                <div class="settings-panel" v-bind:class="{'settings-panel-active' : showMobileSettings}">
                    <div class="setting-panel-header" v-bind:class="{'setting-panel-header-scrolled': fixedMenuScrolled}">
                        <h2 class="first-font d-flex" style="justify-content:space-between; margin-bottom: 8px">{{$t('Ustawienia')}}
                            <div class="float-right" v-if="$root.isMobile">
                                <v-btn @click="showMobileSettings = false" icon><v-icon>mdi-close</v-icon></v-btn>
                            </div>
                        </h2>
                    </div>

                    <div class="my-border panel-wrapper" v-bind:style="{'padding' : (!$root.isMobile)? '16px' : '0px'}">
                        <v-expansion-panels :value="(texts.length > 0)? 0 : null">
                            <v-expansion-panel
                                    v-for="(layer ,i) in texts"
                                    :key="i"
                            >
                                <v-expansion-panel-header>
                                    <div class="d-flex" style="align-items: center">
                                        <!--<div @click.prevent>
                                            <v-checkbox :value="(selectedLayers.findIndex(x => x.name == layer.name) != -1)? true : false" @change="toggleLayer(layer)" class="ma-0"></v-checkbox>
                                        </div>-->
                                        <span style="text-transform: uppercase; font-weight: bold">{{$t('Warstwa')}} {{i + 1}}</span>
                                    </div>
                                </v-expansion-panel-header>
                                <v-expansion-panel-content>
                                    <v-row>
                                        <v-col cols="12">
                                            <div class="mb-2">
                                                <label class="font-weight-bold">{{$t('Wpisz tekst')}}</label>
                                            </div>
                                            <v-text-field
                                                    class="my-text-field"
                                                    solo
                                                    outlined
                                                    v-model="layer.text"
                                                    label="Wpisz tekst"
                                            ></v-text-field>
                                        </v-col>
                                        <v-col cols="12">
                                            <div class="mb-2">
                                                <label class="font-weight-bold">{{$t('Wielkość czcionki')}}</label>
                                            </div>                                        <v-slider
                                                :min="layer.min_font_size" :max="layer.max_font_size"
                                                class="my-0"
                                                color="black"
                                                v-model="layer.fontSize"
                                        ></v-slider>
                                        </v-col>
                                        <v-col cols="12">
                                            <div class="mb-2">
                                                <label class="font-weight-bold">{{$t('Wybierz krój pisma')}}</label>
                                            </div>
                                            <v-select
                                                    outlined
                                                    solo
                                                    class="my-text-field"
                                                    v-model="layer.fontFamily"
                                                    :items="fonts"
                                                    item-text="font_family"
                                                    item-value="font_family"
                                                    label="Wybierz czcionkę"
                                            >
                                                <template v-slot:item="{item, index}">
                                                    <span v-bind:style="{'font-family': item.font_family}">{{item.font_family}}</span>
                                                </template>
                                            </v-select>
                                        </v-col>
                                        <v-col cols="12">
                                            <div class="mb-2">
                                                <label class="font-weight-bold">{{$t('Wyrównanie w pionie')}}</label>
                                            </div>
                                            <v-row>
                                                <v-col cols="4">
                                                    <v-btn v-bind:class="{'inactive-button': layer.align != 'left'}" @click="layer.align = 'left'" class="my-btn-border w-100" tile min-height="56" > <img class="mr-2" :src="$root.base_url+'/icons/left-align.svg'"> {{$t('Do lewej')}}</v-btn>
                                                </v-col>
                                                <v-col cols="4">
                                                    <v-btn v-bind:class="{'inactive-button': layer.align != 'center'}" @click="layer.align = 'center'" class="my-btn-border w-100" tile min-height="56" > <img class="mr-2" :src="$root.base_url+'/icons/center-allign.svg'"> {{$t('Środek')}}</v-btn>
                                                </v-col>
                                                <v-col cols="4">
                                                    <v-btn v-bind:class="{'inactive-button': layer.align != 'right'}" @click="layer.align = 'right'" class="my-btn-border w-100" tile min-height="56" ><img class="mr-2" :src="$root.base_url+'/icons/right align.svg'"> {{$t('Do prawej')}}</v-btn>
                                                </v-col>
                                            </v-row>
                                        </v-col>
                                        <v-col cols="12">
                                            <div class="mb-2">
                                                <label class="font-weight-bold">{{$t('Wyrównanie w poziomie')}}</label>
                                            </div>
                                            <v-row>
                                                <v-col cols="4">
                                                    <v-btn v-bind:class="{'inactive-button': layer.verticalAlign  != 'top'}" @click="layer.verticalAlign = 'top'" class="my-btn-border w-100" tile min-height="56" > <img class="mr-2" :src="$root.base_url+'/icons/top-align.svg'">{{$t('Góra')}}</v-btn>
                                                </v-col>
                                                <v-col cols="4">
                                                    <v-btn v-bind:class="{'inactive-button': layer.verticalAlign  != 'middle'}" @click="layer.verticalAlign = 'middle'" class="my-btn-border w-100" tile min-height="56" > <img class="mr-2" :src="$root.base_url+'/icons/middle-align.svg'">{{$t('Środek')}}</v-btn>
                                                </v-col>
                                                <v-col cols="4">
                                                    <v-btn v-bind:class="{'inactive-button': layer.verticalAlign != 'bottom'}" @click="layer.verticalAlign  = 'bottom'" class="my-btn-border w-100" tile min-height="56" ><img class="mr-2" :src="$root.base_url+'/icons/bottom-align.svg'"> {{$t('Dół')}}</v-btn>
                                                </v-col>
                                            </v-row>
                                        </v-col>
                                        <!--<v-col>
                                            <div class="mb-2">
                                                <label class="font-weight-bold">Wybierz kolor nici</label>
                                            </div>
                                            <v-row>
                                                <v-col lg="1" sm="2" v-for="color in threads" @click="layer.fill = color">
                                                    <v-btn min-width="20" min-height="20" class="my-border" v-bind:style="{'background-color': color}" tile></v-btn>
                                                </v-col>
                                            </v-row>
                                        </v-col>-->
                                        <v-col cols="12">
                                            <div class="mb-2">
                                                <label class="font-weight-bold">{{$t('Wybierz kolor nici')}}</label>
                                            </div>
                                            <div class="row mx-0">
                                                <div v-for="color in threads" class="mr-2">
                                                    <v-btn @click="changeLayerFill(color.value, i)" min-width="20" min-height="20" class="my-border" v-bind:style="{'background-color': color.value}" tile></v-btn>
                                                </div>
                                            </div>
                                        </v-col>
                                    </v-row>
                                </v-expansion-panel-content>
                            </v-expansion-panel>
                        </v-expansion-panels>
                        <v-row>
                            <v-col cols="6">
                                <v-btn @click="nextStep()"class="w-100 mt-2" color="primary" :disabled="!isProject()">{{$t('Przejdź dalej')}}</v-btn>
                            </v-col>
                            <v-col cols="6">
                                <v-btn color="primary" class="w-100 mt-2" @click="saveProject" :loading="saving">{{$t('Zapisz projekt')}}</v-btn>
                            </v-col>
                        </v-row>
                    </div>
                </div>
            </div>
            <div class="col-md-8" v-if="product && product.data">
                <div v-bind:class="{'stageMobile': showMobileSettings, 'stageMobile-active': showStageFixed}" style="position: relative">
                    <div class="stage-loading" v-if="openingDesign">
                        <v-progress-circular indeterminate></v-progress-circular>
                    </div>
                    <stage :rate="rate" :product="product" :texts="texts" @project="catchProject" :get_project="getProjectImageHandler"></stage>
                </div>
            </div>

            <div class="col-md-12">
                <v-btn color="primary" v-if="$root.isMobile" class="w-100" @click="showMobileSettings = !showMobileSettings" tile>{{$t('Pokaż ustawienia')}}</v-btn>

                <v-btn v-if="$root.isMobile" @click="nextStep()"class="w-100 mt-2" color="primary" :disabled="!isProject()">{{$t('Przejdź dalej')}}</v-btn>
                <div class="w-100 my-border text-center py-2 mt-2 font-weight-bold" style="font-size: 1.2rem">
                    {{$t('Cena')}}: {{product.price + product.design_price}}
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    import Stage from './stage';
    import {Upload} from "../../api/upload";
    import {dataURItoBlob} from "../../helpers/helpers";
    import Designs from './designs';
    import {getFonts} from "../../api/fonts";
    import {saveDesign} from "../../api/designs";
    import Slick from 'vue-slick';
    export default {
        props:['product', 'pattern', 'settings'],
        components:{Stage, Designs, Slick},
        data(){
            return{
                openingDesign: false,
                showMobileSettings: false,
                showStageFixed: false,
                rate: 1,
                selectedLayers:[],
                parentLayer: null,
                active: false,
                texts:[],
                fonts:[],
                design_info: null,
                saving: false,
                texture: null,
                blobImage: null,
                projectImage: null,
                getProjectImageHandler: false,
                fixedMenuScrolled: false,
            }
        },
        computed:{
            threads(){
                if(this.settings == null) return [];
                return this.settings.filter(item => {
                    return item.type == 'threads';
                })
            }
        },
        watch:{
          pattern: function(){
              if(this.pattern){
                  this.texts = [];
                  var data = JSON.parse(this.pattern.data);
                  data.forEach((item) => {
                      this.createLayer(item, this.pattern.id);
                  });
                  this.setLayers();
              }
          },
          showMobileSettings: function(){
              if(this.showMobileSettings == true){
                  setTimeout(() => {
                      this.showStageFixed = true;
                  }, 100)
              }else{
                  setTimeout(() => {
                      this.showStageFixed = false;
                  }, 100)
              }
          }
        },
        mounted() {
            if(this.$root.isMobile){
                $('.settings-panel').scroll((event) => {
                    if($('.settings-panel').scrollTop() > 3){
                        this.fixedMenuScrolled = true;
                    }else this.fixedMenuScrolled = false;
                });
            }
            this.$root.$eventBus.$on('final_step', () => {this.nextStep()});
            this.setRate();
            window.addEventListener('resize', () => {
                this.setRate();
            })

            this.getFonts();
            this.$root.$eventBus.$on('stageImage', (image) => {
                this.blobImage = image;
            })
            this.$root.$eventBus.$on('parent_layer', (data) => {
                this.parentLayer = data;
                this.setLayers();
            });
            this.$root.$eventBus.$on('openDesign', (design) => {
                this.openingDesign = true;
                if (typeof design.data == 'string') {
                    /*this.texts = JSON.parse(design.data);*/
                    var parsed = JSON.parse(design.data);
                    if (parsed.texts) {
                        var data = parsed.texts;
                    } else {
                        var data = parsed;
                    }
                    if (typeof this.product.data == 'string') {
                        var product_data = JSON.parse(this.product.data);
                    } else {
                        var product_data = this.product.data;
                    }

                    setTimeout(() => {
                        this.$set(this, 'texts', data);
                        this.openingDesign = false;
                        this.setLayers();
                    }, 1000)

                } else if (typeof design.data == 'object') {
                    setTimeout(() => {
                        this.texts = design.data;
                        this.openingDesign = false;
                    }, 1000)
                }
            });

        },
        methods:{
            reInit(){
                setTimeout(() => {
                    if(typeof this.$refs.slick.next == 'function') this.$refs.slick.next();
                    this.$nextTick(() => {
                        if(typeof this.$refs.slick.reSlick == 'function') this.$refs.slick.reSlick();
                    });
                }, 200)
            },
            setRate(){
                if(window.innerWidth >= 1900) this.rate = 0.7;
                if(window.innerWidth >= 1200 && window.innerWidth < 1900) this.rate = 1;
                if(window.innerWidth >= 0 && window.innerWidth < 1200) this.rate = 2;
            },
            nextStep(){
                this.getProjectImageHandler = true;
                this.$root.$eventBus.$emit('getStageImage');
                this.$root.$eventBus.$emit('')
                setTimeout(() => {
                    this.$emit('done', {image: this.blobImage, projectImage: this.projectImage, design: this.design_info});
                }, 500)
            },
            isProject(){
                var check = false;
                if(this.texts.forEach((item) => {
                    if(item.text != '') check = true;
                }));
                return check;
            },
            getFonts(){
                getFonts().then(response => {
                    this.fonts = response;
                }).catch(e => {this.$eventBus.$emit('add_error', {text: 'Nie udało się pobrać czcionek'})});
            },
            saveProject(){
                return new Promise((resolve, reject) => {
                    this.saving = true;
                    this.$root.$eventBus.$emit('getStageImage');
                    setTimeout(() => {
                        var blob = dataURItoBlob(this.blobImage); //Converts to blob using link above
                        var form = new FormData();
                        form.append("image", blob);
                        Upload(form, 'designs').then(response => {
                            saveDesign({image: response[0], data: this.texts, product_id: this.product.id, pattern_id: this.pattern.id}).then(response => {
                                this.$root.$eventBus.$emit('refreshDesigns');
                                this.saving = false;
                                this.$eventBus.$emit('add_message', {text: 'Projekt zapisany pomyślnie'});
                                resolve(response);
                            }).catch(e => {this.saving = false; reject(e)})
                        }).catch(e => {this.saving = false; reject(e)});
                    }, 1000)
                })

            },
            setLayers(){
                if(this.parentLayer){
                    this.texts.forEach((i) => {i.width = this.parentLayer.width});
                    this.texts.forEach((i, index) => {
                        i.height = (i.setLayer.height / 100) * this.parentLayer.height;
                        if(index == 0){
                            i.y = 0;
                        }else{
                            var val = 0;
                            this.texts.forEach((item_2, index_2) => {
                                if(index_2 < index){
                                    val = val + item_2.height;
                                }
                            })
                            i.y = val;
                        }
                    })
                    this.texts.forEach((item) => {
                        item.max_font_size = Math.round(item.max_font_size / this.rate);
                        item.min_font_size = Math.round(item.min_font_size / this.rate);
                        if(!item.fontSize){
                            item.fontSize = parseInt((item.min_font_size)+parseInt(item.max_font_size)) / 2
                        }
                    })
                }
            },
            createLayer(data, pattern_id){
                this.texts.push({
                    name: data.name,
                    pattern_id: pattern_id,
                    text: 'Example',
                    x: 0,
                    max_font_size: parseInt(data.fontSizeMax),
                    min_font_size: parseInt(data.fontSizeMin),
                    fontSize:parseInt((data.fontSizeMin)+parseInt(data.fontSizeMax)) / 2,
                    height:30,
                    y: 0,
                    fill:'#FFFFFF',
                    align: 'center',
                    verticalAlign: 'top',
                    fontFamily: 'McLaren',
                    padding: 5,
                    setLayer: {height: data.height},
                },)
            },
            catchProject(data){
                this.projectImage = data.project_image;
                this.design_info = data.data;
                this.getProjectImageHandler = false;
            },
            toggleLayer(layer){
                var index = 0;
                index = this.selectedLayers.findIndex(x => x.name == layer.name);
                if(index == -1){
                    this.selectedLayers.push(layer);
                }else{
                    this.selectedLayers.splice(index, 1);
                }

            },
            changeLayerFill(color, key){
                this.texts[key].fill = color;
            }
        }
    }
</script>
<style lang="scss">
    @import "../../../sass/variables";
    .v-slider{
        margin-left: 0px;
        margin-right: 0px;
    }
    .v-expansion-panel{
        .v-expansion-panel-content__wrap{
            padding: 0px !important;
        }
        .v-expansion-panel-header{
            .v-expansion-panel-header__icon{
                .v-icon{
                    color: black !important;
                    font-size: 40px !important;
                }
            }
            padding-left: 0px !important;
        }
        transition: none !important;
        -webkit-transition: none !important;
        will-change: unset !important;
        -webkit-box-shadow: 0px 0px 6px 6px rgba(255,255,255,1) !important;
        -moz-box-shadow: 0px 0px 6px 6px rgba(255,255,255,1) !important;
        box-shadow: 0px 0px 6px 6px rgba(255,255,255,1) !important;
    }
    label{
/*
        text-transform: uppercase !important;
*/
    }
    @media screen and (max-width: 1200px){
        .settings-panel{
            .setting-panel-header-scrolled{
                -webkit-box-shadow: 0px 3px 3px 0px rgba(0,0,0,0.3) !important;
                -moz-box-shadow: 0px 3px 3px 0px rgba(0,0,0,0.3) !important;
                box-shadow: 0px 3px 3px 0px rgba(0,0,0,0.3) !important;
            }
            .setting-panel-header{
                h2{
                    margin-bottom: 0px !important;
                }
                margin-left: -8px;
                margin-right: -8px;
                padding: 8px !important;
                position: sticky;
                top: 0px;
                z-index: 10000;
                transition: all 200ms;
                background-color: white;
            }
            .v-btn{
                span{
                    white-space: nowrap !important;
                    font-size: 0.6rem !important;
                }
            }
            transition: all 200ms;
            padding: 8px;
            padding-top: 0px !important;
            overflow: scroll;
            height: 70vh;
            background-color: white;
            position: fixed;
            bottom: -70vh;
            left: 0px;
            z-index: 5;
            width: 100%;
            .panel-wrapper{
                border: none !important;
            }
        }
        .settings-panel-active{
            bottom: 0px;
        }
        .stageMobile{
            transition: all 200ms ease-in-out;
            background-color: white;
            position: fixed;
            width: 100%;
            top: -50vh;
            left: 0px;
            z-index: 4;
        }
        .stageMobile-active{
            top: -30px;
        }
    }
    .slick-arrow{
        &:before{
            font-size: 15px !important;
            color: #222222 !important;
        }
    }
    .slick-prev{
        left: -13px !important;
    }
    .slick-next{
        right: -13px !important;
    }
    .stage-loading{
        background-color: rgba(255,255,255,0.7);
        padding-top: 100px;
        z-index: 100;
        left: 0px;
        top: 0px;
        display: flex;
        justify-content: center;
        width: 100%;
        position: absolute;
        height: 100%;
    }
</style>
