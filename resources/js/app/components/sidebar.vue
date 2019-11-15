<template>
    <v-navigation-drawer
            :value="show"
            @input="emit"
            app
            clipped
    >
        <v-list dense>
            <v-list-item link>
                <v-list-item-action>
                    <v-icon>mdi-view-dashboard</v-icon>
                </v-list-item-action>
                <v-list-item-content>
                    <v-list-item-title>Dashboard</v-list-item-title>
                </v-list-item-content>
            </v-list-item>
            <v-list-item link>
                <v-list-item-action>
                    <v-icon>mdi-settings</v-icon>
                </v-list-item-action>
                <v-list-item-content>
                    <v-list-item-title>Settings</v-list-item-title>
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
