<template>
  <v-app id="inspire">
    <v-snackbar v-model="success" :timeout="4000" top color="success">
      <span>{{ text }}</span>
      <v-btn color="white" text @click="success = false">Close</v-btn>
    </v-snackbar>

    <v-navigation-drawer app right v-model="drawer">
      <v-list dense>
        <v-list-item>
          <addConsultant @consultantAdded="success = true; drawer = false; text = 'Awesome! You successfully added this consultant.'" />
        </v-list-item>
        <v-list-item>
          <addAgency @agencyAdded="success = true; drawer = false; text = 'Awesome! You successfully added this agency.'"/>
        </v-list-item>
        <v-list-item>
          <AgenciesList />
        </v-list-item>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar app color="brown" dark>
      <img
        class="hvr-hang"
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
        <ConsultantsList />
      </v-container>
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
import addConsultant from "@/components/forms/addConsultant";
import addAgency from "@/components/forms/addAgency";
import AgenciesList from "@/components/AgenciesList";
export default {
  components: {
    ConsultantsList,
    addConsultant,
    addAgency,
    AgenciesList
  },
  name: "LayoutsDemosBaselineFlipped",

  props: {
    source: String
  },
  data: () => ({
    drawer: false,
    success: false,
    text: '',
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
TODO Review Zenika icon effect ...
*/

/* Hang */
@-webkit-keyframes hvr-hang {
  0% {
    -webkit-transform: translateY(8px);
    transform: translateY(8px);
  }
  50% {
    -webkit-transform: translateY(4px);
    transform: translateY(4px);
  }
  100% {
    -webkit-transform: translateY(8px);
    transform: translateY(8px);
  }
}
@keyframes hvr-hang {
  0% {
    -webkit-transform: translateY(8px);
    transform: translateY(8px);
  }
  50% {
    -webkit-transform: translateY(4px);
    transform: translateY(4px);
  }
  100% {
    -webkit-transform: translateY(8px);
    transform: translateY(8px);
  }
}
@-webkit-keyframes hvr-hang-sink {
  100% {
    -webkit-transform: translateY(8px);
    transform: translateY(8px);
  }
}
@keyframes hvr-hang-sink {
  100% {
    -webkit-transform: translateY(8px);
    transform: translateY(8px);
  }
}
.hvr-hang {
  display: inline-block;
  vertical-align: middle;
  -webkit-transform: perspective(1px) translateZ(0);
  transform: perspective(1px) translateZ(0);
  box-shadow: 0 0 1px rgba(0, 0, 0, 0);
}
.hvr-hang:hover, .hvr-hang:focus, .hvr-hang:active {
  -webkit-animation-name: hvr-hang-sink, hvr-hang;
  animation-name: hvr-hang-sink, hvr-hang;
  -webkit-animation-duration: .3s, 1.5s;
  animation-duration: .3s, 1.5s;
  -webkit-animation-delay: 0s, .3s;
  animation-delay: 0s, .3s;
  -webkit-animation-timing-function: ease-out, ease-in-out;
  animation-timing-function: ease-out, ease-in-out;
  -webkit-animation-iteration-count: 1, infinite;
  animation-iteration-count: 1, infinite;
  -webkit-animation-fill-mode: forwards;
  animation-fill-mode: forwards;
  -webkit-animation-direction: normal, alternate;
  animation-direction: normal, alternate;
}

</style>
