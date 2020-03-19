import Vue from "vue";
import Vuex from "vuex";
import agencies from "./modules/agencies";
import consultants from "./modules/consultants";

Vue.use(Vuex);

export default new Vuex.Store({
  modules: {
    consultants,
    agencies
  }
});
