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
          color="info"
          class="pa-4"
        >
        <WorkflowTree/>
        </v-sheet>
      </v-col>

      <v-col
        cols="12"
        sm="2"
      >
        <v-sheet
          rounded="lg"
          min-height="50vh"
          color="primary"
        >
        </v-sheet>
      </v-col>
    </v-row>

  </v-container>
</template>

<script>
// @ is an alias to /src
import WorkflowTree from '@/components/WorkflowTree.vue';

export default {
  name: 'Workflow',
  components: {
    WorkflowTree,
  },
};
</script>
