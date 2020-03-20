export default {
    data:() => {
        return{

        }
    },
    methods:{
        storage(path){
            return base_url+'/storage/'+path;
        }
    }
}
