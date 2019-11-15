<template>
    <div class="text-center">
      <img v-if="image" :src="image" style="max-width: 500px">
        <div style="width:75%; margin: auto" id="konva-wrapper">
            <v-stage :config="configKonva">
                <v-layer>
                    <v-circle :config="configCircle"></v-circle>
                </v-layer>
            </v-stage>
        </div>
    </div>
</template>
<script>
    export default {
        props: ['src_image'],
        data(){
            return{
                image: null,
                configKonva: {
                    width: 200,
                    height: 200
                },
                configCircle: {
                    x: 100,
                    y: 100,
                    radius: 70,
                    fill: "red",
                    stroke: "black",
                    strokeWidth: 4
                }
            }
        },
        mounted() {
            this.configKonva.width = '600';
            this.configKonva.height = '600';
            $('input[name = "main_image"]').change((event) => {
                this.setImage(event);
            });
            if(this.src_image){
                this.image = this.$root.getSrc(this.src_image);
                this.initImages();
            }
            this.$refs.layer.getNode().batchDraw();
        },
        methods:{
            setImage(event){
                var file = event.target.files[0];
                var reader  = new FileReader();
                reader.addEventListener('load', () => {
                    this.image = reader.result;
                })
                if (file) {
                    reader.readAsDataURL(file);
                }
            },
            initImages(){
                let v = this;
                var img = new Image();
                img.src = this.image;
                img.onload = function () {
                    v.configImage.image = img;
                }

            },
        }
    }
</script>
