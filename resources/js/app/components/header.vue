<template>
    <div>
        <v-app-bar
                color="transparent"
                class="container my-nav"
                style="padding: 0px"
                clipped-left
                elevate-on-scroll
                height="80px"
                scroll-target="#scrolling-techniques-7"
        >
            <v-app-bar-nav-icon v-if="$root.isMobile" @click="$settings.toggleSidebar()"></v-app-bar-nav-icon>
            <v-toolbar-title v-if="searchToggle()"><v-img :width="($root.isMobile)? '180': '300'" :src="logo" :alt="'logo'"></v-img></v-toolbar-title>

            <v-spacer v-if="searchToggle()"></v-spacer>
            <v-toolbar-items v-if="!$root.isMobile">
                <v-menu min-width="100%" offset-y open-on-hover v-for="item in items">
                    <template v-slot:activator="{ on }">
                        <v-btn v-if="item.childrens && item.childrens.length > 0" v-on="on" @click="redirect(item.url)" text class="font-weight-bold"><img v-if="item.icon" class="mr-2" :src="$root.base_url+'/icons/'+item.icon">{{item.name}}</v-btn>
                        <v-btn v-else @click="redirect(item.url)" text class="font-weight-bold"><img v-if="item.icon" class="mr-2" :src="$root.base_url+'/icons/'+item.icon">{{item.name}}</v-btn>
                    </template>
                    <div class="container nav-categories" style="padding: 20px 0px; margin-top: -20px">
                       <v-card class="elevation-5">
                           <v-card-text>
                               <div class="row">
                                   <div class="col-md-4 d-flex">
                                       <v-list style="width: 99%">
                                           <v-list-item class="main-item" @click="redirect(child1.link)" three-link @mouseover="$settings.setActiveCategory(child1)" v-for="child1 in item.childrens">
                                               {{child1.name}}
                                           </v-list-item>
                                       </v-list>
                                   </div>
                                   <div class="col-md-5">
                                       <v-list v-if="$settings.activeCategory">
                                           <span v-for="child2 in $settings.activeCategory.childrens" >
                                                 <v-list-item class="sub-item" @click="redirect(child2.link)" three-link>
                                                      <v-list-item-content>
                                                          <v-list-item-title>{{child2.name}}</v-list-item-title>
                                                     </v-list-item-content>
                                                </v-list-item>
                                                <v-list-item @click="redirect(child3.link)" v-for="child3 in child2.childrens" class="ml-3 sub-item">
                                                    {{child3.name}}
                                                </v-list-item>
                                           </span>
                                       </v-list>
                                   </div>
                               </div>
                           </v-card-text>
                       </v-card>
                    </div>
                </v-menu>
            </v-toolbar-items>
            <v-text-field
                    v-if="isSearch"
                    flat
                    clearable
                    solo-inverted
                    hide-details
                    color="red"
                    prepend-inner-icon="mdi-magnify"
                    :label="$t('Szukaj')"
            />
            <v-menu offset-y>
                <template v-slot:activator="{on}">
                    <v-btn v-on="on" icon><v-avatar v-if="user" size="40"><v-img :src="$root.getSrc(user.avatar)"></v-img></v-avatar><span v-else><v-icon>mdi-account</v-icon></span></v-btn>
                </template>
                <v-list>
                    <span v-if="user" >
                         <v-list-item :href="$root.base_url+'/user'">
                             Twoje konto
                         </v-list-item>
                         <v-list-item @click="$user.logout()">
                              Wyloguj się
                         </v-list-item>
                    </span>
                    <span v-else>
                         <v-list-item v-if="!user" :href="$root.base_url+'/login'">
                          Zaloguj się
                         </v-list-item>
                         <v-list-item v-if="!user" :href="$root.base_url+'/register'">
                           Zarejestruj się
                         </v-list-item>
                    </span>
                </v-list>
            </v-menu>
            <v-badge class="cart-trigger" overlap tile v-if="$cart.cart">
                <template v-slot:badge><span>{{$cart.cart.items.length}}</span></template>
                <v-btn icon color="black" v-if="searchToggle()" @click="$cart.toggleCart()">
                    <v-icon>mdi-cart</v-icon>
                </v-btn>
            </v-badge>
        </v-app-bar>
    </div>
</template>
<script>
    export default {
        props: ['items', 'settings', 'user'],
        computed:{
            logo(){
                if(this.settings){
                    var tmp = null;
                    this.settings.forEach(item => {
                        if(item.key == 'site.logo') tmp = item;
                    })
                    if(tmp){
                        return this.$root.getSrc(tmp.value);
                    }
                }
                return null;
            }
        },
        data(){
            return{
                fab: false,
                isSearch: false,

                collapseOnScroll: true,
            }
        },
        methods:{
            searchToggle(){
                return !this.isSearch || !this.$root.isMobile;
            }
        }
    }
</script>
<style lang="scss">
    @import "../../../sass/variables";
    header{
        width: 100vw !important;
        .v-toolbar__content{
            padding-left: 0px;
            padding-right: 0px;
        }
        i{
            &:before{
                font-weight: 600 !important;
            }
        }
    }
    .cart-trigger{
        .v-badge__badge{
            top: 3%;
            right: 10%;
        }
    }

</style>
