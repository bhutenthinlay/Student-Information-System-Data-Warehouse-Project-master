CREATE TABLE STUDENT_WINDSOR(
 STU_ID INT IDENTITY(1,1),
 STU_ID_UNIV AS 'UOW-' + CAST(STU_ID AS VARCHAR(20)) PERSISTED NOT NULL,
 STU_FNAME VARCHAR(20),
 STU_LNAME VARCHAR(20),
 STU_DOB DATE,
 STU_DOJ DATE,
 STU_DOG DATE,
 STU_ADDRESS VARCHAR(50),
 STU_CITY VARCHAR(50),
 STU_PROVINCE VARCHAR(5),
 STU_ZIP_CODE VARCHAR(6),
 STU_EMAIL VARCHAR(50),
 STU_MOB NUMERIC(10),
 STU_PAR_FNAME VARCHAR(20),
 STU_PAR_LNAME VARCHAR(20),
 STU_PAR_MOB NUMERIC(10),
 PRIMARY KEY(STU_ID)
)

SELECT STU_ID,
STU_ID_UNIV ,
STU_FNAME,
 STU_LNAME,
  STU_DOB ,
  STU_DOJ ,
  STU_DOG,
  STU_ADDRESS,
  STU_CITY,
  STU_PROVINCE,
  STU_ZIP_CODE,
 STU_EMAIL,
 STU_MOB,
 STU_PAR_FNAME,
 STU_PAR_LNAME,
 STU_PAR_MOB,
 CURRENT_TIMESTAMP   as UPDATED_TIMESTAMP

 FROM 
 STUDENT_WINDSOR

 UPDATE  STUDENT_WINDSOR 
 SET STU_DOG='2018-01-01' WHERE STU_ID=1

SELECT * FROM STUDENT_WINDSOR
DROP TABLE STUDENT_WINDSOR

INSERT INTO STUDENT_WINDSOR (STU_FNAME, STU_LNAME, STU_DOB, STU_DOJ, STU_DOG, STU_ADDRESS, STU_CITY, STU_PROVINCE
, STU_ZIP_CODE, STU_EMAIL, STU_MOB, STU_PAR_FNAME, STU_PAR_LNAME, STU_PAR_MOB) VALUES ('TENZIN1', 'THINLAY1', 
'1993-06-18', '2013-09-02', NULL, '87', 'TOROOO', 'ON', 'N6D1L9', 'thinlay1@uwindsor.ca', 5193456845, 'KUNCHOK1',
 'TSERING1', 9805665437)


 INSERT INTO STUDENT_WINDSOR (STU_FNAME, STU_LNAME, STU_DOB, STU_DOJ, STU_DOG, STU_ADDRESS, STU_CITY, STU_PROVINCE
, STU_ZIP_CODE, STU_EMAIL, STU_MOB, STU_PAR_FNAME, STU_PAR_LNAME, STU_PAR_MOB) VALUES ('RIYA', 'SONALI', 
'1993-02-28', '2016-02-02', '2018-01-01', '297', 'Windsor', 'ON', 'N9C1J9', 'RIYA@uwindsor.ca', 5158763456, 'RYAZ',
 'TEZ', 6782346780)
 INSERT INTO STUDENT_WINDSOR (STU_FNAME, STU_LNAME, STU_DOB, STU_DOJ, STU_DOG, STU_ADDRESS, STU_CITY, STU_PROVINCE
, STU_ZIP_CODE, STU_EMAIL, STU_MOB, STU_PAR_FNAME, STU_PAR_LNAME, STU_PAR_MOB) VALUES ('UNCHO', 'TECHO', 
'1989-08-18', '2015-09-01', NULL, '27', 'Windsor', 'ON', 'N8C1L9', 'UNCHO@uwindsor.ca', 5098789676, 'narcho',
 'kocho', 2765456789)

 INSERT INTO STUDENT_WINDSOR (STU_FNAME, STU_LNAME, STU_DOB, STU_DOJ, STU_DOG, STU_ADDRESS, STU_CITY, STU_PROVINCE
, STU_ZIP_CODE, STU_EMAIL, STU_MOB, STU_PAR_FNAME, STU_PAR_LNAME, STU_PAR_MOB) VALUES ('PRUDVI', 'MALLU', 
'1987-02-03', '2017-09-08', NULL, '678', 'Windsor', 'ON', 'N9X6J7', 'PRUDVI@uwindsor.ca', 6734510045, 'PREM',
 'JUOSH', 7654389082)
 INSERT INTO STUDENT_WINDSOR (STU_FNAME, STU_LNAME, STU_DOB, STU_DOJ, STU_DOG, STU_ADDRESS, STU_CITY, STU_PROVINCE
, STU_ZIP_CODE, STU_EMAIL, STU_MOB, STU_PAR_FNAME, STU_PAR_LNAME, STU_PAR_MOB) VALUES ('TASHI', 'TSERING', 
'1990-06-20', '2016-09-02', '2018-02-23', '2907', 'Windsor', 'ON', 'N9D1L9', 'tashi@uwindsor.ca', 2199736845, 'KUNCHOK',
 'DORJEE', 9805636707)
SELECT * FROM STUDENT_WINDSOR

