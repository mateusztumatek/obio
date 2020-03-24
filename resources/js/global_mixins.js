export default {
    data:() => {
        return{
            validation:{
                required: v => !!v || 'Ten element jest wymagany'
            }
        }
    },
    methods:{
        redirect(url){
            window.location.href = url;
        },
    }
}
