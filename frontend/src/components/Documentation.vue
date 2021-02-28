<template>
  <v-carousel v-model="model"
  cycle
  hide-delimiter-background
  height="600"
  interval="2000">
    <v-carousel-item
      v-for="(color, i) in colors"
      :key="color"
    >
      <v-sheet
        :color="color"
        height="100%"
        tile
      >
        <v-row
          class="fill-height"
          align="center"
          justify="center"
        >
        <v-container fluid>
          <div class="pa-8 display-3"
          align="center"
          justify="center"
          >
            {{ slides[i]}}
          </div>
          <v-divider class="pa-8">
          </v-divider>
          <div
            class="pa-8"
            align="center"
            justify="center"
          >
          <v-btn
          color="primary"
          align="center"
          justify="center">
            Click to Open Documentation
          </v-btn>
          </div>

        </v-container>
        </v-row>
      </v-sheet>
    </v-carousel-item>
  </v-carousel>
</template>

<script>
export default {
  data() {
    return {
      model: null,
      colors: [
        'red lighten-1',
        'red lighten-1',
        'red lighten-1',
        'red lighten-1',
        'red lighten-1',
        'red lighten-1',
      ],
      slides: [
        'Getting Started',
        'Foundation and Concepts',
        'Backend Data Model',
        'REST API',
        'Advanced - CI/CD',
        'ETL Integration',
      ],
    };
  },
};
</script>
