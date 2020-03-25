import axios from "axios";
const consultants = {
  namespaced: true,

  state: {
    consultants: []
  },

  mutations: {
    SET_CONSULTANTS: (state, consultant) => {
      state.consultants = consultant;
    },
    ADD_CONSULTANT: (state, consultant) => {
      state.consultants.push(consultant);
    },
    EDIT_CONSULTANT: (state, editedconsultant) => {
      state.consultants.editedconsultant = editedconsultant;
    },
    REMOVE_CONSULTANT: (state, id) => {
      const index = state.consultants
      .map(consultants => consultants.idConsultant)
      .indexOf(id);
      state.consultants.splice(index, 1);
    }
  },

  actions: {
    GET_CONSULTANTS: async ({ commit }) => {
      let response = await axios
        .get("http://localhost:3000/consultants")
        if(response.status === 200) {
          commit("SET_CONSULTANTS", response.data)
        }
    },
    CREATE_CONSULTANT: async ({ commit }, consultant) => {
      let response = await axios
        .post("http://localhost:3000/consultants", consultant)
        if(response.status == 201) {
          commit("ADD_CONSULTANT", response.data);
        }
    },
    UPDATE_CONSULTANT: async ({ commit }, editedconsultant) => {
      commit("EDIT_CONSULTANT", editedconsultant)
      let response = await axios
        .put(`http://localhost:3000/consultants/${editedconsultant.idConsultant}`, editedconsultant);
        if(response.status === 200) {
          commit("EDIT_CONSULTANT", response.data);
        }
    },
    DELETE_CONSULTANT: async ({ commit }, id) => {
      let response = await axios
        .delete(`http://localhost:3000/consultants/${id}`)
        if(response.status == 200 || response.status == 204) {
          commit("REMOVE_CONSULTANT", id);
        }
    }
  }
}

export default consultants;
