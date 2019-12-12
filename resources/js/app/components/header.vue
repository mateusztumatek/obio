<template>
    <div>
        <v-app-bar
                color="white"
                class="container"
                style="padding: 0px"
                clipped-left
                elevate-on-scroll
                scroll-target="#scrolling-techniques-7"
        >

            <v-app-bar-nav-icon v-if="$root.isMobile" @click="$root.toggleSidebar()"></v-app-bar-nav-icon>

            <v-toolbar-title v-if="searchToggle()"><v-img :width="($root.isMobile)? '90': '150'" :src="$root.getSrc('logo.png')" :alt="'logo'"></v-img></v-toolbar-title>

            <v-spacer v-if="searchToggle()"></v-spacer>
            <v-toolbar-items v-if="!$root.isMobile">
                <v-btn text :href="item.url" v-for="item in items" class="font-weight-bold"><img class="mr-2" :src="$root.base_url+'/icons/'+item.icon">{{item.name}}</v-btn>
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
            <v-btn v-if="!isSearch" @click="isSearch = true" icon>
                <img :src="$root.base_url+'/icons/search.svg'">
            </v-btn>
            <v-btn v-else @click="isSearch = false" icon>
                <img :src="$root.base_url+'/icons/search.svg'">
            </v-btn>
            <v-btn icon v-if="searchToggle()" @click="$root.$eventBus.$emit('toggleDesigns')">
                <img :src="$root.base_url+'/icons/bookmarks.svg'">
            </v-btn>
            <v-badge overlap tile v-if="$root.cart">
                <template v-slot:badge><span>{{$root.cart.items.length}}</span></template>
                <v-btn icon v-if="searchToggle()" @click="$root.toggleCart()">
                    <img :src="$root.base_url+'/icons/cart.svg'">
                </v-btn>
            </v-badge>
        </v-app-bar>
    </div>
</template>
<script>
    export default {
        props: ['items'],
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
    .v-toolbar__content{
        border: $my-border;
    }
    header{
        width: 100vw !important;
        i{
            &:before{
                font-weight: 600 !important;
            }
        }
    }

</style>
