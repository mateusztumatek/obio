<div style="height: 100vh; width: 40%" class="cart-slider" v-if="$cart.cart && $cart.cartShow && $vuetify.breakpoint.lgAndUp">
    <h3 v-if="$cart.cart.proposed_products.length > 0" class="headline white--text mb-5">Proponowane produkty:</h3>
        <v-carousel
                v-if="$cart.cart.proposed_products.length > 0"
                class="elevation-8 my-border-2"
                cycle
                height="520"
                hide-delimiters
                show-arrows-on-hover>
            <v-carousel-item v-for="item in $cart.cart.proposed_products">
                <div>
                    <v-img height="400px" :src="$root.getSrc(item.main_image)"></v-img>
                    <div class="pa-4 white">
                        <div class="row mx-0 justify-space-between align-center">
                            <div>
                                <h4 class="headline">
                                    @{{item.name}}
                                </h4>
                                <div class="price">@{{item.calculated | toCurrency}}zł</div>
                            </div>
                            <v-btn class="mt-3" outlined rounded color="black" :href="item.link">Zobacz produkt</v-btn>
                        </div>
                    </div>
                </div>
            </v-carousel-item>
        </v-carousel>
</div>
