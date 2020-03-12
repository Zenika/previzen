import Vue from "vue";
import Vuex from "vuex";
import axios from "axios";

Vue.use(Vuex, axios);

export default new Vuex.Store({
  state: {
    consultants: [],
    agencies: []
  },
  mutations: {
    GET_CONSULTANTS(state, consultants) {
      state.consultants = consultants;
    },
    GET_AGENCIES(state, agencies) {
      state.agencies = agencies;
    }
  },
  actions: {
    getConsultants({ commit }) {
      axios
        .get("http://localhost:3000/consultants")
        .then(response => {
          let consultants = response.data;
          commit("GET_CONSULTANTS", consultants);
        })
        .catch(error => {
          throw error;
        });
    },
    getAgencies({ commit }) {
      axios
        .get("http://localhost:3000/agencies")
        .then(response => {
          let agencies = response.data;
          commit("GET_AGENCIES", agencies);
        })
        .catch(error => {
          throw error;
        });
    }
  },
  modules: {}
});
