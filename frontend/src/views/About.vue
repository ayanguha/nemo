<template>
  <v-container fluid class="grey lighten-5">
    <v-row>
      <v-col
        cols="12"
        sm="10"
      >
        <v-sheet
          min-height="85vh"
          rounded="lg"
          color="grey lighten-4"
          class="pa-4"
        >
          <Documentation/>
        </v-sheet>
      </v-col>

    </v-row>

  </v-container>
</template>

<script>
// @ is an alias to /src
import Documentation from '@/components/Documentation.vue';

export default {
  name: 'Artefact',
  components: {
    Documentation,
  },
};
</script>
