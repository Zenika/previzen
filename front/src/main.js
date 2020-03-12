import Vue from 'vue'
import App from './App.vue'
import axios from 'axios';
import store from './store';
import vuetify from './plugins/vuetify';

Vue.config.productionTip = false
Vue.prototype.$http = axios

new Vue({
  store,
  vuetify,
  render: h => h(App)
}).$mount('#app')
