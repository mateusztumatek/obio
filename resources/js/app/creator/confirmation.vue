<template>
    <div>
        <v-row v-if="product">
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
                <p class="text-center text-muted" v-html="$root.getSetting('shop.creator_cart')"></p>
                <p class="headline text-muted">{{$t('Cena')}}: <span class="font-weight-bold">{{(product.price + product.design_price) * quantity | toCurrency()}}</span></p>
                <product-actions :design="designImage" :showDesignerButton="false" :product="product"></product-actions>
<!--
                <v-btn @click="addToCart()" color="primary" large ><v-icon>mdi-cart</v-icon>{{$t('Dodaj do koszyka')}}</v-btn>
-->
            </v-col>
        </v-row>
    </div>
</template>
<script>
    import {addToCart} from "../../api/cart";
    import {getImageLightness} from "../../utilies/Brightness";
    import {dataURItoBlob} from "../../helpers/helpers";
    import {Upload} from "../../api/upload";
    import ProductActions from '../components/products/actions';
    export default {
        props:['image', 'project', 'product', 'design', 'pattern'],
        components:{ProductActions},
        data(){
            return{
                isLightProject: false,
                quantity: 1,
            }
        },
        computed:{
          designImage(){
              if(this.design){
                  var des = this.design;
                  des.image = this.image;
                  des.pattern_id = this.pattern.id;
              }else{
                  var des = null;
              }
              return des;
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
                        addToCart({product_id: this.product.id, design: this.design, quantity: this.quantity, image: response[0], pattern_id: this.pattern.id}).then(response => {
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
