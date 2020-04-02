<template>
  <div>
    <v-row>
      <v-col cols="6">
        <v-select
          v-model="idCustomer"
          :items="customers"
          item-text="nameCustomer"
          item-value="idCustomer"
          label="Customer"
          required
        ></v-select>
      </v-col>
      <v-col cols="6">
        <v-text-field v-model="priceStaffing" label="Price"></v-text-field>
      </v-col>
    </v-row>
    <v-row>
      <v-col cols="6">
        <v-menu
          v-model="menu3"
          :close-on-content-click="false"
          transition="scale-transition"
          :nudge-right="40"
          offset-y
          min-width="290px"
        >
          <template v-slot:activator="{on}">
            <v-text-field
              v-on="on"
              label="Staffing Date"
              prepend-icon="mdi-calendar"
              v-model="staffingDate"
              required
              readonly
            ></v-text-field>
          </template>
          <v-date-picker v-model="staffingDate" @input="menu = false" type="month"></v-date-picker>
        </v-menu>
      </v-col>
      <v-col cols="6">
        <v-text-field v-model="durationDate" label="Mission duration"></v-text-field>
      </v-col>
    </v-row>
  </div>
</template>

<script>
import { mapState } from "vuex";
export default {
  name: "addMission",
  props: {
    staffingValue: Object
  },
  data() {
    return {
      idCustomer: "",
      priceStaffing: "",
      staffingDate: "",
      durationDate: "",
      menu3: false
    };
  },
  computed: {
    ...mapState("customers", ["customers"]),
  },
  created() {
    // this.idCustomer = this.staffingValue;
    // this.$watch("idCustomer", staffingValue => { TO REVIEW
    //   this.$emit("input", staffingValue);
    //   console.log(staffingValue)
    // });
  }
};
</script>