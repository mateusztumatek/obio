<template>
    <div>
        <div id="konva-wrapper" style="display:flex; justify-content: center">
            <v-stage @mousedown="handleStageMouseDown" @mouseup="updateElements()" ref="stage" :config="configKonva">
                <v-layer ref="layer" >
                    <v-image key="image" v-if="configImage.src" :config="configImage"/>
                    <v-rect ref="rect" @dragmove="dragmove" key="rect" :config="tools[tools.findIndex(x => x.name == 'rect')]" v-if="tool == 'rect'"></v-rect>
                    <v-transformer ref="transformer" />
                </v-layer>
            </v-stage>
        </div>
        <div class="my-2" v-if="tool && tools[tools.findIndex(x => x.name == tool)].edited">
            <v-btn color='primary' style="width: 100%" @click="save()">Zapisz</v-btn>
        </div>
    </div>
</template>
<script>
    export default {
        props:['image', 'product'],
        data() {
            return {
                tool: '',
                tools:[
                    {
                        x: 50,
                        edited: false,
                        y: 50,
                        width: 300,
                        height: 300,
                        fill: 'rgba(255,0,0,0.3)',
                        name: 'rect',
                        stroke:'red',
                        draggable: true
                    }
                ],
                selectedShapeName: null,
                configKonva: {
                    width: 600,
                    height: 600
                },
                configImage: {
                    width: 100,
                    height: 100,
                    src: null,
                    image: null
                },
            };
        },
        mounted(){
          this.setImage(this.image);
          this.selectRect();
          if(this.product && this.product.data){
              var data = JSON.parse(this.product.data);
              this.configKonva = data.configKonva;
              this.tool = data.tool;
              this.configImage.src = data.configImage.src;
              this.setImage(this.configImage.src);
              this.tools = data.tools;
          }
        },
        methods:{
            selectRect(){
                this.tool = 'rect';
            },
            handleStageMouseDown(e) {
                // clicked on stage - cler selection
                if (e.target === e.target.getStage()) {
                    this.selectedShapeName = null;
                    this.updateTransformer();
                    return;
                }

                // clicked on transformer - do nothing
                const clickedOnTransformer =
                    e.target.getParent().className === 'Transformer';
                if (clickedOnTransformer) {
                    return;
                }
                const name = e.target.name();
                if(name == 'rect') this.tools[this.tools.findIndex(x => x.name == this.tool)].edited = true;
                const rect = this.tools.find(r => r.name === name);
                if (rect) {
                    this.selectedShapeName = name;
                } else {
                    this.selectedShapeName = null;
                }
                this.updateTransformer();
            },
            updateElements(){
                const stage = this.$refs.stage.getStage();
                const { selectedShapeName } = this;
                const selectedNode = stage.findOne('.' + selectedShapeName);
                console.log(selectedNode);
                if(typeof selectedNode != 'undefined'){
                    this.tools[this.tools.findIndex(i => i.name == this.tool)]= selectedNode.attrs;
                }
            },
            updateTransformer() {
                // here we need to manually attach or detach Transformer node
                const transformerNode = this.$refs.transformer.getStage();
                const stage = transformerNode.getStage();
                const { selectedShapeName } = this;

                const selectedNode = stage.findOne('.' + selectedShapeName);
                // do nothing if selected node is already attached
                if (selectedNode === transformerNode.node()) {
                    return;
                }

                if (selectedNode) {
                    // attach to another node
                    transformerNode.attachTo(selectedNode);
                } else {
                    // remove transformer
                    transformerNode.detach();
                }
                transformerNode.getLayer().batchDraw();
            },
            save(){
                axios.post(this.$root.base_url+'/products/'+this.product.id+'/bounds', {data: {tool: this.tool, tools: this.tools, configKonva: this.configKonva, configImage: this.configImage}}).then(response => {
                    this.$eventBus.$emit('add_message', {text: 'Zapisano pomyślnie'});
                }).catch(e => {
                    Vue.$set(this.tools[this.tools.findIndex(x => x.name == 'rect')], 'x', 50);
                    Vue.$set(this.tools[this.tools.findIndex(x => x.name == 'rect')], 'y', 50);
                    this.$eventBus.$emit('add_error', {text: e.response.data.message})
                })
            },
            dragmove(event){
                var temp_width = event.currentTarget.attrs.width * event.currentTarget.attrs.scaleX;
                var temp_height = event.currentTarget.attrs.height * event.currentTarget.attrs.scaleY;
                if(event.currentTarget.attrs.x < 0){
                    this.$set(this.tools[this.tools.findIndex(x => x.name == 'rect')], 'x', 0);
                }
                if(event.currentTarget.attrs.x+temp_width > this.configKonva.width){
                    this.$set(this.tools[this.tools.findIndex(x => x.name == 'rect')], 'x', this.configKonva.width - temp_width);
                }
                if(event.currentTarget.attrs.y < 0){
                    this.$set(this.tools[this.tools.findIndex(x => x.name == 'rect')], 'y', 0);
                }
                if(event.currentTarget.attrs.y+temp_height > this.configKonva.height){
                    this.$set(this.tools[this.tools.findIndex(x => x.name == 'rect')], 'y', this.configKonva.height - temp_height);
                }
            },
            setImage(src){
                const img = new window.Image();
                img.src = src;
                let v = this;
                img.onload = function(){
                    // set image only when it is loaded
                    v.configImage.src = src;
                    v.configImage.image = img;
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
    };

</script>
