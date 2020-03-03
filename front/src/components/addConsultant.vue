<template>
  <v-dialog width="800px">
    <template v-slot:activator="{on}">
      <v-btn v-on="on" text depressed>
        Add new consultant
        <v-icon>mdi-account-multiple-plus</v-icon>
      </v-btn>
    </template>
    <v-card>
      <v-card-title>Add a new consultant</v-card-title>
      <v-form class="mx-5" rel="form">
        <v-row>
          <v-col cols="12" sm="6" md="6">
            <v-text-field label="Last Name" v-model="lastNameConsultant"></v-text-field>
          </v-col>
          <v-col cols="12" sm="6" md="6">
            <v-text-field label="First Name" v-model="firstNameConsultant"></v-text-field>
          </v-col>
        </v-row>

        <v-select label="Agency" required></v-select>
        <v-row>
          <v-col cols="12" xs="6" sm="6" md="6" lg="6">
            <v-menu
              v-model="menu"
              :close-on-content-click="false"
              transition="scale-transition"
              :nudge-right="40"
              offset-y
              min-width="290px"
            >
              <template v-slot:activator="{on}">
                <v-text-field
                  v-on="on"
                  label="Contract start date"
                  prepend-icon="mdi-calendar"
                  v-model="date"
                ></v-text-field>
              </template>
              <v-date-picker v-model="date" @input="menu = false"></v-date-picker>
            </v-menu>
          </v-col>
          <v-col cols="12" xs="6" sm="6" md="6" lg="6">
            <v-menu
              v-model="menu2"
              :close-on-content-click="false"
              transition="scale-transition"
              :nudge-right="40"
              offset-y
              min-width="290px"
            >
              <template v-slot:activator="{on}">
                <v-text-field
                  v-on="on"
                  label="Contract end date"
                  prepend-icon="mdi-calendar"
                  v-model="date2"
                ></v-text-field>
              </template>
              <v-date-picker v-model="date" @input="menu = false"></v-date-picker>
            </v-menu>
          </v-col>
        </v-row>
      </v-form>
    </v-card>
  </v-dialog>
</template>

<script>
import axios from "axios";
export default {
  name: "addConsultant",
  data() {
    return {
      agencies: [],
      dialog: false,
      dates: null,
      date: new Date().toISOString().substr(0, 10),
      date2: new Date().toISOString().substr(0, 10),
      menu: false,
      menu2: false,
      lastNameConsultant: "",
      firstNameConsultant: "",
      agencyRules: [v => !!v || "You must select an agency !"]
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