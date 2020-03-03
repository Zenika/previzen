<template>
  <v-data-table :headers="headers" :items="consultants" class="elevation-1">
    <template v-slot:top>
      <v-dialog v-model="dialog" max-width="800px">
        <v-card>
          <v-card-text>
            <v-container>
              <v-row>
                <v-col cols="12" sm="6" md="6">
                  <v-text-field v-model="editedItem.lastNameConsultant" label="Last Name"></v-text-field>
                </v-col>
                <v-col cols="12" sm="6" md="6">
                  <v-text-field v-model="editedItem.firstNameConsultant" label="First Name"></v-text-field>
                </v-col>
                <v-col cols="12" sm="6" md="3">
                  <v-text-field
                    v-model="editedItem.startsAfterMonthConsultant"
                    label="Contract start date"
                  ></v-text-field>
                </v-col>
                <v-col cols="12" sm="6" md="3">
                  <v-text-field
                    v-model="editedItem.startsAfterYearConsultant"
                    label="Contract end date"
                  ></v-text-field>
                </v-col>
              </v-row>
            </v-container>
          </v-card-text>
        </v-card>
      </v-dialog>
    </template>
    <template v-slot:item.action="{ item }">
      <v-icon small class="mr-2" @click="editConsultant(item)">mdi-cogs</v-icon>
      <v-icon small @click="deleteItem(item)">mdi-delete</v-icon>
    </template>
  </v-data-table>
</template>

<script>
import axios from "axios";
export default {
  name: "consultantsDataTable",
  data() {
    return {
      consultants: [],
      dialog: false,
      editedItem: -1,
      editedIndex: {
        lastNameConsultant: "",
        firstNameConsultant: ""
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
          value: "nameAgency"
        },
        {
          text: "Actions",
          value: "action",
          sortable: false
        }
      ]
    };
  },
  methods: {
    getAllConsultant() {
      axios
        .get("http://localhost:3000/consultants")
        .then(response => (this.consultants = response.data))
        .catch(error => {
          throw error;
        });
    },
    editConsultant(item) {
      this.editedIndex = this.consultants.indexOf(item);
      this.editedItem = Object.assign({}, item);
      this.dialog = true;
    },
    deleteItem() {
      alert("Are you sure to delete this consultant ?");
    }
  },
  created() {
    this.getAllConsultant();
  }
};
</script>