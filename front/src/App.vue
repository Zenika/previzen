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

            <img class="image-rotate" alt="zenika_logo" id="zenika_logo" src="./assets/png/zenika_logo_white.png">

            <div class="typewriter">
                <h1 class="">The simple way to manage your Zenika's consultants.</h1>
            </div>

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
        padding-top: 30px;
    }

    .image-rotate {
        overflow: hidden;
        transition-duration: 0.8s;
        transition-property: transform;
    }
    .image-rotate:hover {
        transform: rotate(360deg);
        -webkit-transform: rotate(360deg);
    }

    .typewriter h1 {
        padding-left: 20px;
        font-size: 20px;

        overflow: hidden; /* Ensures the content is not revealed until the animation */
        border-right: .15em solid white; /* The typwriter cursor */
        white-space: nowrap; /* Keeps the content on a single line */
        margin: 0 auto; /* Gives that scrolling effect as the typing happens */
        letter-spacing: 0.10em; /* Adjust as needed */
        animation:
                typing 4s steps(40, end),
                blink-caret .75s step-end infinite;
    }

    /* The typing effect */
    @keyframes typing {
        from { width: 0 }
        to { width: 100% }
    }

    /* The typewriter cursor effect */
    @keyframes blink-caret {
        from, to { border-color: transparent }
        50% { border-color: white; }
    }

</style>
