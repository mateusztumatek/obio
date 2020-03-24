<template>
    <div class="upload-progress">
            <v-progress-linear
                    v-if="uploading"
                    color="light-blue"
                    height="10"
                    :value="value"
                    striped
            ></v-progress-linear>
    </div>
</template>
<script>
    export default {
        data:() => {
            return{
                uploading: false,
                value: 0
            }
        },
        mounted() {
            this.$root.$eventBus.$on('startUploading', () => {
                this.uploading = true;
                this.value = 0;
            })
            this.$root.$eventBus.$on('uploadingProgress', (value) => {
                this.value = value;
                if(this.value == 100) this.uploading = false;
            })
            this.$root.$eventBus.$on('stopUploading', () => {
                this.uploading = false;
            })
        }
    }
</script>
<style lang="scss">
    .upload-progress{
        width: 100%;
    }
</style>
