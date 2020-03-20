import request from "../utilies/Request";

export default {
    data:() => {
        return{
            settings:null,
            navigation: null,
            activeCategory: null,
            sidebar: false,
        }
    },
    methods:{
        setActiveCategory(cat){
            this.activeCategory = cat;
        },
        toggleSidebar(){
            this.sidebar = !this.sidebar;
            console.log(this.sidebar);
        },
        getSettings(){
            request({
                url: '/settings',
                method: 'get',
            }).then(response => {
                this.settings = response.settings;
                this.navigation = response.navigation;
                this.navigation.header.forEach(item => {
                    if(item.childrens){
                        this.activeCategory = item.childrens[0];
                    }
                })
            })
        },
        getSetting(key){
            if(this.settings){
                return this.settings.find(x => x.key == key).value;
            }
        },
    }
}
