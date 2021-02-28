<template>
<v-container fluid class="grey lighten-5">
  <v-row no-gutters>
    <v-col cols="8" sm="4">
      <v-sheet
        min-height="30vh"
        rounded="lg"
        color="purple"
      >
      <DashboardTrendCard
      title="Records Processed (Last 7 days)"
      :last_calc_min_ago=5
      :labels="l1"
      :value="v1"
      color="deep-purple"
      ></DashboardTrendCard>
    </v-sheet>
    </v-col>
    <v-col cols="8" sm="4">
      <v-sheet
        min-height="30vh"
        rounded="lg"
        color="red"
      >
      <DashboardTrendCard
      title="Processes Run (Last 7 Days)"
      :last_calc_min_ago=5
      :labels="l2"
      :value="v2"
      color="deep-orange"
      ></DashboardTrendCard>
    </v-sheet>
    </v-col>
    <v-col cols="8" sm="4">
      <v-sheet
        min-height="30vh"
        rounded="lg"
        color="success"
      >
      <DashboardStatsCard
      title="Failures (Last 24 Hours)"
      :last_calc_min_ago=5
      :stats=101
      ></DashboardStatsCard>
    </v-sheet>
    </v-col>
  </v-row>
  <v-row no-gutters>
    <v-col cols="8" sm="6">
      <v-sheet
        min-height="50vh"
        rounded="lg"
        color="purple"
        class="pa-4"
      >
      <DashboardTable
      :title="t1"
      :headers="h1"
      :rows="r1"
      />
      </v-sheet>
    </v-col>
    <v-col cols="8" sm="6">
      <v-sheet
        min-height="50vh"
        rounded="lg"
        color="red"
        class="pa-4"
      >
      <DashboardTable
      :title="t2"
      :headers="h2"
      :rows="r2"
      />
      </v-sheet>
    </v-col>
  </v-row>
</v-container>
</template>

<script>

import DashboardTrendCard from '@/components/DahsboardTrendCard.vue';
import DashboardStatsCard from '@/components/DashboardStatsCard.vue';
import DashboardTable from '@/components/DashboardTable.vue';

export default {
  name: 'Dashboard',
  components: {
    DashboardTrendCard,
    DashboardStatsCard,
    DashboardTable,
  },
  data: () => ({
    l1: [
      '12am', '3am', '6am', '9am', '12pm',
      '3pm', '6pm', '9pm',
    ],
    v1: [
      200, 675, 410, 390, 310, 460,
      250, 240],
    l2: [
      'Mon', 'Tue', 'Wed', 'Thu', 'Fri',
      'Sat', 'Sun',
    ],
    v2: [
      20, 4, 40, 80, 0, 40,
      250, 240],
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
    t2: 'Open Incidents',
    h2: [
      { text: 'Incident Id', value: 'incident_id' },
      { text: 'Raised BY', value: 'raised_by' },
      { text: 'Severity', value: 'severity' },
      { text: 'Age', value: 'age' },
    ],
    r2: [
      {
        incident_id: '100100',
        raised_by: 'Mark Taylor',
        severity: 'High',
        age: '2 Days',
      },
    ],
  }),
};
</script>
