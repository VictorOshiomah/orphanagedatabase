--------------------------------------------------------
--  File created - Sunday-December-11-2022   
--------------------------------------------------------
REM INSERTING into ADMIN.ADOPTIVE_PARENTS
SET DEFINE OFF;
Insert into ADMIN.ADOPTIVE_PARENTS (ID,FIRSTNAME,LASTNAME,ADDRESS,NIN,OCCUPATION) values (1,'jaja','opobo','34 opobo crescent lagos',1278934575823457,'lawyer');
Insert into ADMIN.ADOPTIVE_PARENTS (ID,FIRSTNAME,LASTNAME,ADDRESS,NIN,OCCUPATION) values (2,'feja','obobo','14 obobo avenue lagos',1278934574823457,'doctor');
Insert into ADMIN.ADOPTIVE_PARENTS (ID,FIRSTNAME,LASTNAME,ADDRESS,NIN,OCCUPATION) values (3,'kioanna','kotolo','26 okiki avenue lagos',1278984574823457,'engineer');
Insert into ADMIN.ADOPTIVE_PARENTS (ID,FIRSTNAME,LASTNAME,ADDRESS,NIN,OCCUPATION) values (4,'mane','kefa','99 kayin stree lagos',1278934574823657,'pilot');
Insert into ADMIN.ADOPTIVE_PARENTS (ID,FIRSTNAME,LASTNAME,ADDRESS,NIN,OCCUPATION) values (5,'akin','blaq','4 tafawa close lagos',1278434574823457,'politician');
REM INSERTING into ADMIN.ALUMNI
SET DEFINE OFF;
Insert into ADMIN.ALUMNI (ORPHANS_ID,ADOPTION_NUM,FIRSTNAME,LASTNAME,ADOPTIVE_PARENTS_ID) values (4,1,'teddy','white',1);
Insert into ADMIN.ALUMNI (ORPHANS_ID,ADOPTION_NUM,FIRSTNAME,LASTNAME,ADOPTIVE_PARENTS_ID) values (3,2,'kante','nbolo',2);
Insert into ADMIN.ALUMNI (ORPHANS_ID,ADOPTION_NUM,FIRSTNAME,LASTNAME,ADOPTIVE_PARENTS_ID) values (12,3,'arinola','joba',2);
Insert into ADMIN.ALUMNI (ORPHANS_ID,ADOPTION_NUM,FIRSTNAME,LASTNAME,ADOPTIVE_PARENTS_ID) values (11,4,'odense','buhari',3);
Insert into ADMIN.ALUMNI (ORPHANS_ID,ADOPTION_NUM,FIRSTNAME,LASTNAME,ADOPTIVE_PARENTS_ID) values (14,5,'kafaya','shitta',4);
Insert into ADMIN.ALUMNI (ORPHANS_ID,ADOPTION_NUM,FIRSTNAME,LASTNAME,ADOPTIVE_PARENTS_ID) values (13,6,'paul','jiji',5);
REM INSERTING into ADMIN.DEPT
SET DEFINE OFF;
Insert into ADMIN.DEPT (ID,DEPT_NAME) values (101,'education');
Insert into ADMIN.DEPT (ID,DEPT_NAME) values (102,'welfare');
Insert into ADMIN.DEPT (ID,DEPT_NAME) values (103,'music');
REM INSERTING into ADMIN.DONOR
SET DEFINE OFF;
Insert into ADMIN.DONOR (ID,FIRSTNAME,LASTNAME,PHONE,EMAIL,ADDRESS,NUM_OF_YEARS) values (1,'victor','oshiomah',6512344392,'oshivic@gmail.com','32 bankole street lagos',4);
Insert into ADMIN.DONOR (ID,FIRSTNAME,LASTNAME,PHONE,EMAIL,ADDRESS,NUM_OF_YEARS) values (3,'mercy','ikpe',7122344392,'mercy_ikpe@yahoo.com','141 tafawa crescent ibadan',3);
Insert into ADMIN.DONOR (ID,FIRSTNAME,LASTNAME,PHONE,EMAIL,ADDRESS,NUM_OF_YEARS) values (4,'grace','ileso',4412344392,'gracei@gmail.com','9 edaiken avenue lagos',2);
Insert into ADMIN.DONOR (ID,FIRSTNAME,LASTNAME,PHONE,EMAIL,ADDRESS,NUM_OF_YEARS) values (5,'jonathan','aigbedion',7122344392,'joe_aigbe@gmail.com','98 bode thomas street lagos',1);
Insert into ADMIN.DONOR (ID,FIRSTNAME,LASTNAME,PHONE,EMAIL,ADDRESS,NUM_OF_YEARS) values (2,'kemi','bada',6512344392,'badakem@bsg.com','49 bishi avenue lagos',4);
REM INSERTING into ADMIN.ORPHANS
SET DEFINE OFF;
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (1,'bola','fasho',12,'female',1,null);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (2,'tolu','ijibi',11,'female',1,null);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (5,'chizi','moses',10,'female',3,null);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (6,'chioma','kanu',9,'female',4,null);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (7,'job','jaja',11,'male',1,null);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (8,'nasiru','okinosun',10,'male',5,null);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (9,'timilehin','kunbi',11,'male',null,null);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (10,'bode','orji',12,'male',null,null);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (3,'kante','nbolo',12,'male',null,2);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (4,'teddy','white',11,'male',null,1);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (11,'odense','buhari',11,'female',null,3);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (12,'arinola','joba',10,'female',null,2);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (13,'paul','jiji',10,'male',null,5);
Insert into ADMIN.ORPHANS (ID,FIRSTNAME,LASTNAME,AGE,GENDER,DONOR_ID,PARENTS_ID) values (14,'kafaya','shitta',12,'female',null,4);
REM INSERTING into ADMIN.ORPHAN_DONOR
SET DEFINE OFF;
Insert into ADMIN.ORPHAN_DONOR (DONOR_ID,ORPHANS_ID) values (1,1);
Insert into ADMIN.ORPHAN_DONOR (DONOR_ID,ORPHANS_ID) values (1,2);
Insert into ADMIN.ORPHAN_DONOR (DONOR_ID,ORPHANS_ID) values (1,7);
Insert into ADMIN.ORPHAN_DONOR (DONOR_ID,ORPHANS_ID) values (3,5);
Insert into ADMIN.ORPHAN_DONOR (DONOR_ID,ORPHANS_ID) values (4,6);
Insert into ADMIN.ORPHAN_DONOR (DONOR_ID,ORPHANS_ID) values (5,8);
REM INSERTING into ADMIN.STAFF
SET DEFINE OFF;
Insert into ADMIN.STAFF (ID,FIRSTNAME,LASTNAME,GENDER,DEPT,DEPT_ID) values (1001,'travis','greene','male','education',101);
Insert into ADMIN.STAFF (ID,FIRSTNAME,LASTNAME,GENDER,DEPT,DEPT_ID) values (1002,'bose','eweje','female','welfare',102);
Insert into ADMIN.STAFF (ID,FIRSTNAME,LASTNAME,GENDER,DEPT,DEPT_ID) values (1003,'ini','akap','female','education',101);
Insert into ADMIN.STAFF (ID,FIRSTNAME,LASTNAME,GENDER,DEPT,DEPT_ID) values (1004,'olusa','ajonbi','male','welfare',102);
Insert into ADMIN.STAFF (ID,FIRSTNAME,LASTNAME,GENDER,DEPT,DEPT_ID) values (1005,'benny','kouala','female','music',103);
Insert into ADMIN.STAFF (ID,FIRSTNAME,LASTNAME,GENDER,DEPT,DEPT_ID) values (1006,'jen','schar','female','education',101);
REM INSERTING into ADMIN.VOLUNTEERS
SET DEFINE OFF;
Insert into ADMIN.VOLUNTEERS (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,GENDER,NIN_NUM,NUM_OF_YEARS,DEPT,ADDRESS) values (1,'bambi','jidenna','bambjid@gmail.com',6212344392,'female',1234567891011121,4,'welfare','119 thompson avenue lagos');
Insert into ADMIN.VOLUNTEERS (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,GENDER,NIN_NUM,NUM_OF_YEARS,DEPT,ADDRESS) values (2,'jordan','davies','jordandav@gmail.com',6212345392,'male',1534967891011121,4,'education','9 cheovore street lagos');
Insert into ADMIN.VOLUNTEERS (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,GENDER,NIN_NUM,NUM_OF_YEARS,DEPT,ADDRESS) values (3,'karee','buzaj','buzak@gmail.com',6512347392,'female',1934967891011221,3,'music','34 bisi emmanuel street lagos');
Insert into ADMIN.VOLUNTEERS (ID,FIRSTNAME,LASTNAME,EMAIL,PHONE,GENDER,NIN_NUM,NUM_OF_YEARS,DEPT,ADDRESS) values (4,'joba','adekanye','adejoba@ymail.com',7112347392,'female',1834997891011221,2,'music','41 onabisi ade street lagos');
REM INSERTING into ADMIN.VOL_DEPT
SET DEFINE OFF;
Insert into ADMIN.VOL_DEPT (VOLUNTEERS_ID,DEPT_ID) values (1,102);
Insert into ADMIN.VOL_DEPT (VOLUNTEERS_ID,DEPT_ID) values (2,101);
Insert into ADMIN.VOL_DEPT (VOLUNTEERS_ID,DEPT_ID) values (3,103);
Insert into ADMIN.VOL_DEPT (VOLUNTEERS_ID,DEPT_ID) values (4,103);
REM INSERTING into ADMIN.ALUMNI_PARENT
SET DEFINE OFF;
Insert into ADMIN.ALUMNI_PARENT (FIRSTNAME,LASTNAME,PARENT_ID,PARENT_FNAME,PARENT_LNAME) values ('teddy','white',1,'jaja','opobo');
Insert into ADMIN.ALUMNI_PARENT (FIRSTNAME,LASTNAME,PARENT_ID,PARENT_FNAME,PARENT_LNAME) values ('kante','nbolo',2,'feja','obobo');
Insert into ADMIN.ALUMNI_PARENT (FIRSTNAME,LASTNAME,PARENT_ID,PARENT_FNAME,PARENT_LNAME) values ('arinola','joba',2,'feja','obobo');
Insert into ADMIN.ALUMNI_PARENT (FIRSTNAME,LASTNAME,PARENT_ID,PARENT_FNAME,PARENT_LNAME) values ('odense','buhari',3,'kioanna','kotolo');
Insert into ADMIN.ALUMNI_PARENT (FIRSTNAME,LASTNAME,PARENT_ID,PARENT_FNAME,PARENT_LNAME) values ('kafaya','shitta',4,'mane','kefa');
Insert into ADMIN.ALUMNI_PARENT (FIRSTNAME,LASTNAME,PARENT_ID,PARENT_FNAME,PARENT_LNAME) values ('paul','jiji',5,'akin','blaq');
REM INSERTING into ADMIN.ORPHANS_DONOR_VIEW
SET DEFINE OFF;
Insert into ADMIN.ORPHANS_DONOR_VIEW (FIRSTNAME,LASTNAME,SPONSORER_ID,DONOR_FNAME,DONOR_LNAME) values ('bola','fasho',1,'victor','oshiomah');
Insert into ADMIN.ORPHANS_DONOR_VIEW (FIRSTNAME,LASTNAME,SPONSORER_ID,DONOR_FNAME,DONOR_LNAME) values ('tolu','ijibi',1,'victor','oshiomah');
Insert into ADMIN.ORPHANS_DONOR_VIEW (FIRSTNAME,LASTNAME,SPONSORER_ID,DONOR_FNAME,DONOR_LNAME) values ('chizi','moses',3,'mercy','ikpe');
Insert into ADMIN.ORPHANS_DONOR_VIEW (FIRSTNAME,LASTNAME,SPONSORER_ID,DONOR_FNAME,DONOR_LNAME) values ('chioma','kanu',4,'grace','ileso');
Insert into ADMIN.ORPHANS_DONOR_VIEW (FIRSTNAME,LASTNAME,SPONSORER_ID,DONOR_FNAME,DONOR_LNAME) values ('job','jaja',1,'victor','oshiomah');
Insert into ADMIN.ORPHANS_DONOR_VIEW (FIRSTNAME,LASTNAME,SPONSORER_ID,DONOR_FNAME,DONOR_LNAME) values ('nasiru','okinosun',5,'jonathan','aigbedion');

update orphans set parents_id = 1 where firstname = 'teddy';
update orphans set parents_id = 2 where firstname = 'kante';
update orphans set parents_id = 2 where firstname = 'arinola';
update orphans set parents_id = 3 where firstname = 'odense';
update orphans set parents_id = 4 where firstname = 'kafaya';
update orphans set parents_id = 5 where firstname = 'paul';
