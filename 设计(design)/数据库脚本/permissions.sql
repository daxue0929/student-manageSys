/*
Navicat PGSQL Data Transfer

Source Server         : escpostgresql
Source Server Version : 101000
Source Host           : 39.107.127.218:5431
Source Database       : student
Source Schema         : permissions

Target Server Type    : PGSQL
Target Server Version : 101000
File Encoding         : 65001

Date: 2020-06-23 17:00:20
*/


-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."group";
CREATE TABLE "permissions"."group" (
"tg_id" int4 NOT NULL,
"group_name" varchar(255) COLLATE "default",
"parent_tg_id" int4,
"create_time" timestamp(6),
"description" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "permissions"."group" IS '组表';
COMMENT ON COLUMN "permissions"."group"."tg_id" IS '组id';
COMMENT ON COLUMN "permissions"."group"."parent_tg_id" IS '父组';
COMMENT ON COLUMN "permissions"."group"."create_time" IS '创建时间';
COMMENT ON COLUMN "permissions"."group"."description" IS '描述';

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for group_right_relation
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."group_right_relation";
CREATE TABLE "permissions"."group_right_relation" (
"tgr_id" int4 NOT NULL,
"tg_id" int4 NOT NULL,
"tr_id" int4 NOT NULL,
"right_type" int2 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "permissions"."group_right_relation" IS '组 和 权限 对应表';
COMMENT ON COLUMN "permissions"."group_right_relation"."tgr_id" IS '唯一标识';
COMMENT ON COLUMN "permissions"."group_right_relation"."tg_id" IS '组id';
COMMENT ON COLUMN "permissions"."group_right_relation"."tr_id" IS '权限ID';
COMMENT ON COLUMN "permissions"."group_right_relation"."right_type" IS 'not null（0:可访问，1:可授权）';

-- ----------------------------
-- Records of group_right_relation
-- ----------------------------

-- ----------------------------
-- Table structure for group_role_relation
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."group_role_relation";
CREATE TABLE "permissions"."group_role_relation" (
"tgr_id" int4 NOT NULL,
"tg_id" int4,
"tr_id" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "permissions"."group_role_relation" IS '组 和角色 表';
COMMENT ON COLUMN "permissions"."group_role_relation"."tgr_id" IS '唯一标识';
COMMENT ON COLUMN "permissions"."group_role_relation"."tg_id" IS '组id';
COMMENT ON COLUMN "permissions"."group_role_relation"."tr_id" IS '角色id';

-- ----------------------------
-- Records of group_role_relation
-- ----------------------------

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."organization";
CREATE TABLE "permissions"."organization" (
"to_id" int4 NOT NULL,
"parent_to_id" int4 NOT NULL,
"org_name" varchar(255) COLLATE "default" NOT NULL,
"create_time" timestamp(6) NOT NULL,
"description" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "permissions"."organization" IS '组织表';
COMMENT ON COLUMN "permissions"."organization"."to_id" IS '组织ID';
COMMENT ON COLUMN "permissions"."organization"."parent_to_id" IS '父组';
COMMENT ON COLUMN "permissions"."organization"."description" IS '组织描述';

-- ----------------------------
-- Records of organization
-- ----------------------------

-- ----------------------------
-- Table structure for right
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."right";
CREATE TABLE "permissions"."right" (
"tr_id" int4 NOT NULL,
"parent_tr_id" int4 NOT NULL,
"right_name" varchar(255) COLLATE "default" NOT NULL,
"description" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "permissions"."right" IS '权限表';
COMMENT ON COLUMN "permissions"."right"."tr_id" IS '权限id';
COMMENT ON COLUMN "permissions"."right"."parent_tr_id" IS '父权限ID';
COMMENT ON COLUMN "permissions"."right"."right_name" IS '权限名字';
COMMENT ON COLUMN "permissions"."right"."description" IS '描述';

-- ----------------------------
-- Records of right
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."role";
CREATE TABLE "permissions"."role" (
"tr_id" int4 NOT NULL,
"parent_tr_id" int4 NOT NULL,
"role_name" varchar(255) COLLATE "default" NOT NULL,
"create_time" timestamp(6),
"description" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "permissions"."role"."tr_id" IS '角色id';
COMMENT ON COLUMN "permissions"."role"."parent_tr_id" IS '父级角色ID';
COMMENT ON COLUMN "permissions"."role"."role_name" IS '角色名称';
COMMENT ON COLUMN "permissions"."role"."create_time" IS '创建时间';
COMMENT ON COLUMN "permissions"."role"."description" IS '描述';

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for role_right_relation
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."role_right_relation";
CREATE TABLE "permissions"."role_right_relation" (
"trr_id" int4 NOT NULL,
"role_id" int4 NOT NULL,
"right_id" int4 NOT NULL,
"right_type" int2
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "permissions"."role_right_relation" IS '角色 和 权限 对应表';
COMMENT ON COLUMN "permissions"."role_right_relation"."trr_id" IS '唯一标识';
COMMENT ON COLUMN "permissions"."role_right_relation"."role_id" IS '角色id';
COMMENT ON COLUMN "permissions"."role_right_relation"."right_id" IS '权限id';
COMMENT ON COLUMN "permissions"."role_right_relation"."right_type" IS '0:可访问  1:可授权';

-- ----------------------------
-- Records of role_right_relation
-- ----------------------------

-- ----------------------------
-- Table structure for tlog
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."tlog";
CREATE TABLE "permissions"."tlog" (
"log_id" int4 NOT NULL,
"op_type" int4 NOT NULL,
"content" varchar(255) COLLATE "default",
"tu_id" int4,
"create_time" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "permissions"."tlog" IS '操作日志表';
COMMENT ON COLUMN "permissions"."tlog"."log_id" IS '日志id';
COMMENT ON COLUMN "permissions"."tlog"."op_type" IS '操作类型';
COMMENT ON COLUMN "permissions"."tlog"."content" IS '操作内容';
COMMENT ON COLUMN "permissions"."tlog"."tu_id" IS '操作人';
COMMENT ON COLUMN "permissions"."tlog"."create_time" IS '操作时间';

-- ----------------------------
-- Records of tlog
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."user";
CREATE TABLE "permissions"."user" (
"u_id" int8 NOT NULL,
"login_name" varchar(255) COLLATE "default",
"password" varchar(255) COLLATE "default",
"vsername" varchar(255) COLLATE "default",
"mobile" varchar(255) COLLATE "default",
"email" varchar(255) COLLATE "default",
"create_time" timestamp(6),
"login_time" timestamp(6),
"last_login_time" timestamp(6),
"	
count" int4,
"group_id" int4 NOT NULL,
"to_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "permissions"."user"."u_id" IS '用户唯一标识';
COMMENT ON COLUMN "permissions"."user"."login_name" IS '登录账号';
COMMENT ON COLUMN "permissions"."user"."password" IS '登录密码';
COMMENT ON COLUMN "permissions"."user"."vsername" IS '用户姓名';
COMMENT ON COLUMN "permissions"."user"."mobile" IS '手机号';
COMMENT ON COLUMN "permissions"."user"."email" IS '电子邮箱';
COMMENT ON COLUMN "permissions"."user"."create_time" IS '创建时间';
COMMENT ON COLUMN "permissions"."user"."login_time" IS '登录时间';
COMMENT ON COLUMN "permissions"."user"."last_login_time" IS '上次登录时间';
COMMENT ON COLUMN "permissions"."user"."	
count" IS '登录次数';
COMMENT ON COLUMN "permissions"."user"."group_id" IS '所属组织';

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_group_relation
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."user_group_relation";
CREATE TABLE "permissions"."user_group_relation" (
"tug_id" int4 NOT NULL,
"tu_id" int4 NOT NULL,
"tg_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "permissions"."user_group_relation" IS '用户组表';
COMMENT ON COLUMN "permissions"."user_group_relation"."tu_id" IS '用户';
COMMENT ON COLUMN "permissions"."user_group_relation"."tg_id" IS '组';

-- ----------------------------
-- Records of user_group_relation
-- ----------------------------

-- ----------------------------
-- Table structure for user_right_relation
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."user_right_relation";
CREATE TABLE "permissions"."user_right_relation" (
"tur_id" int4 NOT NULL,
"tu_id" int4 NOT NULL,
"tr_id" int4 NOT NULL,
"right_type" int2
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "permissions"."user_right_relation" IS ' 用户权限表';
COMMENT ON COLUMN "permissions"."user_right_relation"."tur_id" IS '唯一标识';
COMMENT ON COLUMN "permissions"."user_right_relation"."tu_id" IS '用户id';
COMMENT ON COLUMN "permissions"."user_right_relation"."tr_id" IS '权限ID';
COMMENT ON COLUMN "permissions"."user_right_relation"."right_type" IS 'not null（0:可访问，1:可授权）';

-- ----------------------------
-- Records of user_right_relation
-- ----------------------------

-- ----------------------------
-- Table structure for user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS "permissions"."user_role_relation";
CREATE TABLE "permissions"."user_role_relation" (
"tur_id" int4 NOT NULL,
"tu_id" int4 NOT NULL,
"tr_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "permissions"."user_role_relation" IS '用户角色表';
COMMENT ON COLUMN "permissions"."user_role_relation"."tur_id" IS '唯一标识';
COMMENT ON COLUMN "permissions"."user_role_relation"."tu_id" IS '组';
COMMENT ON COLUMN "permissions"."user_role_relation"."tr_id" IS '角色';

-- ----------------------------
-- Records of user_role_relation
-- ----------------------------

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table group
-- ----------------------------
ALTER TABLE "permissions"."group" ADD PRIMARY KEY ("tg_id");

-- ----------------------------
-- Primary Key structure for table group_right_relation
-- ----------------------------
ALTER TABLE "permissions"."group_right_relation" ADD PRIMARY KEY ("tgr_id");

-- ----------------------------
-- Primary Key structure for table group_role_relation
-- ----------------------------
ALTER TABLE "permissions"."group_role_relation" ADD PRIMARY KEY ("tgr_id");

-- ----------------------------
-- Primary Key structure for table organization
-- ----------------------------
ALTER TABLE "permissions"."organization" ADD PRIMARY KEY ("to_id");

-- ----------------------------
-- Primary Key structure for table right
-- ----------------------------
ALTER TABLE "permissions"."right" ADD PRIMARY KEY ("tr_id");

-- ----------------------------
-- Primary Key structure for table role
-- ----------------------------
ALTER TABLE "permissions"."role" ADD PRIMARY KEY ("tr_id");

-- ----------------------------
-- Primary Key structure for table role_right_relation
-- ----------------------------
ALTER TABLE "permissions"."role_right_relation" ADD PRIMARY KEY ("trr_id");

-- ----------------------------
-- Primary Key structure for table tlog
-- ----------------------------
ALTER TABLE "permissions"."tlog" ADD PRIMARY KEY ("log_id");

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "permissions"."user" ADD PRIMARY KEY ("u_id");

-- ----------------------------
-- Primary Key structure for table user_group_relation
-- ----------------------------
ALTER TABLE "permissions"."user_group_relation" ADD PRIMARY KEY ("tug_id");

-- ----------------------------
-- Primary Key structure for table user_right_relation
-- ----------------------------
ALTER TABLE "permissions"."user_right_relation" ADD PRIMARY KEY ("tur_id");

-- ----------------------------
-- Primary Key structure for table user_role_relation
-- ----------------------------
ALTER TABLE "permissions"."user_role_relation" ADD PRIMARY KEY ("tur_id");

-- ----------------------------
-- Foreign Key structure for table "permissions"."group_right_relation"
-- ----------------------------
ALTER TABLE "permissions"."group_right_relation" ADD FOREIGN KEY ("tr_id") REFERENCES "permissions"."role" ("tr_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "permissions"."group_right_relation" ADD FOREIGN KEY ("tg_id") REFERENCES "permissions"."group" ("tg_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "permissions"."group_role_relation"
-- ----------------------------
ALTER TABLE "permissions"."group_role_relation" ADD FOREIGN KEY ("tg_id") REFERENCES "permissions"."group" ("tg_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "permissions"."group_role_relation" ADD FOREIGN KEY ("tr_id") REFERENCES "permissions"."role" ("tr_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "permissions"."role_right_relation"
-- ----------------------------
ALTER TABLE "permissions"."role_right_relation" ADD FOREIGN KEY ("role_id") REFERENCES "permissions"."role" ("tr_id") ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE "permissions"."role_right_relation" ADD FOREIGN KEY ("right_id") REFERENCES "permissions"."right" ("tr_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "permissions"."user"
-- ----------------------------
ALTER TABLE "permissions"."user" ADD FOREIGN KEY ("to_id") REFERENCES "permissions"."organization" ("to_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "permissions"."user_group_relation"
-- ----------------------------
ALTER TABLE "permissions"."user_group_relation" ADD FOREIGN KEY ("tg_id") REFERENCES "permissions"."group" ("tg_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "permissions"."user_group_relation" ADD FOREIGN KEY ("tu_id") REFERENCES "permissions"."user" ("u_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "permissions"."user_right_relation"
-- ----------------------------
ALTER TABLE "permissions"."user_right_relation" ADD FOREIGN KEY ("tu_id") REFERENCES "permissions"."user" ("u_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "permissions"."user_right_relation" ADD FOREIGN KEY ("tr_id") REFERENCES "permissions"."right" ("tr_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "permissions"."user_role_relation"
-- ----------------------------
ALTER TABLE "permissions"."user_role_relation" ADD FOREIGN KEY ("tr_id") REFERENCES "permissions"."role" ("tr_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "permissions"."user_role_relation" ADD FOREIGN KEY ("tu_id") REFERENCES "permissions"."user" ("u_id") ON DELETE CASCADE ON UPDATE CASCADE;
