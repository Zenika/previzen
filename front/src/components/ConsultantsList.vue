<template>
  <v-layout row wrap>

    <v-flex xs6 sm6 md6 lg6>
      <v-select label="Filter by agency"></v-select>
    </v-flex>

    <v-flex xs6 sm6 md6 lg6>
      <v-text-field hide-details single-inline append-icon="mdi-magnify" label="Filter"></v-text-field>
    </v-flex>

    <v-flex xs12 sm12 md12 lg12>
      <consultantsDataTable />
    </v-flex>
  </v-layout>
</template>

<script>
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
  }
};
</script>