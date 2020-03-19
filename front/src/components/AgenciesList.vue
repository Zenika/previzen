<template>
  <v-dialog v-model="showList">
    <template v-slot:activator="{on}">
      <v-btn v-on="on" text depressed>
        Agencies
      </v-btn>
    </template>
    <v-container fluid>
    <v-data-iterator
      :items="agencies"
      hide-default-footer
    >
      <template v-slot:header>
        <v-toolbar class="mb-2" color="indigo darken-5" dark flat>
          <v-toolbar-title>Agencies</v-toolbar-title>
          <v-spacer></v-spacer>
          <v-btn text depressed @click="showList = false">
            <v-icon>mdi-close</v-icon>
          </v-btn>
        </v-toolbar>
      </template>

      <template v-slot:default="props">
        <v-row>
          <v-col
            v-for="item in props.items"
            :key="item.idAgency"
            cols="12"
            sm="6"
            md="4"
            lg="3"
          >
            <v-card>
              <v-card-title class="subheading font-weight-bold">
                <template>
                  <v-edit-dialog
                    :return-value.sync="item.nameAgency"
                    @save="save(item)"
                  >
                    {{ item.nameAgency }}
                    <template v-slot:input>
                      <v-text-field
                        v-model="item.nameAgency"
                        label="City"
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
                  <v-list-item-content>City:</v-list-item-content>
                  <v-list-item-content class="align-end">
                    <template>
                      <v-edit-dialog
                        :return-value.sync="item.cityAgency"
                        @save="save(item)"
                      >
                        {{ item.cityAgency }}
                        <template v-slot:input>
                          <v-text-field
                            v-model="item.cityAgency"
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
                  <v-list-item-content>Manager:</v-list-item-content>
                  <v-list-item-content class="align-end">
                    <template>
                      <v-edit-dialog
                        :return-value.sync="item.nameManager"
                        @save="save(item)"
                      >
                        {{ item.nameManager }}
                        <template v-slot:input>
                          <v-text-field
                            v-model="item.nameManager"
                            label="Manager"
                            single-line
                            counter
                          ></v-text-field>
                        </template>
                      </v-edit-dialog>
                    </template>
                  </v-list-item-content>
                </v-list-item>

                <v-list-item>
                  <v-list-item-content>Country:</v-list-item-content>
                  <v-list-item-content class="align-end">
                    <template>
                      <v-edit-dialog
                        :return-value.sync="item.countryAgency"
                        @save="save(item)"
                      >
                        {{ item.countryAgency }}
                        <template v-slot:input>
                          <v-text-field
                            v-model="item.countryAgency"
                            label="Country"
                            single-line
                            counter
                          ></v-text-field>
                        </template>
                      </v-edit-dialog>
                    </template>
                  </v-list-item-content>
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
import { mapState } from "vuex";
import axios from "axios";
export default {
  components: {},
  data: () => ({
    snack: false,
    snackColor: '',
    snackText: '',
    showList: false,
    editedIndex: -1
  }),
  computed: {
    ...mapState("agencies", ["agencies"])
  },
  mounted() {
    this.$store.dispatch("agencies/GET_AGENCIES");
  },
  methods: {
    save(item) {
      this.editedIndex = this.agencies.indexOf(item);
      if (this.editedIndex > -1) {
        axios
          .put(`http://localhost:3000/agencies/${item.idAgency}`, item)
          .then(response => {
            response.data;
            this.$store.dispatch("agencies/GET_AGENCIES");
            this.snack = true
            this.snackColor = 'success'
            this.snackText = 'Data saved'
            this.editedIndex = this.agencies.indexOf(item);
          })
      }
    },
  },
};
</script>
