<template>
    <v-navigation-drawer
            v-model="$settings.sidebar"
            app
            clipped
    >
        <v-list dense v-if="$settings.navigation">
            <span v-for="child1 in $settings.navigation['header']">
                 <v-list-group v-if="child1.childrens && child1.childrens.length > 0">
                    <template v-slot:activator>
                        <v-list-item-title><span @click.stop="redirect(child1.url)">{{child1.name}}</span></v-list-item-title>
                    </template>
                    <v-list-group sub-group no-action v-for="child2 in child1.childrens">
                        <template v-slot:activator>
                            <v-list-item-title>
                                <span @click.stop="redirect(child2.link)">{{child2.name}}</span>
                            </v-list-item-title>
                        </template>
                        <v-list-group  sub-group no-action v-for="child3 in child2.childrens">
                            <template v-slot:activator>
                                 <v-list-item-title>
                                     <span @click.stop="redirect(child3.link)">{{child3.name}}</span>
                                </v-list-item-title>
                            </template>
                              <v-list-item v-for="child4 in child3.childrens" @click="redirect(child4.link)">
                                {{child4.name}}
                             </v-list-item>
                        </v-list-group>
                    </v-list-group>
                </v-list-group>
                <v-list-item v-else @click="redirect(child1.url)">{{child1.name}}</v-list-item>
            </span>
        </v-list>
    </v-navigation-drawer>
</template>
<script>
    export default {

    }
</script>
