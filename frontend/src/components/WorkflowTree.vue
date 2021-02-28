<template>
  <v-card
    class="mx-auto"
    max-width="1200"
  >
    <v-sheet class="pa-4 success ">
      <v-text-field
        v-model="search"
        label="Search Workflows"
        hint="Example: Artefact Name"
        dark
        flat
        clearable
        clear-icon="mdi-close-circle-outline"
      ></v-text-field>
    </v-sheet>
    <v-card-text>
      <v-treeview
        :items="items"
        :search="search"
        :filter="filter"
        :open.sync="open"
      >
      </v-treeview>
    </v-card-text>
  </v-card>
</template>

<script>
export default {
  data: () => ({
    items: [
      {
        id: 1,
        name: 'Group 1',
        children: [
          {
            id: 101,
            name: 'Artefact 1',
          },
          {
            id: 102,
            name: 'Artefact 2',
          },
          {
            id: 103,
            name: 'Artefact 3',
          },
        ],
      },
      {
        id: 2,
        name: 'Group 2',
        children: [
          {
            id: 201,
            name: 'Artefact 21',
          },
          {
            id: 202,
            name: 'Artefact 22',
          },
          {
            id: 203,
            name: 'Artefact 23',
          },
        ],
      },
    ],
    open: [1, 2],
    search: null,
    caseSensitive: false,
  }),
};
</script>
