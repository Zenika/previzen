import axios from "axios";
const agencies = {
  namespaced: true,

  state: {
    agencies: []
  },

  mutations: {
    SET_AGENCIES: (state, agency) => {
      state.agencies = agency
    }
  },

  actions: {
    GET_AGENCIES: async ({ commit }) => {
      await axios
        .get('http://localhost:3000/agencies')
        .then(response => {
          let agencies = response.data;
          commit("SET_AGENCIES", agencies)
        })
        .catch(error => {
          throw error
        })
    }
  }
}

export default agencies;
