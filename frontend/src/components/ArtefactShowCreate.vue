<template>
  <v-card class="mt-4 mx-auto my-4"
          max-width="1200">
          <v-card-title>
            <v-toolbar
              flat
            >
              <v-toolbar-title>Artefact</v-toolbar-title>
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
              <v-spacer></v-spacer>
              <CreateArtefact/>
            </v-toolbar>
          </v-card-title>
  <v-data-table
    :headers="headers"
    :items="rows"
    :search="search"
  >
    <template v-slot:item.actions="{ item }">
      <v-icon
        small
        class="mr-2"
        @click="editItem(item)"
      >
        mdi-pencil
      </v-icon>
      <v-icon
        small
        @click="deleteItem(item)"
      >
        mdi-delete
      </v-icon>
    </template>
  </v-data-table>
</v-card>
</template>

<script>
import CreateArtefact from '@/components/CreateArtefact.vue';

export default {
  components: {
    CreateArtefact,
  },
  data: () => ({
    search: '',
    dialog: false,
    dialogDelete: false,
    headers: [
    ],
    rows: [
    ],
  }),
  methods: {
    getArtefacts() {
      this.headers = [
        { text: 'Artefact Name', value: 'name' },
        { text: 'Source Type', value: 'source_type' },
        { text: 'Source', value: 'source' },
        { text: 'Target', value: 'target' },
        { text: 'Artefact Group', value: 'artefact_group' },
        { text: 'Integration Pattern', value: 'pattern' },
        { text: 'Action', value: 'actions' },
      ];
      let i;
      i = 0;
      let randomSourceTypeElement;
      let randomSourceElement;
      let randomTargetTypeElement;
      let randomGroupElement;
      let randomPatternElement;
      let randomElement;

      const sourcetypes = ['Oracle', 'SQL Server', 'Sybase'];
      const sources = ['WARE', 'DERR', 'VPP'];
      const targets = ['Shared Blob', 'EDP'];
      const groups = ['AG1', 'AG2', 'AG3'];
      const patterns = ['DIT000', 'DIT222', 'DIT333'];

      // eslint-disable-next-line
      for (i = 0; i < 50; i = i + 1) {
        randomSourceTypeElement = sourcetypes[Math.floor(Math.random() * sourcetypes.length)];
        randomSourceElement = sources[Math.floor(Math.random() * sources.length)];
        randomTargetTypeElement = targets[Math.floor(Math.random() * targets.length)];
        randomGroupElement = groups[Math.floor(Math.random() * groups.length)];
        randomPatternElement = patterns[Math.floor(Math.random() * patterns.length)];
        randomElement = {
          // eslint-disable-next-line
          name: 'Artefact' + i,
          source_type: randomSourceTypeElement,
          source: randomSourceElement,
          target: randomTargetTypeElement,
          artefact_group: randomGroupElement,
          pattern: randomPatternElement,
        };
        this.rows.push(randomElement);
      }
    },
    editItem(itemToEdit) {
      // eslint-disable-next-line
      console.log(itemToEdit.name);
    },
    deleteItem(itemToDelete) {
      // eslint-disable-next-line
      console.log(itemToDelete.name);
    },
  },
  created() {
    this.getArtefacts();
  },
};
</script>
