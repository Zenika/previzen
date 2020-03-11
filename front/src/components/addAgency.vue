<template>
  <v-dialog v-model="dialog">
    <template v-slot:activator="{ on }">
      <v-btn v-on="on" text depressed>Add new agency
        <v-icon>mdi-home</v-icon>
      </v-btn>
    </template>
    <v-card>
      <v-card-title>Add a new agency</v-card-title>
      <v-form class="mx-5" rel="form">
        <v-row>
          <v-col cols="12" sm="6" md="6">
            <v-text-field label="Agency name" v-model="nameAgency" :rules="rules" required></v-text-field>
          </v-col>
          <v-col cols="12" sm="6" md="6">
            <v-text-field label="Manager's name" v-model="nameManager" :rules="rules" required></v-text-field>
          </v-col>
        </v-row>
        <v-row>
          <v-col cols="12" sm="6" md="6">
            <v-text-field label="Agency city" v-model="cityAgency" :rules="rules" required></v-text-field>
          </v-col>
          <v-col cols="12" sm="6" md="6">
            <v-text-field label="Agency country" v-model="countryAgency" :rules="rules" required></v-text-field>
          </v-col>
        </v-row>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn color="blue darken-1" text @click="dialog = false">Cancel</v-btn>
          <v-btn color="blue darken-1" text @click="createAgency()">Create</v-btn>
        </v-card-actions>
      </v-form>
    </v-card>
  </v-dialog>
</template>

<script>
import axios from "axios";
export default {
  name: "addAgency",
  data() {
    return {
      nameAgency: "",
      nameManager: "",
      cityAgency: "",
      countryAgency: "",
      rules: [v => !!v || "Field required"],
      dialog: false
    };
  },
  methods: {
    createAgency() {
      let newAgency = {
        nameAgency: this.nameAgency,
        nameManager: this.nameManager,
        cityAgency: this.cityAgency,
        countryAgency: this.countryAgency
      };
      console.table(newAgency);

      axios
        .post("http://localhost:3000/agencies", newAgency)
        .then(response => {
          response.data
          this.dialog = false;
        })
        .catch(error => {
          throw error;
        });
    }
  }
};
</script>