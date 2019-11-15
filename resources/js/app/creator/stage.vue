<template>
    <div v-if="configKonva">
        <div id="konva-wrapper" style="display:flex; justify-content: center">
            <v-stage ref="stage" :config="configKonva">
                <v-layer ref="layer">
                    <v-image key="image" :config="configImage"/>
                </v-layer>
                <v-layer :key="'first'" ref="project" :config="temp">
<!--
                    <v-rect :config="{x: 0, y:0, width:temp.width, height:temp.height, fill: 'red'}"></v-rect>
-->
                    <v-text :ref="text.name" v-for="(text, i) in texts" :config="text"></v-text>
                </v-layer>

             <!--   <v-layer :key="'layer'+i" v-for="(layer, i) in layers">
                </v-layer>-->
            </v-stage>
        </div>
    </div>
</template>
<script>
    import {colorToFilter} from "../../utilies/FilterComputed";

    export default {
        props:['product', 'texts', 'get_project'],
        data(){
            return{
                temp:{
                  x:150,
                  y:150,
                  fill:'black',
                  width:300,
                  height:300
                },
                configKonva:null,
                configImage:null
            }
        },
        watch:{
            texts:{
                handler(val){
                   /* var imageObj = new Image();
                    /!*imageObj.style.filter = colorToFilter('#FF0000').filter;*!/
                    imageObj.onload = () => {
                        this.texts.forEach((item) => {
                            var shape = this.$refs[item.name][0].getNode();
                            shape.fillPatternImage(imageObj);
                            shape.fillPatternRepeat('repeat');
                            shape.fillPriority('pattern');
                            this.$refs.stage.getStage().batchDraw();
                        })
                    };
                    imageObj.src = this.$root.getSrc('texture.png');*/
                },
                deep: true
            },
            get_project: function(){
                if(this.get_project){
                    this.$emit('project', {project_image: this.$refs.project.getNode().toDataURL(), data:{configKonva: this.configKonva, layer:this.temp, texts:this.texts}});
                }
            }
        },
        mounted() {
            if(this.product.data){
                var data = JSON.parse(this.product.data);
                this.configKonva = data.configKonva;
                this.configImage = {};
                this.configImage.src = data.configImage.src;
                this.setImage(this.configImage.src);
                var width = this.calculate(data.tools[0]).width;
                var height = this.calculate(data.tools[0]).height;
                this.temp = data.tools[0];
                this.temp.width = width;
                this.temp.height= height;
                this.temp.scaleX = 1;
                this.temp.scaleY = 1;
                this.temp.draggable = false;
                if(this.$root.checkMobile()){
                    var rate = this.configKonva.width / 300;
                    this.configKonva.width = this.configKonva.width / rate;
                    this.configKonva.height = this.configKonva.height / rate;
                    this.configImage.width = this.configKonva.width / rate;
                    this.configImage.height = this.configKonva.height / rate;
                    this.temp.width = this.temp.width / rate;
                    this.temp.height = this.temp.height / rate;
                    this.temp.x = this.temp.x/ rate;
                    this.temp.y = this.temp.y/ rate;
                }
            }
            setTimeout(() => {
                this.$root.$eventBus.$emit('parent_layer', this.temp);
            },50);
            this.$root.$eventBus.$on('getStageImage', () => {
                this.$root.$eventBus.$emit('stageImage', this.stageToImage());
            })
        },
        methods:{

            stageToImage(){
                this.selectedObject = null;
                this.selectedShapeName = '';
                var dataURLFront = this.$refs.stage.getStage().toDataURL({pixelRatio: 1});
                return dataURLFront;
            },
            calculate(data){
                return{width: data.width*data.scaleX, height: data.height*data.scaleY};
            },
            setImage(src){
                const img = new window.Image();
                img.src = src;
                let v = this;
                img.onload = function(){
                    // set image only when it is loaded
                    v.configImage.src = src;
                    v.$set(v.configImage, 'image', img);
                    if(this.width >= this.height){
                        let ratio = this.width / v.configKonva.width;
                        v.configImage.width = this.width / ratio;
                        v.configImage.height = this.height / ratio;
                    }else{
                        let ratio = this.height / v.configKonva.height;
                        v.configImage.height = this.height / ratio;
                        v.configImage.width = this.width / ratio;
                    }
                };
            }
        }
    }
</script>
