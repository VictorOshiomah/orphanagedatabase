--------------------------------------------------------
--  File created - Sunday-December-11-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADOPTIVE_PARENTS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."ADOPTIVE_PARENTS" ("ID" NUMBER(*,0), "FIRSTNAME" VARCHAR2(30) COLLATE "USING_NLS_COMP", "LASTNAME" VARCHAR2(30) COLLATE "USING_NLS_COMP", "ADDRESS" VARCHAR2(100) COLLATE "USING_NLS_COMP", "NIN" NUMBER, "OCCUPATION" VARCHAR2(50) COLLATE "USING_NLS_COMP")  DEFAULT COLLATION "USING_NLS_COMP"
--------------------------------------------------------
--  DDL for Table ALUMNI
--------------------------------------------------------

  CREATE TABLE "ADMIN"."ALUMNI" ("ORPHANS_ID" NUMBER(*,0), "ADOPTION_NUM" NUMBER(*,0), "FIRSTNAME" VARCHAR2(30) COLLATE "USING_NLS_COMP", "LASTNAME" VARCHAR2(30) COLLATE "USING_NLS_COMP", "ADOPTIVE_PARENTS_ID" NUMBER(*,0))  DEFAULT COLLATION "USING_NLS_COMP"
--------------------------------------------------------
--  DDL for Table DEPT
--------------------------------------------------------

  CREATE TABLE "ADMIN"."DEPT" ("ID" NUMBER, "DEPT_NAME" VARCHAR2(30) COLLATE "USING_NLS_COMP")  DEFAULT COLLATION "USING_NLS_COMP"
--------------------------------------------------------
--  DDL for Table DONOR
--------------------------------------------------------

  CREATE TABLE "ADMIN"."DONOR" ("ID" NUMBER(*,0), "FIRSTNAME" VARCHAR2(50) COLLATE "USING_NLS_COMP", "LASTNAME" VARCHAR2(50) COLLATE "USING_NLS_COMP", "PHONE" NUMBER(11,0), "EMAIL" VARCHAR2(50) COLLATE "USING_NLS_COMP", "ADDRESS" VARCHAR2(150) COLLATE "USING_NLS_COMP", "NUM_OF_YEARS" NUMBER(*,0))  DEFAULT COLLATION "USING_NLS_COMP"
--------------------------------------------------------
--  DDL for Table ORPHANS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."ORPHANS" ("ID" NUMBER(*,0), "FIRSTNAME" VARCHAR2(50) COLLATE "USING_NLS_COMP", "LASTNAME" VARCHAR2(50) COLLATE "USING_NLS_COMP", "AGE" NUMBER, "GENDER" VARCHAR2(30) COLLATE "USING_NLS_COMP", "DONOR_ID" NUMBER(*,0), "PARENTS_ID" NUMBER(*,0))  DEFAULT COLLATION "USING_NLS_COMP"
--------------------------------------------------------
--  DDL for Table ORPHAN_DONOR
--------------------------------------------------------

  CREATE TABLE "ADMIN"."ORPHAN_DONOR" ("DONOR_ID" NUMBER(*,0), "ORPHANS_ID" NUMBER(*,0))  DEFAULT COLLATION "USING_NLS_COMP"
--------------------------------------------------------
--  DDL for Table STAFF
--------------------------------------------------------

  CREATE TABLE "ADMIN"."STAFF" ("ID" NUMBER, "FIRSTNAME" VARCHAR2(50) COLLATE "USING_NLS_COMP", "LASTNAME" VARCHAR2(50) COLLATE "USING_NLS_COMP", "GENDER" VARCHAR2(30) COLLATE "USING_NLS_COMP", "DEPT" VARCHAR2(50) COLLATE "USING_NLS_COMP", "DEPT_ID" NUMBER)  DEFAULT COLLATION "USING_NLS_COMP"
