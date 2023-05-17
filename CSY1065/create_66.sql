/* 
CSY 1065_66 Databases Lucas Malik 28/04/2023
-- run command @C:\Database\Databases_WorkFiles\scripts\CSY1065\create_66.sql
connection string: 
*/

-- CREATE TABLES 

CREATE TABLE subject_areas(
subject_id NUMBER(5), 
subject_name VARCHAR2(15),
description VARCHAR2(250));

CREATE TABLE sites(     
site_id NUMBER(5),
site_name VARCHAR2(20),
location VARCHAR2(30));

CREATE TABLE courses(
course_id NUMBER(5),
course_title VARCHAR2(15),
subject_id NUMBER(5),
duration DATE,
cost CHAR(10));

CREATE TABLE trainers(
trainer_id NUMBER(5),
t_firstname VARCHAR2(15),
t_surname VARCHAR2(20),
mentor_id NUMBER(5),
contact_no CHAR(11),
rate NUMBER(6));

CREATE TABLE students(
student_id NUMBER(7),
st_firstname VARCHAR2(15),
st_surname VARCHAR2(20),
contact VARCHAR2(15)NOT NULL,
date_of_birth DATE);

CREATE TABLE course_runs(
running_id NUMBER(5),
site_id NUMBER(5),
course_id NUMBER(5),
trainer_id NUMBER(5),
start_date DATE);

CREATE TABLE attendances(
running_id NUMBER(5),
student_id NUMBER(7),
amount_paid VARCHAR2(10));

CREATE TABLE companies(
company_id NUMBER(5),
company_name VARCHAR(15),
town CHAR(10),
contact_no VARCHAR2(10)NOT NULL, 
no_of_emp CHAR(3));

CREATE TABLE invoices(
invoice_id NUMBER(5),
company_id NUMBER(5),
student_id NUMBER(7),
billing_date DATE);

-- Create Sequences 

CREATE SEQUENCE seq_site_id
INCREMENT BY 1 
START WITH 1; 

CREATE SEQUENCE seq_trainer_id
INCREMENT BY 1
START WITH 101;

CREATE SEQUENCE seq_student_id 
INCREMENT BY 1 
START WITH 2000000
MAXVALUE 3000000;

CREATE SEQUENCE seq_invoice_id
INCREMENT BY 1
START WITH 10000;