CREATE TABLE COURSE_WINDSOR(
 COURSE_ID INT,
 COURSE_NAME VARCHAR(20),
 --STU_ID INT,
-- STU_ID_UNIV VARCHAR(20),
 COURSE_CREDIT NUMERIC CHECK(COURSE_CREDIT IN(0,3)),
 PRIMARY KEY(COURSE_ID)
 --CONSTRAINT STU_ID1_FK FOREIGN KEY (STU_ID) REFERENCES STUDENT_WINDSOR(STU_ID)
 --CONSTRAINT STU_ID_UNIV_FK FOREIGN KEY (STU_ID_UNIV) REFERENCES STUDENT_WINDSOR(STU_ID_UNIV)
)
 
INSERT INTO COURSE_WINDSOR VALUES(1, 'JAVA',3)
INSERT INTO COURSE_WINDSOR VALUES(2, 'DBMS',3)
INSERT INTO COURSE_WINDSOR VALUES(3, 'C',3)
INSERT INTO COURSE_WINDSOR VALUES(4, 'PY',3)
INSERT INTO COURSE_WINDSOR VALUES(5, 'UNIX',3)
INSERT INTO COURSE_WINDSOR VALUES(6, 'SSIS',3)
DROP TABLE COURSE_WINDSOR

SELECT * FROM COURSE_WINDSOR
CREATE TABLE MARKS_WINDSOR(
 MARK_ID INT IDENTITY(1,1),
 --COURSE_ID INT,
 ENROLL_ID INT,
-- STU_ID INT,
 MARKS_OBTAINED NUMERIC(5,2),
 PRIMARY KEY(MARK_ID),
  CONSTRAINT ENROLL_ID_FK FOREIGN KEY (ENROLL_ID) REFERENCES ENROLL_WINDSOR(ENROLL_ID),
 -- CONSTRAINT STU_ID3_FK FOREIGN KEY (STU_ID) REFERENCES COURSE_WINDSOR(STU_ID),

)
SELECT * FROM STUDENT_WINDSOR
SELECT * FROM ENROLL_WINDSOR
SELECT * FROM COURSE_WINDSOR
SELECT * FROM MARKS_WINDSOR
DROP TABLE MARKS_WINDSOR
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (1,79.32)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (2,87.00)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (3,97.98)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (4,80.44)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (5,99.67)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (6,78)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (7,82.44)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (8,91.89)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (9,68.09)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (10,44.67)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (11,56.00)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (12,98.98)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (13,100.00)
INSERT INTO MARKS_WINDSOR (ENROLL_ID,MARKS_OBTAINED)VALUES (14,87.21)
 CREATE TABLE ENROLL_WINDSOR(
 ENROLL_ID INT IDENTITY(1,1),
 STU_ID INT,
 COURSE_ID INT,
 PRIMARY KEY(ENROLL_ID),
 CONSTRAINT STU_ID_FK FOREIGN KEY (STU_ID) REFERENCES STUDENT_WINDSOR(STU_ID),
 CONSTRAINT COURSE_ID1_FK FOREIGN KEY (COURSE_ID) REFERENCES COURSE_WINDSOR(COURSE_ID)
)

INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (1,1)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (1,3)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (1,4)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (2,1)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (2,2)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (2,5)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (3,4)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (3,5)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (4,1)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (4,3)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (4,2)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (5,3)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (5,1)
INSERT INTO ENROLL_WINDSOR (STU_ID,COURSE_ID) VALUES (5,5)

SELECT * FROM ENROLL_WINDSOR
DROP TABLE FEE_WINDSOR
DROP TABLE MARKS_WINDSOR
DROP TABLE COURSE_WINDSOR
DROP TABLE ENROLL_WINDSOR

CREATE TABLE FEE_WINDSOR(
 FEE_ID INT IDENTITY(1,1),
 STU_ID INT,
 FEE_AMOUNT NUMERIC(10),
 FEE_DESC VARCHAR(20),
 FEE_DATE DATE,
 PRIMARY KEY(FEE_ID),
  CONSTRAINT STU_ID2_FK FOREIGN KEY (STU_ID) REFERENCES STUDENT_WINDSOR(STU_ID)
)
SELECT * FROM STUDENT_WINDSOR

INSERT INTO FEE_WINDSOR  (STU_ID,FEE_AMOUNT,FEE_DESC,FEE_DATE)
VALUES(1,1000,'TUTION FEE','2017-09-02')

INSERT INTO FEE_WINDSOR  (STU_ID,FEE_AMOUNT,FEE_DESC,FEE_DATE)
VALUES(2,1000,'TUTION FEE','2016-02-02')
INSERT INTO FEE_WINDSOR  (STU_ID,FEE_AMOUNT,FEE_DESC,FEE_DATE)
VALUES(3,1000,'TUTION FEE','2015-09-01')
INSERT INTO FEE_WINDSOR  (STU_ID,FEE_AMOUNT,FEE_DESC,FEE_DATE)
VALUES(4,1000,'TUTION FEE','2017-09-08')
INSERT INTO FEE_WINDSOR  (STU_ID,FEE_AMOUNT,FEE_DESC,FEE_DATE)
VALUES(5,1000,'TUTION FEE','2016-09-02')

INSERT INTO FEE_WINDSOR  (STU_ID,FEE_AMOUNT,FEE_DESC,FEE_DATE)
VALUES(5,500,'GRAD FEE','2018-02-23')
INSERT INTO FEE_WINDSOR  (STU_ID,FEE_AMOUNT,FEE_DESC,FEE_DATE)
VALUES(2,500,'GRAD FEE','2018-01-01')

SELECT * FROM STUDENT_WINDSOR
SELECT * FROM ENROLL_WINDSOR
SELECT * FROM COURSE_WINDSOR
SELECT * FROM MARKS_WINDSOR
SELECT * FROM FEE_WINDSOR