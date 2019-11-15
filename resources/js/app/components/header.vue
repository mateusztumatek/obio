<template>
    <div>
        <v-app-bar
                app
                color="white"
                clipped-left
                elevate-on-scroll
                scroll-target="#scrolling-techniques-7"
        >
            <v-app-bar-nav-icon v-if="$root.isMobile" @click="$root.toggleSidebar()"></v-app-bar-nav-icon>

            <v-toolbar-title v-if="searchToggle()"><v-img :width="($root.isMobile)? '90': '150'" :src="$root.getSrc('logo.png')" :alt="'logo'"></v-img></v-toolbar-title>

            <v-spacer v-if="searchToggle()"></v-spacer>
            <v-toolbar-items v-if="!$root.isMobile">
                <v-btn text :href="$root.url(item.url)" v-for="item in items"><v-icon class="grey--text mr-2" x-small>{{item.icon}}</v-icon>{{item.name}}</v-btn>
            </v-toolbar-items>
            <v-text-field
                    v-if="isSearch"
                    flat
                    clearable
                    solo-inverted
                    hide-details
                    color="red"
                    prepend-inner-icon="mdi-magnify"
                    label="Search"
            />
            <v-btn v-if="!isSearch" @click="isSearch = true" icon>
                <v-icon>mdi-magnify</v-icon>
            </v-btn>
            <v-btn v-else @click="isSearch = false" icon>
                <v-icon>mdi-close</v-icon>
            </v-btn>
            <v-btn icon v-if="searchToggle()" @click="$root.$eventBus.$emit('toggleDesigns')">
                <v-icon>mdi-bookmark</v-icon>
            </v-btn>

            <v-btn icon v-if="searchToggle()" @click="$root.toggleCart()">
                <v-icon>mdi-dots-vertical</v-icon>
            </v-btn>
        </v-app-bar>
    </div>
</template>
<script>
    export default {
        props: ['items'],
        data(){
            return{
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
    header{
        width: 100vw !important;
        i{
            &:before{
                font-weight: 600 !important;
            }
        }
    }

</style>
