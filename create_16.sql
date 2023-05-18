
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY'; 
SELECT sysdate FROM dual;

-- CREATE TABLES 

CREATE TABLE locations (
    dc_location_id NUMBER(5),
    name VARCHAR2(15),
    address VARCHAR2(20));

CREATE TABLE instructors (
    instructor_id NUMBER(5),
    dc_location_id NUMBER(5),
    firstname VARCHAR2(20),
    surname VARCHAR2(20),
    contact VARCHAR2(10) NOT NULL,
    grade CHAR(5));

CREATE TABLE cars (
    register_number NUMBER(7),
    car_model VARCHAR2(10) NOT NULL,
    dc_location_id NUMBER(5));

CREATE TABLE courses (
    course_id NUMBER(5),
    lesson_category VARCHAR2(3),
    course_level VARCHAR2(15),
    price NUMBER(10),
    instructor_id NUMBER(5));

CREATE TABLE lessons (
    lesson_id NUMBER(5),
    learner_id NUMBER(5),
    register_number NUMBER(5) NOT NULL,
    course_id NUMBER(5),
    lesson_date DATE );

CREATE TABLE learners (
    learner_id NUMBER(5),
    learner_age NUMBER(2),
    l_firstname VARCHAR2(20),
    l_surname VARCHAR2(20),
    l_contact NUMBER(10) NOT NULL);

CREATE TABLE licences (
    license_id NUMBER(5),
    learner_id NUMBER(5),
    license_number NUMBER(10),
    license_type VARCHAR2(15));

CREATE TABLE driving_tests (
    driving_test_id NUMBER(5),
    test_date_time DATETIME,
    test_id NUMBER(5),
    learner_id NUMBER(5));

CREATE TABLE stages (
    stage_id NUMBER(5),
    stage_element NUMBER(10),
    completion CHAR(1),
    driving_test_id NUMBER(5));

CREATE TABLE tests (
    test_id NUMBER(5),
    test_category VARCHAR2(3),
    test_type VARCHAR2(10));
    -- CREATE SEQUENCES 
    
CREATE SEQUENCE seq_dc_location_id
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_instructor_id 
INCREMENT BY 1
START WITH 101;

CREATE SEQUENCE seq_course_id 
INCREMENT BY 10 
START WITH 2000;

CREATE SEQUENCE seq_learner_id 
INCREMENT BY 1
START WITH 10000
MAXVALUE 20000;

CREATE SEQUENCE seq_stage_id 
INCREMENT BY 10; 
START WITH 30005;
