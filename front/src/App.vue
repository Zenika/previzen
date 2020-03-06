<template>
  <v-app id="inspire">
    <v-navigation-drawer app right v-model="drawer">
      <v-list dense>
        <v-list-item>
          <addConsultant />
        </v-list-item>
        <v-list-item>
          <addAgency />
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar app color="brown" dark>
      <v-spacer />

      <v-toolbar-title>{{application.name}}</v-toolbar-title>

      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
    </v-app-bar>

    <v-content>
      <v-container>
        <ConsultantsList />
      </v-container>
    </v-content>

    <v-footer app color="brown">
      <span class="white--text">&copy; {{application.corporation}}</span>
      <v-spacer />

      <span class="white--text">{{application.version}}</span>
    </v-footer>
  </v-app>
</template>

<script>
import axios from "axios";
import ConsultantsList from "@/components/ConsultantsList";
import addConsultant from "@/components/addConsultant";
import addAgency from '@/components/addAgency';
export default {
  components: {
    ConsultantsList,
    addConsultant,
    addAgency,
  },
  name: "LayoutsDemosBaselineFlipped",

  props: {
    source: String
  },
  data: () => ({
    drawer: false,
    application: {
      name: "PreviZen",
      version: "ver. 0.0.1",
      corporation: "Zenika"
    },
    hello: null
  }),
  mounted() {
    axios.get("http://localhost:3000").then(res => {
      this.hello = res.data;
    });
  }
};
</script>
