<template>
  <v-dialog v-model="showList">
    <template v-slot:activator="{on}">
      <v-btn v-on="on" text depressed>
        Customers
      </v-btn>
    </template>
    <v-container fluid>
    <v-data-iterator
      :items="customers"
      :items-per-page.sync="itemsPerPage"
      :search="search"
      hide-default-footer
    >
      <template v-slot:header>
        <v-row>
        <v-toolbar class="mb-2" color="indigo darken-5" dark flat>
          <v-col cols="4" md="4" sm="4">
            <v-toolbar-title>Customers</v-toolbar-title>
          </v-col>
          <v-spacer></v-spacer>
          <v-col cols="4" md="4" sm="4">
          <v-text-field
            v-model="search"
            clearable
            flat
            solo-inverted
            hide-details
            label="Search"
            max-width="20px"
          ></v-text-field>
          </v-col>
          <v-col cols="1" md="1" sm="2" align="right">
            <v-btn text @click="showList = false">
              <v-icon>mdi-close</v-icon>
            </v-btn>
          </v-col>
        </v-toolbar>
        </v-row>
      </template>

      <template v-slot:default="props">
        <v-row>
          <v-col
            v-for="item in props.items"
            :key="item.idCustomer"
            cols="12"
            sm="6"
            md="4"
            lg="3"
          >
            <v-card>
              <v-card-title class="subheading font-weight-bold">
                <template>
                  <v-edit-dialog
                    :return-value.sync="item.nameCustomer"
                    @save="save(item)"
                  >
                    {{ item.nameCustomer }}
                    <template v-slot:input>
                      <v-text-field
                        v-model="item.nameCustomer"
                        label="Name"
                        single-line
                        counter
                      ></v-text-field>
                    </template>
                  </v-edit-dialog>
                </template>
              </v-card-title>

              <v-divider></v-divider>

              <v-list dense>
                <v-list-item>
                  <v-list-item-content>Name:</v-list-item-content>
                  <v-list-item-content class="align-end">
                    <template>
                      <v-edit-dialog
                        :return-value.sync="item.nameCustomer"
                        @save="save(item)"
                      >
                        {{ item.nameCustomer }}
                        <template v-slot:input>
                          <v-text-field
                            v-model="item.nameCustomer"
                            label="City"
                            single-line
                            counter
                          ></v-text-field>
                        </template>
                      </v-edit-dialog>
                    </template>
                  </v-list-item-content>
                </v-list-item>

                <v-list-item>
                  <v-spacer></v-spacer>
                  <v-btn color="red" text @click="deleteCustomer(item.idCustomer)">
                    <v-icon>mdi-delete</v-icon>
                  </v-btn>
                </v-list-item>

              </v-list>
            </v-card>
          </v-col>
        </v-row>
      </template>

    </v-data-iterator>
    <v-snackbar v-model="snack" :timeout="3000" :color="snackColor">
    {{ snackText }}
      <v-btn text @click="snack = false">Close</v-btn>
    </v-snackbar>
    </v-container>
  </v-dialog>
</template>

<script>
import { mapState, mapActions } from "vuex";
export default {
  components: {},
  data: () => ({
    search: "",
    itemsPerPage: 100,
    snack: false,
    snackColor: '',
    snackText: '',
    showList: false,
    editedIndex: -1
  }),
  computed: {
    ...mapState("customers", ["customers"])
  },
  methods: {
    ...mapActions({
      "DELETE_CUSTOMER": "customers/DELETE_CUSTOMER",
      "UPDATE_CUSTOMER": "customers/UPDATE_CUSTOMER"
    }),
    deleteCustomer(id) {
      if (confirm("Are you sure you want to delete this customer?") === true) {
        this.DELETE_CUSTOMER(id);
        this.snack = true
        this.snackColor = 'success'
        this.snackText = 'Customer successfully deleted'
      }
    },
    save(item) {
      this.editedIndex = this.customers.indexOf(item);
      if (this.editedIndex > -1) {
        this.UPDATE_CUSTOMER(item);
        this.snack = true
        this.snackColor = 'success'
        this.snackText = 'Data saved'
      }
    },
  },
};
</script>
