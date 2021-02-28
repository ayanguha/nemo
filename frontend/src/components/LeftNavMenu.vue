<template>
  <div class="container"
  >
    <v-list
        nav
      >
      <v-list-item color="purple">
          <v-list-item-avatar
           size="62"
           tile
           >
            <v-img src="@/assets/mvr.png"></v-img>
          </v-list-item-avatar>
      </v-list-item>
      <v-divider></v-divider>
      <v-list-item
          v-for="item in items"
          :key="item.title"
          :to="item.link"
          link
        >
          <v-list-item-icon>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>

          <v-list-item-content>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </div>
</template>

<script>
export default {
  data() {
    return {
      items: [
        { title: 'Dashboard', icon: 'mdi-view-dashboard', link: '/' },
        { title: 'Artefact', icon: 'mdi-data-matrix', link: '/artefact' },
        { title: 'Workflow', icon: 'mdi-cable-data', link: '/workflow' },
        { title: 'Monitroing', icon: 'mdi-radar', link: '/monitoring' },
        { title: 'Documentation', icon: 'mdi-help-box', link: '/about' },
      ],
      right: null,
    };
  },
};
</script>
