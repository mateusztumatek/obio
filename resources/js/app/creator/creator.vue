<template>
    <div v-if="product">
        <div class="row">
            <div class="col-md-5">
                <h2 class="first-font">Ustawienia</h2>
                <v-expansion-panels>
                    <v-expansion-panel
                            v-for="(layer ,i) in texts"
                            :key="i"
                    >
                        <v-expansion-panel-header>Warstwa {{i + 1}}</v-expansion-panel-header>
                        <v-expansion-panel-content>
                            <v-row>
                                <v-col cols="12">
                                    <v-text-field
                                            v-model="layer.text"
                                            label="Wpisz tekst"
                                    ></v-text-field>
                                </v-col>
                                <v-col cols="12">
                                    <v-subheader class="pl-0">Wielkość czcionki</v-subheader>
                                    <v-slider
                                            :min="layer.min_font_size" :max="layer.max_font_size"
                                            class="my-0"
                                            v-model="layer.fontSize"
                                    ></v-slider>
                                </v-col>
                                <v-col cols="12">
                                    <v-select
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
                                    <v-select
                                            v-model="layer.align"
                                            :items="[{text: 'center'}, {text: 'left'}, {text: 'right'}]"
                                            item-text="text"
                                            item-value="text"
                                            label="Wybierz wyrównanie w poziomie"
                                    >
                                    </v-select>
                                </v-col>
                                <v-col cols="12">
                                    <v-select
                                            v-model="layer.verticalAlign"
                                            :items="[{text: 'top'}, {text: 'middle'}, {text: 'bottom'}]"
                                            item-text="text"
                                            item-value="text"
                                            label="Wybierz wyrównanie w pionie"
                                    >
                                    </v-select>
                                </v-col>
                                <v-col>
                                    <v-color-picker v-model="layer.fill"></v-color-picker>
                                </v-col>
                            </v-row>
                        </v-expansion-panel-content>
                    </v-expansion-panel>
                </v-expansion-panels>
                <v-btn @click="nextStep()" class="w-100 mt-2" color="primary" :disabled="!isProject()">Przejdź dalej</v-btn>
            </div>
            <div class="col-md-7" v-if="product && product.data">
                <stage :product="product" :texts="texts" @project="catchProject" :get_project="getProjectImageHandler"></stage>
                <div class="col-md-12 text-center">
                    <v-btn color="primary" @click="saveProject" :loading="saving">Zapisz projekt</v-btn>
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

    export default {
        props:['product', 'pattern'],
        components:{Stage, Designs},
        data(){
            return{
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
            }
        },
        watch:{
          pattern: function(){
              if(this.pattern){
                  this.texts = [];
                  var data = JSON.parse(this.pattern.data);
                  data.forEach((item) => {
                     this.createLayer(item);
                  });
                  this.setLayers();
              }
          }
        },
        mounted() {
            this.getFonts();
            this.$root.$eventBus.$on('stageImage', (image) => {
                this.blobImage = image;
            })
            this.$root.$eventBus.$on('parent_layer', (data) => {
                this.parentLayer = data;
                this.setLayers();
            });
            this.$root.$eventBus.$on('openDesign', (design) => {
                if(typeof design.data == 'string'){
                    this.texts = JSON.parse(design.data);
                }else if(typeof design.data == 'object'){
                    this.texts = design.data;
                }
            })
        },
        methods:{
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
                            saveDesign({image: response[0], data: this.texts, product_id: this.product.id}).then(response => {
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
            },
            createLayer(data){
                this.texts.push({
                    name: data.name,
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
            }
        }
    }
</script>
<style lang="scss">
    .v-slider{
        margin-left: 0px;
        margin-right: 0px;
    }
</style>
