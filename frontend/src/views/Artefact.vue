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
          color="orange"
          class="pa-4"
        >
          <ArtefactShowCreate/>
        </v-sheet>
      </v-col>

      <v-col
        cols="12"
        sm="2"
      >
        <v-sheet
          rounded="lg"
          min-height="50vh"
          color="purple"
        >
        <ArtefactAdminCard/>
        </v-sheet>
      </v-col>
    </v-row>

  </v-container>
</template>

<script>
// @ is an alias to /src
import ArtefactShowCreate from '@/components/ArtefactShowCreate.vue';
import ArtefactAdminCard from '@/components/ArtefactAdminCard.vue';

export default {
  name: 'Artefact',
  components: {
    ArtefactShowCreate,
    ArtefactAdminCard,
  },
};
</script>
