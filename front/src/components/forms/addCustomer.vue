<template>
  <v-dialog v-model="dialog">
    <template v-slot:activator="{ on }">
      <v-btn v-on="on" text depressed>Add new customer
        <v-icon>mdi-account-box</v-icon>
      </v-btn>
    </template>
    <v-card>
      <v-card-title>Add a new customer</v-card-title>
      <v-form v-model="valid" class="mx-5">
        <v-text-field label="Agency name" v-model="nameCustomer" :rules="rules" required></v-text-field>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn color="blue darken-1" text @click="dialog = false">Cancel</v-btn>
          <v-btn color="blue darken-1" text :disabled="!valid" @click="createCustomer()">Create</v-btn>
        </v-card-actions>
      </v-form>
    </v-card>
  </v-dialog>
</template>

<script>
import { mapState, mapActions } from "vuex";
export default {
  name: "addCustomer",
  data() {
    return {
      valid: true,
      nameCustomer: "",
      rules: [v => !!v || "Field required"],
      dialog: false
    };
  },
  methods: {
    ...mapActions({
      "CREATE_CUSTOMER": "customers/CREATE_CUSTOMER"
    }),
    createCustomer() {
      this.CREATE_CUSTOMER({
          nameCustomer: this.nameCustomer
      });
      this.$store.dispatch("customers/GET_CUSTOMERS")
      this.$emit("customerAdded");
    },
  },
  computed: {
    ...mapState("customers", ["customers"])
  }
};
</script>
