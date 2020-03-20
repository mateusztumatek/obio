<template>
    <div class="col-md-12">
        <div id="page_builder"></div>
        <input type="hidden" name="html" :value="html">
        <input type="hidden" name="css" :value="css">
    </div>
</template>
<script>
    import {getUploadFiles} from "../api/upload";
    import grapesjs from 'grapesjs';
    import 'grapesjs-preset-webpage/dist/grapesjs-preset-webpage.min';
    export default {
        props:['data'],
        data:() => {
            return{
                editor: null,
                uploads: null,
                css: null,
                html: null,
            }
        },
        computed:{
            files(){
                if(this.uploads){
                    var data = [];
                    this.uploads.forEach(item => {
                        if(item.type == 'file'){
                            data.push(this.$root.getSrc(item.path));
                        }
                        if(item.type == 'directory'){
                            item.childrens.forEach(child => {
                                data.push(this.$root.getSrc(child.path));
                            })
                        }
                    })
                    return data;
                }else{
                    return [];
                }
            }
        },
        beforeDestroy(from, to, next){
            this.editor.destroy();
        },
        mounted() {
            if(this.data){
                this.css = this.data.css;
                this.html = this.data.html;
            }
            this.getMedia().then(res => {
                this.initEditor();
            });
            setInterval(() => {
                this.export();
            }, 1000)
        },
        methods:{
            export(){
                if(this.editor){
                    this.html = this.editor.getHtml();
                    this.css = this.editor.getCss();
                }
            },
            getMedia(){
                return new Promise((resolve, reject) => {
                    getUploadFiles({folder: '/pages/'}).then(response => {
                        this.uploads = [];
                        response.forEach(item => {
                            this.uploads.push(item.path)
                        })
                        resolve();
                    }).catch(e => {
                        this.$store.commit('app/ADD_ERROR', {text: 'Nie udało się pobrać plików'});
                    })
                });
            },
            initEditor(){
                setTimeout(() => {
                    var html = this.html;
                    var css = this.css;

                    this.editor = grapesjs.init({
                        assetManager:{
                            assets: this.uploads,
                            uploadName: 'file',
                            multiUpload: false,
                            upload: base_url+'/admin/media/upload',
                            params:{
                                _token: token,
                                upload_path: '/pages/',
                                filename: null,
                                page_builder: true
                            }
                        },
                        container: '#page_builder',
                        fromElement: false,
                        height: '800px',
                        width: 'auto',
                        components: html,
                        style: css,
                        storageManager: {
                            stepsBeforeSave: 1,
                            autoload: false,
                        },
                        plugins:['gjs-preset-webpage']
                    });
                    this.editor.on('storage:start', () => {
                        this.$emit('input', {html: this.editor.getHtml(), css: this.editor.getCss()});
                    })
                },50);
            },
        }
    }
</script>
