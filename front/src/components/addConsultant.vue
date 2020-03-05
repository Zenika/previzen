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
            <v-text-field
              label="Last Name"
              v-model="lastNameConsultant"
              :rules="lastNameRules"
              required
            ></v-text-field>
          </v-col>
          <v-col cols="12" sm="6" md="6">
            <v-text-field
              label="First Name"
              v-model="firstNameConsultant"
              :rules="firstNameRules"
              required
            ></v-text-field>
          </v-col>
        </v-row>

        <v-select
          v-model="idAgency"
          :items="agencies"
          item-text="nameAgency"
          item-value="idAgency"
          label="Agency"
          :rules="agencyRules"
          required
        ></v-select>
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
                  v-model="startDate"
                  readonly
                ></v-text-field>
              </template>
              <v-date-picker
                v-model="startDate"
                @input="menu = false"
                type="month"
                :rules="dateRules"
              ></v-date-picker>
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
                  v-model="endDate"
                  readonly
                ></v-text-field>
              </template>
              <v-date-picker
                v-model="endDate"
                @input="menu2 = false"
                type="month"
                :rules="dateRules"
              ></v-date-picker>
            </v-menu>
          </v-col>
        </v-row>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn color="blue darken-1" text @click="dialog = false">Cancel</v-btn>
          <v-btn color="blue darken-1" text @click="createConsultant()">Create</v-btn>
        </v-card-actions>
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
      idAgency: '',
      agencies: [],
      startDate: "",
      endDate: "",
      lastNameRules: [v => !!v || "Last Name is required !"],
      firstNameRules: [v => !!v || "First Name is required !"],
      agencyRules: [v => !!v || "You must select an agency !"],
      dateRules: [v => !!v || "Date is required !"],
      dialog: false,
      menu: false,
      menu2: false
    };
  },
  methods: {
    getAllAgencies() {
      axios
        .get("http://localhost:3000/agencies")
        .then(response => (this.agencies = response.data));
    },
    createConsultant() {
      const arrayStartDate = this.startDate.split("-");
      const arrayEndDate = this.endDate.split("-");
      let newConsultant = {
        lastNameConsultant: this.lastNameConsultant.toUpperCase(),
        firstNameConsultant: this.firstNameConsultant,
        idAgency: parseInt(this.idAgency),
        startsAfterMonthConsultant: parseInt(arrayStartDate[1]),
        startsAfterYearConsultant: parseInt(arrayStartDate[0]),
        leavesAfterMonthConsultant: parseInt(arrayEndDate[1]),
        leavesAfterYearConsultant: parseInt(arrayEndDate[0])
      };

      console.log(newConsultant);

      axios
        .post("http://localhost:3000/consultants", newConsultant)
        .then(response => {
          response.data;
        })
        .catch(error => {
          throw error;
        });
      this.dialog = false;
    }
  },
  created() {
    this.getAllAgencies();
  }
};
</script>