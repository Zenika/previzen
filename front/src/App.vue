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

            <img alt="zenika_logo" id="zenika_logo" src="./assets/png/zenika_logo_white.png">

            <v-spacer/>

            <v-toolbar-title class="font-pacifico">{{application.name}}</v-toolbar-title>

            <v-app-bar-nav-icon @click.stop="drawer = !drawer"/>
        </v-app-bar>

        <v-content>
            <v-container>
                <h1>{{ hello }}</h1>

                <!-- Center content should be here -->

            </v-container>
        </v-content>

        <v-footer app color="brown">
            <span class="white--text">&copy; {{application.year}}, {{application.corporation}}</span>
            <v-spacer/>

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
                corporation: "Zenika",
                year: '2020'
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

<style>

    @import url('https://fonts.googleapis.com/css?family=Pacifico&display=swap');

    .font-pacifico {
        font-family: 'Pacifico', cursive;
    }

    #zenika_logo {
        width: 70px;
        padding-top: 40px;
    }

</style>
