export default {
    data:() => {
        return{
            allTabs:['Produkt', 'Kategorie', 'Znakowanie'],
            product:{
                tab: 'Produkt',
            }
        }
    },
    methods:{
        setTab(tab){
            this.product.tab = tab;
        }
    }
}
