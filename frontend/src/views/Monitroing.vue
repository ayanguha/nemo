<template>
  <v-container fluid class="grey lighten-5">
    <v-row>
      <v-col
        cols="12"
        sm="12"
      >
        <v-sheet
          min-height="90vh"
          rounded="lg"
          color="purple"
          class="pa-4"
        >
        <DashboardTable
        :title="t1"
        :headers="h1"
        :rows="r1"
        >
        </DashboardTable>
      </v-sheet>
      </v-col>
    </v-row>

  </v-container>
</template>

<script>
// @ is an alias to /src
import DashboardTable from '@/components/DashboardTable.vue';

export default {
  name: 'Dashboard',
  components: {
    DashboardTable,
  },
  data: () => ({
    t1: 'First Table',
    h1: [
      { text: 'Dessert (100g serving)', value: 'name' },
      { text: 'Calories', value: 'calories' },
      { text: 'Fat (g)', value: 'fat' },
      { text: 'Carbs (g)', value: 'carbs' },
      { text: 'Protein (g)', value: 'protein' },
      { text: 'Iron (%)', value: 'iron' },
    ],
    r1: [
      {
        name: 'KitKat',
        calories: 518,
        fat: 26.0,
        carbs: 65,
        protein: 7,
        iron: '6%',
        color: 'green',
      },
      {
        name: 'SOmething else',
        calories: 518,
        fat: 26.0,
        carbs: 65,
        protein: 7,
        iron: '6%',
        color: 'green',
      },
    ],
  }),
};
</script>
