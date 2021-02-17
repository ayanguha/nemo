CREATE TABLE "connection_type" (
  "connection_type_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "connection_template" (
  "connection_template_id" VARCHAR PRIMARY KEY,
  "connection_type_id" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "connection_template_property" (
  "connection_template_property_id" VARCHAR PRIMARY KEY,
  "connection_template_id" VARCHAR,
  "name" VARCHAR,
  "value" VARCHAR,
  "is_mandatory" boolean,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "module" (
  "module_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "module_property" (
  "module_property_id" VARCHAR PRIMARY KEY,
  "module_id" VARCHAR,
  "name" VARCHAR,
  "value" VARCHAR,
  "is_mandatory" boolean,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "module_connection_map" (
  "module_connection_map_id" VARCHAR PRIMARY KEY,
  "module_id" VARCHAR,
  "connection_template_id" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "pattern" (
  "pattern_id" VARCHAR PRIMARY KEY,
  "module_id" VARCHAR,
  "order" INT,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "runnable_pattern" (
  "runnable_pattern_id" VARCHAR PRIMARY KEY,
  "pattern_id" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "runnable_pattern_property" (
  "runnable_pattern_property_id" VARCHAR PRIMARY KEY,
  "runnable_pattern_id" VARCHAR,
  "module_property_id" VARCHAR,
  "value" VARCHAR,
  "is_mandatory" boolean,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "runnable_pattern_connection_property" (
  "runnable_pattern_connection_property_id" VARCHAR PRIMARY KEY,
  "runnable_pattern_id" VARCHAR,
  "connection_template_property_id" VARCHAR,
  "value" VARCHAR,
  "is_mandatory" boolean,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "execution_manager" (
  "execution_manager_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "execution_frequency" (
  "execution_frequency_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "execution_status" (
  "execution_status_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "calendar" (
  "calendar_id" VARCHAR PRIMARY KEY,
  "dttm_description" VARCHAR,
  "dttm" timestamp,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "execution_interval" (
  "execution_interval_id" VARCHAR PRIMARY KEY,
  "interval_start_dttm_id" VARCHAR,
  "interval_end_dttm_id" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "artefact" (
  "artefact_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "execution_manager_id" VARCHAR,
  "execution_frequency_id" VARCHAR,
  "runnable_pattern_id" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "artefact_property" (
  "artefact_property_id" VARCHAR PRIMARY KEY,
  "artefact_id" VARCHAR,
  "name" VARCHAR,
  "value" VARCHAR,
  "is_mandatory" boolean,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "artefact_execution_interval" (
  "artefact_execution_interval_id" VARCHAR PRIMARY KEY,
  "artefact_id" VARCHAR,
  "execution_interval_id" VARCHAR,
  "execution_status_id" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "workflow" (
  "workflow_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "artefact_id" VARCHAR,
  "parent_artefact_id" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "data_type" (
  "data_type_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "data_classification" (
  "data_classification_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "treatment" (
  "treatment_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "cleansing_rule" (
  "cleansing_rule_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "cleansing_rule_group" (
  "cleansing_rule_group_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "cleansing_rule_id" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "classification_treatment_map" (
  "classification_treatment_map_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "data_classification_id" VARCHAR,
  "treatment_id" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

CREATE TABLE "artefact_attribute" (
  "artefact_attribute_id" VARCHAR PRIMARY KEY,
  "name" VARCHAR,
  "artefact_id" VARCHAR,
  "data_type_id" VARCHAR,
  "data_classification_id" VARCHAR,
  "cleansing_rule_group_id" VARCHAR,
  "created_at" timestamp,
  "updated_at" timestamp
);

ALTER TABLE "connection_template" ADD FOREIGN KEY ("connection_type_id") REFERENCES "connection_type" ("connection_type_id");

ALTER TABLE "connection_template_property" ADD FOREIGN KEY ("connection_template_id") REFERENCES "connection_template" ("connection_template_id");

ALTER TABLE "module_property" ADD FOREIGN KEY ("module_id") REFERENCES "module" ("module_id");

ALTER TABLE "module_connection_map" ADD FOREIGN KEY ("module_id") REFERENCES "module" ("module_id");

ALTER TABLE "module_connection_map" ADD FOREIGN KEY ("connection_template_id") REFERENCES "connection_template" ("connection_template_id");

ALTER TABLE "pattern" ADD FOREIGN KEY ("module_id") REFERENCES "module" ("module_id");

ALTER TABLE "runnable_pattern" ADD FOREIGN KEY ("pattern_id") REFERENCES "pattern" ("pattern_id");

ALTER TABLE "runnable_pattern_property" ADD FOREIGN KEY ("runnable_pattern_id") REFERENCES "runnable_pattern" ("runnable_pattern_id");

ALTER TABLE "runnable_pattern_property" ADD FOREIGN KEY ("module_property_id") REFERENCES "module_property" ("module_property_id");

ALTER TABLE "runnable_pattern_connection_property" ADD FOREIGN KEY ("runnable_pattern_id") REFERENCES "runnable_pattern" ("runnable_pattern_id");

ALTER TABLE "runnable_pattern_connection_property" ADD FOREIGN KEY ("connection_template_property_id") REFERENCES "connection_template_property" ("connection_template_property_id");

ALTER TABLE "execution_interval" ADD FOREIGN KEY ("interval_start_dttm_id") REFERENCES "calendar" ("calendar_id");

ALTER TABLE "execution_interval" ADD FOREIGN KEY ("interval_end_dttm_id") REFERENCES "calendar" ("calendar_id");

ALTER TABLE "artefact" ADD FOREIGN KEY ("execution_manager_id") REFERENCES "execution_manager" ("execution_manager_id");

ALTER TABLE "artefact" ADD FOREIGN KEY ("execution_frequency_id") REFERENCES "execution_frequency" ("execution_frequency_id");

ALTER TABLE "artefact" ADD FOREIGN KEY ("runnable_pattern_id") REFERENCES "runnable_pattern" ("runnable_pattern_id");

ALTER TABLE "artefact_property" ADD FOREIGN KEY ("artefact_id") REFERENCES "artefact" ("artefact_id");

ALTER TABLE "artefact_execution_interval" ADD FOREIGN KEY ("artefact_id") REFERENCES "artefact" ("artefact_id");

ALTER TABLE "artefact_execution_interval" ADD FOREIGN KEY ("execution_interval_id") REFERENCES "execution_interval" ("execution_interval_id");

ALTER TABLE "artefact_execution_interval" ADD FOREIGN KEY ("execution_status_id") REFERENCES "execution_status" ("execution_status_id");

ALTER TABLE "workflow" ADD FOREIGN KEY ("artefact_id") REFERENCES "artefact" ("artefact_id");

ALTER TABLE "workflow" ADD FOREIGN KEY ("parent_artefact_id") REFERENCES "artefact" ("artefact_id");

ALTER TABLE "cleansing_rule_group" ADD FOREIGN KEY ("cleansing_rule_id") REFERENCES "cleansing_rule" ("cleansing_rule_id");

ALTER TABLE "classification_treatment_map" ADD FOREIGN KEY ("data_classification_id") REFERENCES "data_classification" ("data_classification_id");

ALTER TABLE "classification_treatment_map" ADD FOREIGN KEY ("treatment_id") REFERENCES "treatment" ("treatment_id");

ALTER TABLE "artefact_attribute" ADD FOREIGN KEY ("artefact_id") REFERENCES "artefact" ("artefact_id");

ALTER TABLE "artefact_attribute" ADD FOREIGN KEY ("data_type_id") REFERENCES "data_type" ("data_type_id");

ALTER TABLE "artefact_attribute" ADD FOREIGN KEY ("data_classification_id") REFERENCES "data_classification" ("data_classification_id");

ALTER TABLE "artefact_attribute" ADD FOREIGN KEY ("cleansing_rule_group_id") REFERENCES "cleansing_rule_group" ("cleansing_rule_group_id");
