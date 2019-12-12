import Vue from 'vue';
import VueI18n from 'vue-i18n';
Vue.use(VueI18n);
console.log('TRANSLATIONS', translations);
export const i18n = new VueI18n({
    locale: 'pl',
    fallbackLocale: 'pl',
    messages: {pl: translations}
})