--------------------------------------------------------
--  DDL for Table VOLUNTEERS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."VOLUNTEERS" ("ID" NUMBER(*,0), "FIRSTNAME" VARCHAR2(50) COLLATE "USING_NLS_COMP", "LASTNAME" VARCHAR2(50) COLLATE "USING_NLS_COMP", "EMAIL" VARCHAR2(50) COLLATE "USING_NLS_COMP", "PHONE" NUMBER(11,0), "GENDER" VARCHAR2(30) COLLATE "USING_NLS_COMP", "NIN_NUM" NUMBER(16,0), "NUM_OF_YEARS" NUMBER(*,0), "DEPT" VARCHAR2(30) COLLATE "USING_NLS_COMP", "ADDRESS" VARCHAR2(100) COLLATE "USING_NLS_COMP")  DEFAULT COLLATION "USING_NLS_COMP"
--------------------------------------------------------
--  DDL for Table VOL_DEPT
--------------------------------------------------------

  CREATE TABLE "ADMIN"."VOL_DEPT" ("VOLUNTEERS_ID" NUMBER(*,0), "DEPT_ID" NUMBER)  DEFAULT COLLATION "USING_NLS_COMP"
--------------------------------------------------------
--  DDL for View ALUMNI_PARENT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "ADMIN"."ALUMNI_PARENT" ("FIRSTNAME", "LASTNAME", "PARENT_ID", "PARENT_FNAME", "PARENT_LNAME") DEFAULT COLLATION "USING_NLS_COMP"  AS select alumni.firstname, alumni.lastname, adoptive_parents.id as parent_id, adoptive_parents.firstname as Parent_fname, 
adoptive_parents.lastname as Parent_lname from alumni 
Join adoptive_parents on alumni.adoptive_parents_id = adoptive_parents.id
--------------------------------------------------------
--  DDL for View ORPHANS_DONOR_VIEW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE VIEW "ADMIN"."ORPHANS_DONOR_VIEW" ("FIRSTNAME", "LASTNAME", "SPONSORER_ID", "DONOR_FNAME", "DONOR_LNAME") DEFAULT COLLATION "USING_NLS_COMP"  AS select orphans.firstname, orphans.lastname, donor.id as sponsorer_id, donor.firstname as donor_fname, donor.lastname as donor_lname 
from orphans join donor on orphans.donor_id = donor.id
--------------------------------------------------------
--  DDL for Index ADOPTIVE_PARENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."ADOPTIVE_PARENTS_PK" ON "ADMIN"."ADOPTIVE_PARENTS" ("ID")
--------------------------------------------------------
--  DDL for Index ALUMNI_PKV1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."ALUMNI_PKV1" ON "ADMIN"."ALUMNI" ("ADOPTION_NUM")
--------------------------------------------------------
--  DDL for Index DONOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."DONOR_PK" ON "ADMIN"."DONOR" ("ID")
--------------------------------------------------------
--  DDL for Index ORPHANS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."ORPHANS_PK" ON "ADMIN"."ORPHANS" ("ID")
--------------------------------------------------------
--  DDL for Index ORPHAN_DONOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."ORPHAN_DONOR_PK" ON "ADMIN"."ORPHAN_DONOR" ("DONOR_ID", "ORPHANS_ID")
--------------------------------------------------------
--  DDL for Index STAFF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."STAFF_PK" ON "ADMIN"."STAFF" ("ID")
--------------------------------------------------------
--  DDL for Index SYS_C0021897
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."SYS_C0021897" ON "ADMIN"."DEPT" ("ID")
--------------------------------------------------------
--  DDL for Index SYS_C0021939
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."SYS_C0021939" ON "ADMIN"."ALUMNI" ("ORPHANS_ID")
--------------------------------------------------------
--  DDL for Index VOLUNTEERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."VOLUNTEERS_PK" ON "ADMIN"."VOLUNTEERS" ("ID")
--------------------------------------------------------
--  DDL for Index VOL_DEPT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."VOL_DEPT_PK" ON "ADMIN"."VOL_DEPT" ("VOLUNTEERS_ID", "DEPT_ID")
--------------------------------------------------------
--  DDL for Index ADOPTIVE_PARENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."ADOPTIVE_PARENTS_PK" ON "ADMIN"."ADOPTIVE_PARENTS" ("ID")
--------------------------------------------------------
--  DDL for Index SYS_C0021939
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."SYS_C0021939" ON "ADMIN"."ALUMNI" ("ORPHANS_ID")
--------------------------------------------------------
--  DDL for Index ALUMNI_PKV1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."ALUMNI_PKV1" ON "ADMIN"."ALUMNI" ("ADOPTION_NUM")
--------------------------------------------------------
--  DDL for Index SYS_C0021897
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."SYS_C0021897" ON "ADMIN"."DEPT" ("ID")
--------------------------------------------------------
--  DDL for Index DONOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."DONOR_PK" ON "ADMIN"."DONOR" ("ID")
--------------------------------------------------------
--  DDL for Index ORPHANS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."ORPHANS_PK" ON "ADMIN"."ORPHANS" ("ID")
--------------------------------------------------------
--  DDL for Index ORPHAN_DONOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."ORPHAN_DONOR_PK" ON "ADMIN"."ORPHAN_DONOR" ("DONOR_ID", "ORPHANS_ID")
--------------------------------------------------------
--  DDL for Index STAFF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."STAFF_PK" ON "ADMIN"."STAFF" ("ID")
--------------------------------------------------------
--  DDL for Index VOLUNTEERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."VOLUNTEERS_PK" ON "ADMIN"."VOLUNTEERS" ("ID")
--------------------------------------------------------
--  DDL for Index VOL_DEPT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."VOL_DEPT_PK" ON "ADMIN"."VOL_DEPT" ("VOLUNTEERS_ID", "DEPT_ID")
--------------------------------------------------------
--  Constraints for Table ADOPTIVE_PARENTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ADOPTIVE_PARENTS" MODIFY ("ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ADOPTIVE_PARENTS" MODIFY ("FIRSTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ADOPTIVE_PARENTS" MODIFY ("LASTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ADOPTIVE_PARENTS" MODIFY ("ADDRESS" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ADOPTIVE_PARENTS" MODIFY ("NIN" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ADOPTIVE_PARENTS" ADD CONSTRAINT "ADOPTIVE_PARENTS_PK" PRIMARY KEY ("ID") USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table ALUMNI
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ALUMNI" MODIFY ("ORPHANS_ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ALUMNI" MODIFY ("ADOPTION_NUM" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ALUMNI" MODIFY ("FIRSTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ALUMNI" MODIFY ("LASTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ALUMNI" MODIFY ("ADOPTIVE_PARENTS_ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ALUMNI" ADD PRIMARY KEY ("ORPHANS_ID") USING INDEX  ENABLE
  ALTER TABLE "ADMIN"."ALUMNI" ADD CONSTRAINT "ALUMNI_PKV1" UNIQUE ("ADOPTION_NUM") USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table DEPT
--------------------------------------------------------

  ALTER TABLE "ADMIN"."DEPT" MODIFY ("ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."DEPT" MODIFY ("DEPT_NAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."DEPT" ADD PRIMARY KEY ("ID") USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table DONOR
--------------------------------------------------------

  ALTER TABLE "ADMIN"."DONOR" MODIFY ("ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."DONOR" MODIFY ("FIRSTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."DONOR" MODIFY ("LASTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."DONOR" MODIFY ("PHONE" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."DONOR" MODIFY ("EMAIL" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."DONOR" MODIFY ("ADDRESS" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."DONOR" ADD CONSTRAINT "DONOR_PK" PRIMARY KEY ("ID") USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table ORPHANS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ORPHANS" MODIFY ("ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ORPHANS" MODIFY ("FIRSTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ORPHANS" MODIFY ("LASTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ORPHANS" MODIFY ("AGE" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ORPHANS" MODIFY ("GENDER" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ORPHANS" ADD CONSTRAINT "ORPHANS_PK" PRIMARY KEY ("ID") USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table ORPHAN_DONOR
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ORPHAN_DONOR" MODIFY ("DONOR_ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ORPHAN_DONOR" MODIFY ("ORPHANS_ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."ORPHAN_DONOR" ADD CONSTRAINT "ORPHAN_DONOR_PK" PRIMARY KEY ("DONOR_ID", "ORPHANS_ID") USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table STAFF
--------------------------------------------------------

  ALTER TABLE "ADMIN"."STAFF" MODIFY ("ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."STAFF" MODIFY ("FIRSTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."STAFF" MODIFY ("LASTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."STAFF" MODIFY ("GENDER" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."STAFF" ADD CONSTRAINT "STAFF_PK" PRIMARY KEY ("ID") USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table VOLUNTEERS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."VOLUNTEERS" MODIFY ("ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."VOLUNTEERS" MODIFY ("FIRSTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."VOLUNTEERS" MODIFY ("LASTNAME" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."VOLUNTEERS" MODIFY ("EMAIL" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."VOLUNTEERS" MODIFY ("GENDER" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."VOLUNTEERS" MODIFY ("NIN_NUM" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."VOLUNTEERS" MODIFY ("NUM_OF_YEARS" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."VOLUNTEERS" ADD CONSTRAINT "VOLUNTEERS_PK" PRIMARY KEY ("ID") USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table VOL_DEPT
--------------------------------------------------------

  ALTER TABLE "ADMIN"."VOL_DEPT" MODIFY ("VOLUNTEERS_ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."VOL_DEPT" MODIFY ("DEPT_ID" NOT NULL ENABLE)
  ALTER TABLE "ADMIN"."VOL_DEPT" ADD CONSTRAINT "VOL_DEPT_PK" PRIMARY KEY ("VOLUNTEERS_ID", "DEPT_ID") USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table ALUMNI
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ALUMNI" ADD CONSTRAINT "ALUMNI_ORPHANS_FK" FOREIGN KEY ("ORPHANS_ID") REFERENCES "ADMIN"."ORPHANS" ("ID") ENABLE
  ALTER TABLE "ADMIN"."ALUMNI" ADD CONSTRAINT "ALUMNI_ADOPTIVE_PARENTS_FK" FOREIGN KEY ("ADOPTIVE_PARENTS_ID") REFERENCES "ADMIN"."ADOPTIVE_PARENTS" ("ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table ORPHANS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ORPHANS" ADD CONSTRAINT "ORPHANS_DONOR_FK" FOREIGN KEY ("DONOR_ID") REFERENCES "ADMIN"."DONOR" ("ID") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table ORPHAN_DONOR
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ORPHAN_DONOR" ADD CONSTRAINT "ORPHAN_DONOR_DONOR_FK" FOREIGN KEY ("DONOR_ID") REFERENCES "ADMIN"."DONOR" ("ID") ENABLE
  ALTER TABLE "ADMIN"."ORPHAN_DONOR" ADD CONSTRAINT "ORPHAN_DONOR_ORPHANS_FK" FOREIGN KEY ("ORPHANS_ID") REFERENCES "ADMIN"."ORPHANS" ("ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table STAFF
--------------------------------------------------------

  ALTER TABLE "ADMIN"."STAFF" ADD CONSTRAINT "STAFF_DEPT_FK" FOREIGN KEY ("DEPT_ID") REFERENCES "ADMIN"."DEPT" ("ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table VOL_DEPT
--------------------------------------------------------

  ALTER TABLE "ADMIN"."VOL_DEPT" ADD CONSTRAINT "VOL_DEPT_DEPT_FK" FOREIGN KEY ("DEPT_ID") REFERENCES "ADMIN"."DEPT" ("ID") ENABLE
  ALTER TABLE "ADMIN"."VOL_DEPT" ADD CONSTRAINT "VOL_DEPT_VOLUNTEERS_FK" FOREIGN KEY ("VOLUNTEERS_ID") REFERENCES "ADMIN"."VOLUNTEERS" ("ID") ENABLE
