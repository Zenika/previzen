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
    SET_CONSULTANTS(state, consultants) {
      state.consultants = consultants;
    },
    SET_AGENCIES(state, agencies) {
      state.agencies = agencies;
    },
    NEW_CONSULTANT(state, consultant) {
      state.consultants.unshift(consultant);
    }
  },
  actions: {
    async getConsultants({ commit }) {
      await axios
        .get("http://localhost:3000/consultants")
        .then(response => {
          let consultants = response.data;
          commit("SET_CONSULTANTS", consultants);
        })
        .catch(error => {
          throw error;
        });
    },
    async getAgencies({ commit }) {
      await axios
        .get("http://localhost:3000/agencies")
        .then(response => {
          let agencies = response.data;
          commit("SET_AGENCIES", agencies);
        })
        .catch(error => {
          throw error;
        });
    },
    async createConsultant({ commit }, consultant) {
      const response = await axios
        .post("http://localhost:3000/consultants", consultant)
        commit("NEW_CONSULTANT", response.data);
    }
  },
  modules: {}
});
