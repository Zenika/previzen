<template>
  <v-row justify="center">
    <v-dialog width="800px">
      <template v-slot:activator="{ on }">
        <v-btn v-on="on">Agencies</v-btn>
      </template>
      <v-card v-for="agency in agencies" :key="agency.idAgency" class="mt-5">
        <v-container>
          <v-row>
            <v-col cols="12" sm="6" md="4">
              <p>Agency name : {{ agency.nameAgency }}</p>
            </v-col>
            <v-col cols="12" sm="6" md="4">
              <p>Agency city : {{ agency.cityAgency }}</p>
            </v-col>
            <v-col cols="12" sm="6" md="4">
              <p>Agency manager : {{ agency.nameManager }}</p>
            </v-col>
            <v-col cols="12" sm="6" md="4">
              <p>Agency country : {{ agency.countryAgency }}</p>
            </v-col>
          </v-row>
        </v-container>
      </v-card>
    </v-dialog>
  </v-row>
</template>

<script>
import axios from "axios";
export default {
  name: "AgenciesList",
  data() {
    return {
      agencies: []
    };
  },
  methods: {
    getAllAgencies() {
      axios
        .get("http://localhost:3000/agencies")
        .then(response => (this.agencies = response.data));
    }
  },
  created() {
    this.getAllAgencies();
  }
};
</script>