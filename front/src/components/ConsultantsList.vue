<template>
  <v-layout row wrap>
    <!-- <v-flex xs6> TODO
      <v-select
        v-model="filter"
        :items="agencies"
        item-text="nameAgency"
        item-value="idAgency"
        label="Filter by agency"
      ></v-select>
    </v-flex>-->

    <v-flex xs6>
      <v-text-field
        v-model="search"
        append-icon="mdi-magnify"
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
                      <v-text-field v-model="editedItem.lastNameConsultant" label="Last Name"></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="4">
                      <v-text-field v-model="editedItem.firstNameConsultant" label="First Name"></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="4">
                      <v-text-field v-model="idAgency" label="Agency"></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="3">
                      <v-text-field
                        v-model="editedItem.startsAfterMonthConsultant"
                        label="Start month"
                      ></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="3">
                      <v-text-field
                        v-model="editedItem.startsAfterYearConsultant"
                        label="Start year"
                      ></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="3">
                      <v-text-field
                        v-model="editedItem.leavesAfterMonthConsultant"
                        label="End month"
                      ></v-text-field>
                    </v-col>
                    <v-col cols="12" sm="6" md="3">
                      <v-text-field v-model="editedItem.leavesAfterYearConsultant" label="End year"></v-text-field>
                    </v-col>
                  </v-row>
                </v-container>
              </v-card-text>
              <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn color="blue darken-1" text @click="dialog = false">Cancel</v-btn>
                <v-btn color="blue darken-1" text>Edit</v-btn> <!-- TODO @click -->
              </v-card-actions>
            </v-card>
          </v-dialog>
        </template>
        <template v-slot:item.action="{ item }">
          <v-icon small class="mr-2">mdi-cogs</v-icon> <!-- TODO @click -->
          <v-icon small @click="deleteConsultant(item.idConsultant)">mdi-delete</v-icon>
        </template>
      </v-data-table>
    </v-flex>
  </v-layout>
</template>

<script>
import axios from "axios";
export default {
  components: {},
  data() {
    return {
      search: "",
      idAgency: "",
      idConsultant: "",
      dialog: false,
      agencies: [],
      consultants: [],
      editedItem: -1,
      editedIndex: {
        lastNameConsultant: "",
        firstNameConsultant: "",
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
        {
          text: "Actions",
          value: "action",
          sortable: false
        }
      ]
    };
  },
  computed: {},
  methods: {
    getAllConsultants() {
      axios
        .get("http://localhost:3000/consultants")
        .then(response => (this.consultants = response.data))
        .catch(error => {
          throw error;
        });
    },
    getAllAgencies() {
      axios
        .get("http://localhost:3000/agencies")
        .then(response => (this.agencies = response.data));
    },
    // editConsultant(item) { TODO
    //   this.editedIndex = this.consultants.indexOf(item);
    //   this.editedItem = Object.assign({}, item);
    //   this.dialog = true;
    // },
    // save() {
    //   if (this.editedIndex > -1) {
    //     Object.assign(this.consultants[this.editedIndex], this.editedItem);
    //   } else {
    //     this.consultants.push(this.editedItem);
    //   }
    //   this.dialog = false;
    // },
    deleteConsultant(id) {
      const index = this.consultants.indexOf(id);
      confirm("Are you sure you want to delete this consultant?") &&
        this.consultants.splice(index, 1);
      axios
        .delete(`http://localhost:3000/consultants/${id}`)
        .then(response => response.data)
        .catch(error => {
          console.log(error);
        });
    }
  },
  created() {
    this.getAllConsultants();
    this.getAllAgencies();
  }
};
</script>