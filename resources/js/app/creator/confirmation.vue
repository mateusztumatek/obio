<template>
    <div>
        <v-row>
            <v-col lg="6" md="6" sm="12" class="text-center">
                <div class="image-holder">
                    <div class="content">
                        <v-img v-if="image" :src="image" tile width="100%"></v-img>
                        <div class="project" v-bind:class="{'lightProject': isLightProject}">
                            <v-img v-if="project" :src="project" tile max-width="30%"></v-img>
                        </div>
                    </div>
                </div>
            </v-col>
            <v-col lg="6" md="6" sm="12">
                <h2>{{product.name}}</h2>
                <p v-html="product.desc"></p>
                <number-input v-model="quantity"></number-input>
                <v-btn @click="addToCart()" large ><v-icon>mdi-cart</v-icon> Dodaj do koszyka</v-btn>
            </v-col>
        </v-row>
    </div>
</template>
<script>
    import {addToCart} from "../../api/cart";
    import {getImageLightness} from "../../utilies/Brightness";
    import {dataURItoBlob} from "../../helpers/helpers";
    import {Upload} from "../../api/upload";

    export default {
        props:['image', 'project', 'product', 'design'],
        data(){
            return{
                isLightProject: false,
                quantity: 1,
            }
        },
        watch:{
            project: function(){
                if(this.project != null){
                    getImageLightness(this.project, (brightness) => {
                        if(brightness >= 3){
                            this.isLightProject = true;
                        }else{
                            this.isLightProject = false;
                        }
                    })
                }
            }
        },
        methods:{
            addToCart(){
                var blob = dataURItoBlob(this.image); //Converts to blob using link above
                var form = new FormData();
                form.append("image", blob);
                Upload(form, 'designs_previews').then(response => {
                    if(response[0]){
                        addToCart({product_id: this.product.id, design: this.design, quantity: this.quantity, image: response[0]}).then(response => {
                            this.$eventBus.$emit('set_cart', response);
                            this.$eventBus.$emit('add_message', {text: 'Poprawnie dodano przedmiot do koszyka'});
                        })
                    }
                })
            }
        }
    }
</script>
<style lang="scss" scoped>
    .lightProject{
        background-color: black;
    }
    .image-holder{
        .content{
            position: relative;
        }
        width: 60%;
        margin: auto;
        img{
            width: 100%;
        }
        .project{
            position: absolute;
            width: 100%;
            left: 0px;
            top: 0px;
            opacity: 0;
        }
    }
</style>
