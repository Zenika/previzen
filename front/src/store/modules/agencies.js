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
      let response = await axios
        .get('http://localhost:3000/agencies')
        commit("SET_AGENCIES", response.data)
    },
    CREATE_AGENCY: async ({ commit }, agency) => {
      let response = await axios
        .post("http://localhost:3000/agencies", agency)
        commit("ADD_AGENCY", response.data);
    },
    DELETE_AGENCY: async ({ commit }, id) => {
      let response = await axios
        .delete(`http://localhost:3000/agencies/${id}`)
        commit("REMOVE_AGENCY", response.data)
    },
    UPDATE_AGENCY: async ({ commit }, item) => {
      let response = await axios
        .put(`http://localhost:3000/agencies/${item.idAgency}`, item)
        commit("EDIT_AGENCY", response.data)
    }
  }
}

export default agencies;
