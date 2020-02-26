<template>
  <v-container>
    <v-row>
      <v-list v-for="consultant in consultants" :key="consultant.id">
        <v-list-item>{{ consultant.last_name_consultant }}</v-list-item>
        <v-list-item>{{ consultant.first_name_consultant }}</v-list-item>
        <v-btn text @click="showConsultantDetails">
          <v-icon>mdi-wrench</v-icon>
        </v-btn>
      </v-list>
    </v-row>
  </v-container>
</template>

<script>
export default {
  name: "ConsultantsList",
  data() {
    return {
      consultants: [
        {
          id: 1,
          last_name_consultant: "Niepceron",
          first_name_consultant: "Micke"
        },
        {
          id: 2,
          last_name_consultant: "Pillot",
          first_name_consultant: "Anthony"
        },
        {
          id: 3,
          last_name_consultant: "Legrand",
          first_name_consultant: "Adrien"
        }
      ]
    };
  },
  methods: {
    showConsultantDetails() {}
  }
};
</script>