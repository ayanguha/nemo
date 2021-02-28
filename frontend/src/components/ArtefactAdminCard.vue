<template>
  <v-card
    max-width="250"
  >
    <v-app-bar
      dark
      color="pink"
    >
      <v-toolbar-title>
        Advanced
      </v-toolbar-title>

    </v-app-bar>

    <v-container>
      <v-row dense>
        <v-col cols="12">
          <v-card
            color="purple lighten-3"
          >
            <v-card-title>
              Source
            </v-card-title>

            <v-card-subtitle>
              Connecting first time to a source? Create one here
            </v-card-subtitle>

            <v-card-actions>
              <v-btn text>
                Add
              </v-btn>
              <v-btn text>
                List
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-col>
        <v-col cols="12">
          <v-card
            color="green lighten-3"
          >
            <v-card-title>
              Integration
            </v-card-title>

            <v-card-subtitle>
              Want to compose new patterns?
            </v-card-subtitle>

            <v-card-actions>
              <v-btn text>
                Add
              </v-btn>
              <v-btn text>
                List
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-col>
        <v-col cols="12">
          <v-card
            color="red lighten-3"
          >
            <v-card-title>
              Interface
            </v-card-title>

            <v-card-subtitle>
              Want to register new module?
            </v-card-subtitle>

            <v-card-actions>
              <v-btn text>
                Add
              </v-btn>
              <v-btn text>
                List
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </v-card>
</template>
