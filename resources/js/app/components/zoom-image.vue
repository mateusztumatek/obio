<template>
    <v-dialog v-model="$settings.showZoom">
        <v-btn fab fixed right top color="primary" @click="$settings.showZoom = false"><v-icon>mdi-close</v-icon></v-btn>
        <div class="w-100 d-flex justify-center align-center">
           <v-img height="100vh" contain :src="$settings.zoomImage"></v-img>
        </div>
    </v-dialog>
</template>
<script>

</script>
