import Vue from 'vue';
import Vuetify from 'vuetify';

Vue.use(Vuetify)


const opts = {
    theme: {
        themes: {
            light: {
                primary: '#ECD9B3', // #E53935
                secondary: '#D0DBD5', // #E4E6E9
                accent: '#FC3B3C', // #3F51B5
            },
        },
    },
}

export default new Vuetify(opts)
