<template>
<v-app>
  <v-system-bar app
      color="primary"
    >
    </v-system-bar>

  <v-navigation-drawer app
       permanent>
    <LeftNavMenu/>
  </v-navigation-drawer>

  <v-app-bar app
     absolute
     elevate-on-scroll
     shrink-on-scroll
     dense
     fade-img-on-scroll
   >
    <p class="h1 pa-4 ma-4 text-black "> {{$route.name}} </p>
    <v-spacer/>
    <v-badge class="ma-8"
        :content="messages"
        :value="messages"
        color="green"
        overlap
      >
        <v-icon>
          mdi-bell
        </v-icon>
      </v-badge>
  </v-app-bar>

  <!-- Sizes your content based upon application components -->
  <v-main>

    <!-- Provides the application the proper gutter -->
    <v-container fluid>

      <!-- If using vue-router -->
      <router-view></router-view>
    </v-container>
  </v-main>

  <v-footer app
  padless>
    <Footer/>
  </v-footer>
</v-app>
</template>
<script>

import LeftNavMenu from '@/components/LeftNavMenu.vue';
import Footer from '@/components/Footer.vue';

export default {
  name: 'App',
  components: {
    LeftNavMenu,
    Footer,
  },
  data() {
    return {
      messages: 20,
    };
  },
};
</script>
