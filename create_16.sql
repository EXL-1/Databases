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
    grade VARCHAR2(5));

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
    lesson_date DATE,
    lesson_time TIME);

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
    test_date DATE,
    test_time TIME,
    test_id NUMBER(5),
    learner_id NUMBER(5));

CREATE TABLE stages (
    stage_id NUMBER(5),
    stage_element NUMBER(10),
    completion VARCHAR2(1),
    driving_test_id NUMBER(5));

CREATE TABLE tests (
    test_id NUMBER(5),
    test_category VARCHAR2(3),
    test_type VARCHAR2(10));
