<template>
    <v-navigation-drawer
            :value="show"
            @input="emit"
            app
            clipped
    >
        <v-list dense>
            <v-list-item :href="item.url" link v-for="item in items">
                <v-list-item-action>
                    <img class="mr-2" :src="$root.base_url+'/icons/'+item.icon">
                </v-list-item-action>
                <v-list-item-content>
                    <v-list-item-title>{{item.name}}</v-list-item-title>
                </v-list-item-content>
            </v-list-item>
        </v-list>
    </v-navigation-drawer>
</template>
<script>
    export default {
        props:['items', 'show_sidebar'],
        data(){
          return{
              show:false,
          }
        },
        watch:{
            show_sidebar: function(){
                this.show = this.show_sidebar;
            }
        },
        mounted() {
          this.show = this.show_sidebar;
        },
        methods:{
            emit(value){
                if(!value){
                    this.$root.toggleSidebar(false);
                }
            }
        }
    }
</script>
