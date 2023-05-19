
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY'; 
SELECT sysdate FROM dual;

-- CREATE TABLES 

CREATE TABLE locations (
    dc_location_id NUMBER(5), -- Primary Key
    name VARCHAR2(15), -- Optional data
    address VARCHAR2(20) NOT NULL); -- Important Data

CREATE TABLE instructors (
    instructor_id NUMBER(5), -- Primary Key 
    dc_location_id NUMBER(5) NOT NULL ,  -- MANDATORY Foreign Key 
    firstname VARCHAR2(20), -- Check Constraint 
    surname VARCHAR2(20), -- Check Constraint 
    contact_no VARCHAR2(10) NOT NULL, -- Important Data
    grade CHAR(5)); -- Check Constraint and Default 

CREATE TABLE cars (
    reg_num NUMBER(7), -- Primary Key 
    car_model VARCHAR2(10) NOT NULL, -- Necessary Data
    dc_location_id NUMBER(5) NOT NULL); -- MANDATORY Foreign Key

CREATE TABLE courses (
    course_id NUMBER(5), -- Primary Key
    lesson_category VARCHAR2(3), -- Default 
    course_level VARCHAR2(10), -- Default
    price NUMBER(10), 
    instructor_id NUMBER(5) NOT NULL ); -- MANDATORY Foreign Key

CREATE TABLE lessons (
    lesson_id NUMBER(5), -- Primary Key
    learner_id NUMBER(5), -- Foreign Key 
    reg_num NUMBER(7) , -- Foreign Key
    course_id NUMBER(5) NOT NULL, -- MANDATORY Foreign Key
    lesson_date DATE ); -- Check Constraint 

CREATE TABLE learners (
    learner_id NUMBER(5), -- Primary Key
    learner_age NUMBER(2) NOT NULL , -- Important Data 
    l_firstname VARCHAR2(20), -- Check Constraint 
    l_surname VARCHAR2(20), -- Check Constraint 
    l_contact_no VARCHAR2(10) NOT NULL); -- Important Data

CREATE TABLE licences (
    license_id NUMBER(5), -- Primary Key
    learner_id NUMBER(5), -- Foreign Key
    license_num NUMBER(10) NOT NULL, -- Important Data
    license_type VARCHAR2(15)); -- Default 

CREATE TABLE driving_tests (  
    test_date DATE, -- Check Constraint 
    test_time DATE, -- Check Constraint 
    test_id NUMBER(5), -- Foreign Key / Composite Key
    learner_id NUMBER(5)); -- Foreign Key / Composite Key

CREATE TABLE stages (
    stage_id NUMBER(5), -- Primary Key
    stage_element NUMBER(10),
    completion CHAR(1), -- Default 
    learner_id NUMBER(5) NOT NULL, -- Mandatory Foreign Key / Pks
    test_id NUMBER(5) NOT NULL ); -- Mandatory Foreign Key / Pks

CREATE TABLE tests (
    test_id NUMBER(5), -- Primary Key
    test_category VARCHAR2(3), -- Default 
    test_type VARCHAR2(10)); -- Default 
    
    
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
