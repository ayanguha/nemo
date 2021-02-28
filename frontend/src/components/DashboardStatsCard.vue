<template>
  <v-card
    class="mt-4 mx-auto"
    max-width="400"
  >
    <v-sheet
      class="v-sheet--offset mx-auto"
      color="cyan"
      elevation="12"
      max-width="calc(100% - 32px)"
    >
    <v-sheet
       class="mt-4 mx-auto"
       color="white"
       elevation="1"
       height="100"
       width="100"
   > <h1> {{ stats }} </h1> </v-sheet>
    </v-sheet>
    <v-card-text class="pt-0">
      <div class="title mb-2">
        {{ title }}
      </div>
    <v-divider class="my-2"></v-divider>
      <v-icon
        class="mr-2"
        small
      >
        mdi-clock
      </v-icon>
      <span class="caption grey--text font-weight-light">
        last calculated  {{ last_calc_min_ago }} minutes ago</span>
    </v-card-text>
  </v-card>
</template>

<script>
export default {
  props: {
    title: String,
    last_calc_min_ago: Number,
    stats: Number,
  },
  data: () => ({
  }),
};
</script>

<style>
  .v-sheet--offset {
    top: -24px;
    position: relative;
  }
</style>
