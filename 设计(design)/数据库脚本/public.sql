/*
Navicat PGSQL Data Transfer

Source Server         : escpostgresql
Source Server Version : 101000
Source Host           : 39.107.127.218:5431
Source Database       : student
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 101000
File Encoding         : 65001

Date: 2020-06-23 17:00:46
*/


-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_blob_triggers";
CREATE TABLE "public"."qrtz_blob_triggers" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"trigger_name" varchar(200) COLLATE "default" NOT NULL,
"trigger_group" varchar(200) COLLATE "default" NOT NULL,
"blob_data" bytea
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_calendars";
CREATE TABLE "public"."qrtz_calendars" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"calendar_name" varchar(200) COLLATE "default" NOT NULL,
"calendar" bytea NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_cron_triggers";
CREATE TABLE "public"."qrtz_cron_triggers" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"trigger_name" varchar(200) COLLATE "default" NOT NULL,
"trigger_group" varchar(200) COLLATE "default" NOT NULL,
"cron_expression" varchar(120) COLLATE "default" NOT NULL,
"time_zone_id" varchar(80) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_fired_triggers";
CREATE TABLE "public"."qrtz_fired_triggers" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"entry_id" varchar(95) COLLATE "default" NOT NULL,
"trigger_name" varchar(200) COLLATE "default" NOT NULL,
"trigger_group" varchar(200) COLLATE "default" NOT NULL,
"instance_name" varchar(200) COLLATE "default" NOT NULL,
"fired_time" int8 NOT NULL,
"sched_time" int8 NOT NULL,
"priority" int4 NOT NULL,
"state" varchar(16) COLLATE "default" NOT NULL,
"job_name" varchar(200) COLLATE "default",
"job_group" varchar(200) COLLATE "default",
"is_nonconcurrent" bool,
"requests_recovery" bool
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_job_details";
CREATE TABLE "public"."qrtz_job_details" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"job_name" varchar(200) COLLATE "default" NOT NULL,
"job_group" varchar(200) COLLATE "default" NOT NULL,
"description" varchar(250) COLLATE "default",
"job_class_name" varchar(250) COLLATE "default" NOT NULL,
"is_durable" bool NOT NULL,
"is_nonconcurrent" bool NOT NULL,
"is_update_data" bool NOT NULL,
"requests_recovery" bool NOT NULL,
"job_data" bytea
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_locks";
CREATE TABLE "public"."qrtz_locks" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"lock_name" varchar(40) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_paused_trigger_grps";
CREATE TABLE "public"."qrtz_paused_trigger_grps" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"trigger_group" varchar(200) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_scheduler_state";
CREATE TABLE "public"."qrtz_scheduler_state" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"instance_name" varchar(200) COLLATE "default" NOT NULL,
"last_checkin_time" int8 NOT NULL,
"checkin_interval" int8 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_simple_triggers";
CREATE TABLE "public"."qrtz_simple_triggers" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"trigger_name" varchar(200) COLLATE "default" NOT NULL,
"trigger_group" varchar(200) COLLATE "default" NOT NULL,
"repeat_count" int8 NOT NULL,
"repeat_interval" int8 NOT NULL,
"times_triggered" int8 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_simprop_triggers";
CREATE TABLE "public"."qrtz_simprop_triggers" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"trigger_name" varchar(200) COLLATE "default" NOT NULL,
"trigger_group" varchar(200) COLLATE "default" NOT NULL,
"str_prop_1" varchar(512) COLLATE "default",
"str_prop_2" varchar(512) COLLATE "default",
"str_prop_3" varchar(512) COLLATE "default",
"int_prop_1" int4,
"int_prop_2" int4,
"long_prop_1" int8,
"long_prop_2" int8,
"dec_prop_1" numeric(13,4),
"dec_prop_2" numeric(13,4),
"bool_prop_1" bool,
"bool_prop_2" bool
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS "public"."qrtz_triggers";
CREATE TABLE "public"."qrtz_triggers" (
"sched_name" varchar(120) COLLATE "default" NOT NULL,
"trigger_name" varchar(200) COLLATE "default" NOT NULL,
"trigger_group" varchar(200) COLLATE "default" NOT NULL,
"job_name" varchar(200) COLLATE "default" NOT NULL,
"job_group" varchar(200) COLLATE "default" NOT NULL,
"description" varchar(250) COLLATE "default",
"next_fire_time" int8,
"prev_fire_time" int8,
"priority" int4,
"trigger_state" varchar(16) COLLATE "default" NOT NULL,
"trigger_type" varchar(8) COLLATE "default" NOT NULL,
"start_time" int8 NOT NULL,
"end_time" int8,
"calendar_name" varchar(200) COLLATE "default",
"misfire_instr" int2,
"job_data" bytea
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_blob_triggers" ADD PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_calendars
-- ----------------------------
ALTER TABLE "public"."qrtz_calendars" ADD PRIMARY KEY ("sched_name", "calendar_name");

-- ----------------------------
-- Primary Key structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_cron_triggers" ADD PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_fired_triggers
-- ----------------------------
CREATE INDEX "idx_qrtz_ft_trig_inst_name" ON "public"."qrtz_fired_triggers" USING btree ("sched_name", "instance_name");
CREATE INDEX "idx_qrtz_ft_inst_job_req_rcvry" ON "public"."qrtz_fired_triggers" USING btree ("sched_name", "instance_name", "requests_recovery");
CREATE INDEX "idx_qrtz_ft_j_g" ON "public"."qrtz_fired_triggers" USING btree ("sched_name", "job_name", "job_group");
CREATE INDEX "idx_qrtz_ft_jg" ON "public"."qrtz_fired_triggers" USING btree ("sched_name", "job_group");
CREATE INDEX "idx_qrtz_ft_t_g" ON "public"."qrtz_fired_triggers" USING btree ("sched_name", "trigger_name", "trigger_group");
CREATE INDEX "idx_qrtz_ft_tg" ON "public"."qrtz_fired_triggers" USING btree ("sched_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_fired_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_fired_triggers" ADD PRIMARY KEY ("sched_name", "entry_id");

-- ----------------------------
-- Indexes structure for table qrtz_job_details
-- ----------------------------
CREATE INDEX "idx_qrtz_j_req_recovery" ON "public"."qrtz_job_details" USING btree ("sched_name", "requests_recovery");
CREATE INDEX "idx_qrtz_j_grp" ON "public"."qrtz_job_details" USING btree ("sched_name", "job_group");

-- ----------------------------
-- Primary Key structure for table qrtz_job_details
-- ----------------------------
ALTER TABLE "public"."qrtz_job_details" ADD PRIMARY KEY ("sched_name", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table qrtz_locks
-- ----------------------------
ALTER TABLE "public"."qrtz_locks" ADD PRIMARY KEY ("sched_name", "lock_name");

-- ----------------------------
-- Primary Key structure for table qrtz_paused_trigger_grps
-- ----------------------------
ALTER TABLE "public"."qrtz_paused_trigger_grps" ADD PRIMARY KEY ("sched_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_scheduler_state
-- ----------------------------
ALTER TABLE "public"."qrtz_scheduler_state" ADD PRIMARY KEY ("sched_name", "instance_name");

-- ----------------------------
-- Primary Key structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simple_triggers" ADD PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_simprop_triggers" ADD PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE INDEX "idx_qrtz_t_j" ON "public"."qrtz_triggers" USING btree ("sched_name", "job_name", "job_group");
CREATE INDEX "idx_qrtz_t_jg" ON "public"."qrtz_triggers" USING btree ("sched_name", "job_group");
CREATE INDEX "idx_qrtz_t_c" ON "public"."qrtz_triggers" USING btree ("sched_name", "calendar_name");
CREATE INDEX "idx_qrtz_t_g" ON "public"."qrtz_triggers" USING btree ("sched_name", "trigger_group");
CREATE INDEX "idx_qrtz_t_state" ON "public"."qrtz_triggers" USING btree ("sched_name", "trigger_state");
CREATE INDEX "idx_qrtz_t_n_state" ON "public"."qrtz_triggers" USING btree ("sched_name", "trigger_name", "trigger_group", "trigger_state");
CREATE INDEX "idx_qrtz_t_n_g_state" ON "public"."qrtz_triggers" USING btree ("sched_name", "trigger_group", "trigger_state");
CREATE INDEX "idx_qrtz_t_next_fire_time" ON "public"."qrtz_triggers" USING btree ("sched_name", "next_fire_time");
CREATE INDEX "idx_qrtz_t_nft_st" ON "public"."qrtz_triggers" USING btree ("sched_name", "trigger_state", "next_fire_time");
CREATE INDEX "idx_qrtz_t_nft_misfire" ON "public"."qrtz_triggers" USING btree ("sched_name", "misfire_instr", "next_fire_time");
CREATE INDEX "idx_qrtz_t_nft_st_misfire" ON "public"."qrtz_triggers" USING btree ("sched_name", "misfire_instr", "next_fire_time", "trigger_state");
CREATE INDEX "idx_qrtz_t_nft_st_misfire_grp" ON "public"."qrtz_triggers" USING btree ("sched_name", "misfire_instr", "next_fire_time", "trigger_group", "trigger_state");

-- ----------------------------
-- Primary Key structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "public"."qrtz_triggers" ADD PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Foreign Key structure for table "public"."qrtz_blob_triggers"
-- ----------------------------
ALTER TABLE "public"."qrtz_blob_triggers" ADD FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."qrtz_cron_triggers"
-- ----------------------------
ALTER TABLE "public"."qrtz_cron_triggers" ADD FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."qrtz_simple_triggers"
-- ----------------------------
ALTER TABLE "public"."qrtz_simple_triggers" ADD FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."qrtz_simprop_triggers"
-- ----------------------------
ALTER TABLE "public"."qrtz_simprop_triggers" ADD FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "public"."qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."qrtz_triggers"
-- ----------------------------
ALTER TABLE "public"."qrtz_triggers" ADD FOREIGN KEY ("sched_name", "job_name", "job_group") REFERENCES "public"."qrtz_job_details" ("sched_name", "job_name", "job_group") ON DELETE NO ACTION ON UPDATE NO ACTION;
