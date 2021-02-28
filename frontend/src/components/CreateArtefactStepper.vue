<template>
  <v-stepper v-model="e1">
    <v-stepper-header>
      <v-stepper-step
        :complete="e1 > 1"
        step="1"
      >
        Source
      </v-stepper-step>

      <v-divider></v-divider>
      <v-stepper-step
        :complete="e1 > 2"
        step="2"
      >
        Pattern & Group
      </v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step
        :complete="e1 > 3"
        step="3"
      >
        Attributes
      </v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step step="4">
        Dependency
      </v-stepper-step>

      <v-stepper-step step="5">
        Execution Interval
      </v-stepper-step>

    </v-stepper-header>

    <v-stepper-items>
      <v-stepper-content step="1">
        <v-card
          class="mb-12"
          height="200px"
        >
        <v-autocomplete
            :items="['Oracle', 'SQL Server',
                     'Sybase']"
            label="Choose Source Type"
          ></v-autocomplete>
          <v-autocomplete
              :items="['WARE', 'DERR',
                       'NEM-Settlement']"
              label="Choose Source"
            ></v-autocomplete>
      </v-card>
      <div>
      <v-btn
         class="mx-2" fab dark x-small
         color="grey"
         disabled
        >
        <v-icon dark>
            mdi-arrow-left
        </v-icon>
      </v-btn>

        <v-btn
          class="mx-2" fab dark x-small
          color="primary"
          @click="e1 = 2">
          <v-icon dark>
              mdi-arrow-right
          </v-icon>
        </v-btn>
      </div>
      </v-stepper-content>

      <v-stepper-content step="2">
        <v-card
          class="mb-12"
          height="200px"
        >
        <template>
          <v-autocomplete
              :items="['WARE', 'DERR',
                       'NEM-Settlement']"
              label="Choose Pattern"
          ></v-autocomplete>
          <v-autocomplete
              :items="['WARE', 'DERR',
                       'NEM-Settlement']"
              label="Choose Artefact Group"
            ></v-autocomplete>
       </template>
      </v-card>

        <v-btn
        class="mx-2" fab dark x-small
        color="primary"
        @click="e1 = 1">
        <v-icon dark>
            mdi-arrow-left
        </v-icon>
        </v-btn>

        <v-btn
          class="mx-2" fab dark x-small
          color="primary"
          @click="e1 = 3">
          <v-icon dark>
              mdi-arrow-right
          </v-icon>
        </v-btn>
      </v-stepper-content>

      <v-stepper-content step="3">
        <v-card
          class="mb-12"
          height="200px"
        >
        <template>
          <v-file-input
            :rules="rules"
            filled
            placeholder=""
            prepend-icon="mdi-file-delimited"
            label="Upload Attributes File"
          ></v-file-input>
       </template>

      </v-card>

        <v-btn
        class="mx-2" fab dark x-small
        color="primary"
        @click="e1 = 2">
        <v-icon dark>
            mdi-arrow-left
        </v-icon>
        </v-btn>

        <v-btn
          class="mx-2" fab dark x-small
          color="primary"
          @click="e1 = 4">
          <v-icon dark>
              mdi-arrow-right
          </v-icon>
        </v-btn>
      </v-stepper-content>

      <v-stepper-content step="4">
        <v-card
          class="mb-12"
          height="200px"
        >
        <v-autocomplete
            :items="['WARE', 'DERR',
                     'NEM-Settlement']"
            label="Choose Parent"
            multiple
            chips
          ></v-autocomplete>
        </v-card>

        <v-btn
          class="mx-2" fab dark x-small
          color="primary"
          @click="e1 = 3"
        >
        <v-icon dark>
            mdi-arrow-left
        </v-icon>
        </v-btn>

        <v-btn
          class="mx-2" fab dark x-small
          color="primary"
          @click="e1 = 5"
          >
          <v-icon dark>
              mdi-arrow-right
          </v-icon>
        </v-btn>
      </v-stepper-content>

      <v-stepper-content step="5">
        <v-card
          class="mb-12"
          height="200px"
        >
        <v-text-field
            value="Crontab Style Expression"
            hint="For example, 5 4 * * * For At 04:05 am everyday"
            label="Execution Interval"
          ></v-text-field>
        </v-card>

        <v-btn
          class="mx-2" fab dark x-small
          color="primary"
          @click="e1 = 4"
        >
        <v-icon dark>
            mdi-arrow-left
        </v-icon>
        </v-btn>

        <v-btn
          class="mx-2" fab dark x-small
          color="grey"
          disabled
          >
          <v-icon dark>
              mdi-arrow-right
          </v-icon>
        </v-btn>
      </v-stepper-content>

    </v-stepper-items>
  </v-stepper>
</template>
<script>
export default {
  name: 'CreateArtefactStepper',
  data() {
    return {
      e1: 1,
    };
  },
};
</script>
