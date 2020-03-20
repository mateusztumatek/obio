import {Login, Logout, UpdateUser, getUserOrders, Register} from "../api/auth";

export default {
    data:() => {
        return{
            loading: false,
            tab: null,
            errors:{},
            rules:{
              required: v => !!v || 'Ten element jest wymagany'
            },
            user:{},
            orders:[],
        }
    },
    watch:{
        tab: function () {
            if(this.tab == '1'){
                this.getOrders();
            }
        }
    },
    methods:{
        login(element){
            if(element.validate()){
                Login(this.user).then(response => {
                    window.location.href = base_url+'/';
                }).catch(e => {
                    this.errors = e.response.data.errors;
                })
            }
        },
        register(element){
            if(element.validate()){
                Register(this.user).then(response => {
                    window.location.href = base_url+'/';
                }).catch(e => {
                    this.errors = e.response.data.errors;
                })
            }
        },
        getOrders(){
            getUserOrders().then(response => {
                this.orders = response;
            })
        },
        logout(){
            Logout().then(response => {
                window.location.href = '/';
            })
        },
        setActiveTab(tab){
            this.tab = tab;
        },
        setUser(user){
            this.user = user;
        },
        updateUser(form){
            if(form.validate()){
                this.loading = true;
                UpdateUser(this.user, this.user.id).then(response => {
                    this.loading = false;
                }).catch(e => {
                    this.errors = e.response.data.errors;
                    this.loading = false;
                })
            }
        }
    }
}
