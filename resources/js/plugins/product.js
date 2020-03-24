import {Upload} from "../api/upload";
import {addToCart} from "../api/cart";

export default {
    data:() => {
        return{
            product: {},
            selectedImage: null,
            attributes:[],
            designs:[],
            quantity:1,
            selectedAttributes:{}
        }
    },
    watch:{
      selectedAttributes:{
          deep:true,
          handler: function () {
          }
      }
    },
    computed:{
        acceptSlug(){
            if(!this.product || !this.product.formats) return '';
            return this.product.formats.join(',');
        },
        calcPrice(){
            var tmp = 0;
            for (var i in this.selectedAttributes){
                if(this.selectedAttributes[i].additional_price){
                    tmp = tmp + (this.selectedAttributes[i].additional_price * this.quantity);
                }
            }
            return this.product.calculated * this.quantity + tmp;
        }
    },
    methods:{
        addToCart(){
              addToCart({...this.product, product_id: this.product.id, quantity: this.quantity, designs: this.designs, attributes: this.selectedAttributes}).then(response => {
                this.$cart.setCart(response);
                this.$cart.toggleCart(true);
              }).catch(e => {
                  this.$root.$eventBus.$emit('add_error', {text: 'Nie udało się dodac produktu do koszyka', type: 'error'});
              })
        },
        uploadProject(event){
            var formData = new FormData();
            formData.append('file', event.target.files[0]);
            formData.append('details', true);
            Upload(formData, 'designs').then(response => {
                this.designs.push({has_comment: false, ...response[0]});
                Vue.prototype.$eventBus.$emit('add_message', {text: 'Wgrano projekt poprwanie', type: 'success'});
            }).catch(e => {
                Vue.prototype.$eventBus.$emit('add_error', {text: 'Nie udało się wgrać projektu', type: 'error'});
            })
        },
        setProduct(product){
            this.product = product;
        },
        setAttributes(attributes){
          this.attributes = attributes;
          for(var i in this.attributes){
              this.attributes[i].forEach(item => {
                  if(item.default){
                      this.$set(this.selectedAttributes, i, item);
                  }
              })
          }
        }
    }
}
