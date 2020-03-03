<template>
<<<<<<< Updated upstream
  <v-container>
    <v-row>
      <v-list v-for="consultant in consultants" :key="consultant.id">
        <v-list-item>{{ consultant.last_name_consultant }}</v-list-item>
        <v-list-item>{{ consultant.first_name_consultant }}</v-list-item>
        <v-btn text @click="showConsultantDetails">
          <v-icon>mdi-wrench</v-icon>
        </v-btn>
      </v-list>
    </v-row>
  </v-container>
=======
  <v-layout row wrap>
    <v-flex xs6 sm6 md6 lg6>
      <v-select label="Filter by agency"></v-select>
    </v-flex>

    <v-flex xs6 sm6 md6 lg6>
      <v-text-field
        hide-details
        single-inline
        append-icon="mdi-magnify"
        label="Filter"
      ></v-text-field>
    </v-flex>

    <v-flex xs12 sm12 md12 lg12>
      <consultantsDataTable />
    </v-flex>

  </v-layout>
>>>>>>> Stashed changes
</template>

<script>
<<<<<<< Updated upstream
export default {
  name: "ConsultantsList",
  data() {
    return {
      consultants: [
        {
          id: 1,
          last_name_consultant: "Niepceron",
          first_name_consultant: "Micke"
        },
        {
          id: 2,
          last_name_consultant: "Pillot",
          first_name_consultant: "Anthony"
        },
        {
          id: 3,
          last_name_consultant: "Legrand",
          first_name_consultant: "Adrien"
        }
      ]
    };
  },
  methods: {
    showConsultantDetails() {}
=======
import axios from "axios";
import consultantsDataTable from '@/components/partials/consultantsDataTable';
export default {
  components: {
    consultantsDataTable
  },
  data() {
    return {
      dialog: false,
      agencies: [],
    };
  },
  methods: {
    findAllAgencies() {
      axios
        .get("http://localhost:3000/agencies")
        .then(response => (this.agencies = response.data));
    }
  },
  created() {
    this.findAllAgencies();
>>>>>>> Stashed changes
  }
};
</script>