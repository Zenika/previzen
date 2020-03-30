import axios from "axios";
const agencies = {
  namespaced: true,

  state: {
    agencies: []
  },

  mutations: {
    SET_AGENCIES: (state, agency) => {
      state.agencies = agency
    },
    ADD_AGENCY: (state, agency) => {
      state.agencies.push(agency);
    },
    EDIT_AGENCY: (state, item) => {
      state.agencies.item = item
    },
    REMOVE_AGENCY: (state, id) => {
      const index = state.agencies
      .map(agencies => agencies.idAgency)
      .indexOf(id);
      state.agencies.splice(index, 1);
    }
  },

  actions: {
    GET_AGENCIES: async ({ commit }) => {
      await axios
        .get('http://localhost:3000/agencies')
        .then(response => {
          const agencies = response.data;
          commit("SET_AGENCIES", agencies)
        })
        .catch(error => {
          throw error
        })
    },
    CREATE_AGENCY: async ({ commit }, agency) => {
      const response = await axios
        .post("http://localhost:3000/agencies", agency)
        commit("ADD_AGENCY", response.data);
    },
    DELETE_AGENCY: async ({ commit }, id) => {
      await axios
        .delete(`http://localhost:3000/agencies/${id}`)
      commit("REMOVE_AGENCY", id)
    },
    UPDATE_AGENCY: async ({ commit }, item) => {
      const response = await axios
        .put(`http://localhost:3000/agencies/${item.idAgency}`, item)
        commit("EDIT_AGENCY", response.data)
    }
  }
}

export default agencies;
