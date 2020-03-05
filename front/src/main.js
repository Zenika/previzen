import Vue from 'vue'
import App from './App.vue'
import axios from 'axios';
import vuetify from './plugins/vuetify';
import MultiFiltersPlugin from './plugins/MultiFilters'

Vue.config.productionTip = false

Vue.prototype.$http = axios

Vue.use(MultiFiltersPlugin);


new Vue({
  vuetify,
  render: h => h(App)
}).$mount('#app')
