<template>
  <v-app id="inspire">
    <v-navigation-drawer app right v-model="drawer">
      <v-list dense>
        <v-list-item>
          <addConsultant />
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar app color="brown" dark>
      <img
        class="image-rotate"
        alt="zenika_logo"
        id="zenika_logo"
        src="./assets/png/zenika_logo_white.png"
      />

      <div class="typewriter">
        <div class="output" id="output">
          <h1 class="cursor"></h1>
          <p></p>
        </div>
      </div>

      <v-spacer />

      <v-toolbar-title class="font-pacifico">{{application.name}}</v-toolbar-title>

      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
    </v-app-bar>

    <v-content>
      <v-container>

        <h1>{{ hello }}</h1>

        <!-- Center content should be here -->
     </v-container>

        <ConsultantsList />

    </v-content>

    <v-footer app color="brown">
      <span class="white--text">&copy; {{application.year}}, {{application.corporation}}</span>
      <v-spacer />

      <span class="white--text">{{application.version}}</span>
    </v-footer>
  </v-app>
</template>

<script>
import axios from "axios";

import typewriter from "./js/typewriter";

console.log('This application is using a Typewriter' + typewriter);


import ConsultantsList from "@/components/ConsultantsList";
import addConsultant from "@/components/addConsultant";
export default {
  components: {
    ConsultantsList,
    addConsultant
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
      corporation: "Zenika",
      year: "2020"
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

<style>
@import url("https://fonts.googleapis.com/css?family=Pacifico&display=swap");
@import 'assets/css/typewriter.css';

.font-pacifico {
  font-family: "Pacifico", cursive;
}

#zenika_logo {
  width: 70px;
  padding-top: 30px;
}

/*
TODO Replace rotate effect by grow effect, or bounce ?
*/

.image-rotate {
  overflow: hidden;
  transition-duration: 0.8s;
  transition-property: transform;
}
.image-rotate:hover {
  transform: rotate(360deg);
  -webkit-transform: rotate(360deg);
}
</style>
