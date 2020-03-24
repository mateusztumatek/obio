export default {
    data:() => {
        return{
            all_colors: 'all_colors',
            groups:[],
        }
    },
    methods:{
        setAllColors(data){
            this.all_colors = data;
        }
    }
}
