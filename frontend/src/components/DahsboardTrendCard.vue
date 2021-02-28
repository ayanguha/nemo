<template>
  <v-card
    class="mt-4 mx-auto"
    max-width="400"
  >
    <v-sheet
      class="v-sheet--offset mx-auto"
      :color="color"
      elevation="12"
      max-width="calc(100% - 32px)"
    >
      <v-sparkline
        :labels="labels"
        :value="value"
        color="white"
        line-width="2"
        padding="16"
      ></v-sparkline>
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
        last calculated  {{ last_calc_min_ago }} minutes ago
      </span>
    </v-card-text>
  </v-card>
</template>

<script>
export default {
  props: {
    title: String,
    last_calc_min_ago: Number,
    labels: Array,
    value: Array,
    color: String,
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
