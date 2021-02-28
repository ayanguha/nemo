<template>
  <v-row justify="center">
    <v-dialog
      v-model="dialog"
      persistent
      max-width="1000px"
    >
      <template v-slot:activator="{ on, attrs }">
        <v-btn
          color="primary"
          dark
          v-bind="attrs"
          v-on="on"
        >
          Add Artefact
        </v-btn>
      </template>
      <v-card>
        <v-card-title>
          <span class="headline">Create New Artefact</span>
        </v-card-title>
        <v-card-text>
          <v-container>
            <v-row>
              <v-col
                cols="12"
                sm="12"
                md="12"
              >
              <CreateArtefactStepper/>

              </v-col>
            </v-row>
          </v-container>
          <small>*indicates required field</small>
        </v-card-text>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn
            color="blue darken-1"
            text
            @click="dialog = false"
          >
            Close
          </v-btn>
          <v-btn
            color="blue darken-1"
            text
            @click="dialog = false"
          >
            Save
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-row>
</template>

<script>
import CreateArtefactStepper from '@/components/CreateArtefactStepper.vue';

export default {
  name: 'CreateArtefact',
  components: {
    CreateArtefactStepper,
  },
  data: () => ({
    dialog: false,
  }),
};
</script>
