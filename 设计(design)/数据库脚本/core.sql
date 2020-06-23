/*
Navicat PGSQL Data Transfer

Source Server         : escpostgresql
Source Server Version : 101000
Source Host           : 39.107.127.218:5431
Source Database       : student
Source Schema         : core

Target Server Type    : PGSQL
Target Server Version : 101000
File Encoding         : 65001

Date: 2020-06-23 16:58:38
*/


-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS "core"."classes";
CREATE TABLE "core"."classes" (
"c_id" int4 NOT NULL,
"c_name" varchar(50) COLLATE "default",
"c_teacher" varchar(50) COLLATE "default",
"c_room" varchar(30) COLLATE "default",
"c_total" int4,
"c_year" int2,
"c_depart" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "core"."classes"."c_id" IS '班级唯一标识';
COMMENT ON COLUMN "core"."classes"."c_name" IS '班级名字';
COMMENT ON COLUMN "core"."classes"."c_teacher" IS '班主任';
COMMENT ON COLUMN "core"."classes"."c_room" IS '教室';
COMMENT ON COLUMN "core"."classes"."c_total" IS '学生总数';
COMMENT ON COLUMN "core"."classes"."c_year" IS '年制';
COMMENT ON COLUMN "core"."classes"."c_depart" IS '所属院系';

-- ----------------------------
-- Records of classes
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "core"."student";
CREATE TABLE "core"."student" (
"s_id" int4 NOT NULL,
"s_name" varchar(255) COLLATE "default",
"s_age" int4,
"s_sex" varchar(10) COLLATE "default",
"s_create_time" timestamp(6),
"s_update_time" timestamp(6),
"s_ext1" varchar(255) COLLATE "default",
"s_birthday" timestamp(6),
"s_ext2" varchar(255) COLLATE "default",
"s_c_id" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "core"."student"."s_id" IS '学生唯一标识';
COMMENT ON COLUMN "core"."student"."s_name" IS '学生姓名';
COMMENT ON COLUMN "core"."student"."s_age" IS '学生年龄';
COMMENT ON COLUMN "core"."student"."s_sex" IS '性别：男/女';
COMMENT ON COLUMN "core"."student"."s_create_time" IS '创建时间';
COMMENT ON COLUMN "core"."student"."s_ext1" IS '预留字段';
COMMENT ON COLUMN "core"."student"."s_birthday" IS '学生生日';
COMMENT ON COLUMN "core"."student"."s_ext2" IS '预留字段2';
COMMENT ON COLUMN "core"."student"."s_c_id" IS '学生班级标识-外键';

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS "core"."teacher";
CREATE TABLE "core"."teacher" (
"t_id" int4 NOT NULL,
"t_name" varchar(255) COLLATE "default",
"t_age" varchar(255) COLLATE "default",
"t_phone" varchar(255) COLLATE "default",
"t_sex" varchar(255) COLLATE "default",
"t_course" varchar(255) COLLATE "default",
"t_rank" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "core"."teacher"."t_id" IS '唯一标识';
COMMENT ON COLUMN "core"."teacher"."t_name" IS '姓名';
COMMENT ON COLUMN "core"."teacher"."t_age" IS '年龄';
COMMENT ON COLUMN "core"."teacher"."t_phone" IS '手机号码';
COMMENT ON COLUMN "core"."teacher"."t_sex" IS '性别';
COMMENT ON COLUMN "core"."teacher"."t_course" IS '所教课程';
COMMENT ON COLUMN "core"."teacher"."t_rank" IS '职称';

-- ----------------------------
-- Records of teacher
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table classes
-- ----------------------------
ALTER TABLE "core"."classes" ADD PRIMARY KEY ("c_id");

-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE "core"."student" ADD PRIMARY KEY ("s_id");

-- ----------------------------
-- Primary Key structure for table teacher
-- ----------------------------
ALTER TABLE "core"."teacher" ADD PRIMARY KEY ("t_id");
