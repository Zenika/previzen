<template>
  <v-dialog width="800px" v-model="dialog">
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

        <v-select v-model="idAgency" :items="agencies" item-text="nameAgency" item-value="idAgency" label="Agency" required></v-select>
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
                  readonly
                ></v-text-field>
              </template>
              <v-date-picker v-model="date" @input="menu = false" type="month"></v-date-picker>
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
                  readonly
                ></v-text-field>
              </template>
              <v-date-picker v-model="date2" @input="menu2 = false" type="month"></v-date-picker>
            </v-menu>
          </v-col>
        </v-row>
        <v-row>
          <v-col cols="12" xs="6" sm="6" md="2">
            <v-btn @click="createConsultant()" color="success">Create</v-btn>
          </v-col>
          <v-col cols="12" xs="6" sm="6" md="2">
            <v-btn @click="dialog = false" color="red">Cancel</v-btn>
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
      lastNameConsultant: "",
      firstNameConsultant: "",
      idAgency: null,
      agencies: [],
      date: null,
      date2: null,
      agencyRules: [v => !!v || "You must select an agency !"],
      dialog: false,
      menu: false,
      menu2: false,
      editedConsultant: -1,
      editedIndex: {
        lastNameConsultant: "",
        firstNameConsultant: ""
      }, 
    };
  },
  methods: {
    getAllAgencies() {
      axios
        .get("http://localhost:3000/agencies")
        .then(response => (this.agencies = response.data));
    },
    createConsultant() {
      let newConsultant = {
 
      }

      axios
        .post('http://localhost:3000/consultants', newConsultant)
        .then(response => response.data)
        .catch(error => {throw error});
    }
  },
  created() {
    this.getAllAgencies();
  }
};
</script>