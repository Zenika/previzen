<template>
  <v-layout row wrap>
    <v-flex xs6>
      <v-select
        v-model="search"
        :items="agencies"
        item-text="nameAgency"
        item-value="nameAgency"
        label="Filter by agency"
        clean
      ></v-select>
    </v-flex>

    <v-flex xs6>
      <v-text-field
        append-icon="mdi-magnify"
        v-model="search"
        label="Search"
        single-line
        hide-details
      ></v-text-field>
    </v-flex>

    <v-flex xs12 sm12 md12 lg12>
      <v-data-table :headers="headers" :items="consultants" :search="search" class="elevation-1">
        <template v-slot:top>
          <v-dialog v-model="dialog" max-width="800px">
            <v-card>
              <v-card-text>
                <v-container>
                  <v-row>
                    <v-col cols="12" sm="6" md="4">
                      <v-text-field v-model="editedConsultant.lastNameConsultant" label="Last Name"></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="4">
                      <v-text-field v-model="editedConsultant.firstNameConsultant" label="First Name"></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="4">
                      <v-select
                        v-model="editedConsultant.idAgency"
                        :items="agencies"
                        item-text="nameAgency"
                        item-value="idAgency"
                        label="Agency"
                        required
                      ></v-select>
                    </v-col>
                    <v-col cols="12" sm="6" md="3">
                      <v-text-field
                        v-model="editedConsultant.startsAfterMonthConsultant"
                        label="Start month"
                      ></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="3">
                      <v-text-field
                        v-model="editedConsultant.startsAfterYearConsultant"
                        label="Start year"
                      ></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="3">
                      <v-text-field
                        v-model="editedConsultant.leavesAfterMonthConsultant"
                        label="End month"
                      ></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="3">
                      <v-text-field v-model="editedConsultant.leavesAfterYearConsultant" label="End year"></v-text-field>
                    </v-col>
                  </v-row>
                </v-container>
              </v-card-text>
              <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn color="blue darken-1" text @click="dialog = false">Cancel</v-btn>
                <v-btn
                  color="blue darken-1"
                  text
                  @click="updateConsultant(editedConsultant.idConsultant)"
                >Edit</v-btn>
              </v-card-actions>
            </v-card>
          </v-dialog>
        </template>
        <template v-slot:item.action="{ item }">
          <v-icon small class="mr-2" @click="editConsultant(item)">mdi-cogs</v-icon>
          <v-icon small @click="deleteConsultant(item.idConsultant)">mdi-delete</v-icon>
        </template>
      </v-data-table>
      <v-snackbar v-model="snack" :timeout="3000" :color="snackColor">
      {{ snackText }}
        <v-btn text @click="snack = false">Close</v-btn>
      </v-snackbar>
    </v-flex>
  </v-layout>
</template>

<script>
import axios from "axios";
import { mapState, mapActions } from "vuex";
export default {
  name: "ConsultantsList",
  components: {},
  props: {
    search: [],
  },
  data() {
    return {
      snack: false,
      snackColor: '',
      snackText: '',
      dialog: false,
      enabled: null,
      editedIndex: -1,
      editedConsultant: {
        lastNameConsultant: "",
        firstNameConsultant: "",
        idAgency: "",
        startsAfterMonthConsultant: 0,
        startsAfterYearConsultant: 0,
        leavesAfterMonthConsultant: 0,
        leavesAfterYearConsultant: 0
      },
      headers: [
        {
          text: "Last Name",
          value: "lastNameConsultant"
        },
        {
          text: "First Name",
          value: "firstNameConsultant"
        },
        {
          text: "Consultant's ID",
          value: "idConsultant"
        },
        {
          text: "Consultant's Agency",
          value: "idAgency.nameAgency"
        },
        // {
        //   text: "Consultant's Customer",
        //   value: "" TODO
        // },
        {
          text: "Actions",
          value: "action",
          sortable: false
        }
      ]
    };
  },
  mounted() {
    this.$store.dispatch("agencies/GET_AGENCIES"),
    this.$store.dispatch("consultants/GET_CONSULTANTS"),
    this.$store.dispatch("customers/GET_CUSTOMERS")
  },
  computed: {
    ...mapState("consultants", ["consultants"]),
    ...mapState("agencies", ["agencies"]),
    ...mapState("customers", ["customers"])
  },
  methods: {
    ...mapActions({
      "UPDATE_CONSULTANT": "consultants/UPDATE_CONSULTANT",
      "DELETE_CONSULTANT": "consultants/DELETE_CONSULTANT"
    }),
    editConsultant(item) {
      this.editedIndex = this.consultants.indexOf(item);
      this.editedConsultant = Object.assign({}, item);
      this.dialog = true;
    },
    updateConsultant(id) {
      if (this.editedIndex > -1) {
        axios
          .put(`http://localhost:3000/consultants/${id}`, this.editedConsultant)
          .then(response => {
            response.data;
            this.dialog = false;
            this.$store.dispatch("consultants/GET_CONSULTANTS");
            this.snack = true
            this.snackColor = 'success'
            this.snackText = 'Consultant successfully updated'
          })
      }
    },
    deleteConsultant(id) {
      if (confirm("Are you sure you want to delete this consultant?") === true) {
        this.DELETE_CONSULTANT(id);
        this.snack = true
        this.snackColor = 'success'
        this.snackText = 'Consultant successfully deleted'
      }
    }
  }
};
</script>
