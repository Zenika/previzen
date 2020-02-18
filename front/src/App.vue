<template>
  <v-app id="inspire">
    <v-navigation-drawer app right v-model="drawer">
      <v-list dense>
        <v-list-item link>
          <v-list-item-action>
            <v-icon>mdi-home</v-icon>
          </v-list-item-action>

          <v-list-item-content>
            <v-list-item-title>Home</v-list-item-title>
          </v-list-item-content>
        </v-list-item>

        <v-list-item link>
          <v-list-item-action>
            <v-icon>mdi-contact-mail</v-icon>
          </v-list-item-action>

          <v-list-item-content>
            <v-list-item-title>Contact</v-list-item-title>
          </v-list-item-content>
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
        <h1>{{ hello }}</h1>
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
export default {
  name: "LayoutsDemosBaselineFlipped",

  props: {
    source: String
  },
  data: () => ({
    drawer: null,
    application: {
      name: "PreviZen",
      version: "ver. 0.0.1",
      corporation: "Zenika"
    },
    hello: null
  }),
  mounted() {
    axios
        .get("http://localhost:3000")
        .then(res => {
            this.hello = res.data;
    });
  }
};
</script>
