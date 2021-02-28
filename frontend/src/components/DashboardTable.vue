<template>
  <v-card class="mt-4 mx-auto my-4"
          max-width="1200">
    <v-card-title>
      <v-toolbar
        flat
      >
        <v-toolbar-title>{{ title }}</v-toolbar-title>
        <v-divider
          class="mx-4"
          inset
          vertical
        ></v-divider>
        <v-spacer></v-spacer>
        <v-text-field
          v-model="search"
          append-icon="mdi-magnify"
          label="Search"
          single-line
          hide-details
        ></v-text-field>
      </v-toolbar>
    </v-card-title>

    <v-data-table
      :headers="headers"
      :items="rows"
      :search="search"
    >
  </v-data-table>
  </v-card>
</template>

<script>
export default {
  props: {
    title: String,
    headers: Array,
    rows: Array,
  },
  data() {
    return {
      search: '',
    };
  },
};
</script>
