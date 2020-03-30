import axios from "axios";
const customers = {
  namespaced: true,

  state: {
    customers: []
  },

  mutations: {
    SET_CUSTOMERS: (state, customer) => {
      state.customers = customer
    },
    ADD_CUSTOMER: (state, customer) => {
      state.customers.push(customer);
    },
    EDIT_CUSTOMER: (state, item) => {
      state.customers.item = item
    },
    REMOVE_CUSTOMER: (state, id) => {
      const index = state.customers
      .map(customers => customers.idCustomer)
      .indexOf(id);
      state.customers.splice(index, 1);
    }
  },

  actions: {
    GET_CUSTOMERS: async ({ commit }) => {
      await axios
        .get('http://localhost:3000/customers')
        .then(response => {
          const customers = response.data;
          commit("SET_CUSTOMERS", customers)
        })
        .catch(error => {
          throw error
        })
    },
    CREATE_CUSTOMER: async ({ commit }, customer) => {
      const response = await axios
        .post("http://localhost:3000/customers", customer)
        commit("ADD_CUSTOMER", response.data);
    },
    DELETE_CUSTOMER: async ({ commit }, id) => {
      await axios
        .delete(`http://localhost:3000/customers/${id}`)
      commit("REMOVE_CUSTOMER", id)
    },
    UPDATE_CUSTOMER: async ({ commit }, item) => {
      const response = await axios
        .put(`http://localhost:3000/customers/${item.idCustomer}`, item)
        commit("EDIT_CUSTOMER", response.data)
    }
  }
}

export default customers;
