import Vue from 'vue';
import Vuetify from 'vuetify';

Vue.use(Vuetify)


const opts = {
    theme: {
        themes: {
            light: {
                primary: '#08FF97', // #E53935
                secondary: '#E4E6E9', // #E4E6E9
                accent: '#FC3B3C', // #3F51B5
            },
        },
    },
}

export default new Vuetify(opts)
