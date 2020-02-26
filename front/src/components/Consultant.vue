<template>
  <v-container>
    <h1 justify="center" align="center">Consultant</h1>
    <v-list v-for="consultant in consultants" :key="consultant.id">
      <v-list-item>{{ consultant }}</v-list-item>
    </v-list>
    <v-btn text>
      <v-icon>mdi-arrow-left</v-icon>
    </v-btn>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      consultants: [
        {
          id: 1,
          last_name_consultant: "Niepceron",
          first_name_consultant: "Micke",
          starts_after_month: 2,
          starts_after_year: 2020,
          leaves_after_month: 4,
          leaves_after_year: 2020
        }
      ]
    };
  },
  methods: {

  }
};
</script>