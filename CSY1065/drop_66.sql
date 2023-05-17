/*
CSY 1065_66 Databases Lucas Malik 29/04/2023
-- run command @C:\Database\Databases_WorkFiles\scripts\CSY1065\drop_66.sql
connection string: 
*/

-- ALTER TABLES / DROP CONSTRAINTS

-- DROP FOREIGN KEY CONSTRAINTS

ALTER TABLE courses 
DROP CONSTRAINT fk_c_subject_areas;

ALTER TABLE course_runs
DROP CONSTRAINT fk_cr_sites;

ALTER TABLE course_runs
DROP CONSTRAINT fk_cr_courses;

ALTER TABLE course_runs
DROP CONSTRAINT fk_cr_trainers;

ALTER TABLE attendances 
DROP CONSTRAINT fk_a_course_runs;

ALTER TABLE attendances 
DROP CONSTRAINT fk_a_students;

ALTER TABLE attendances
DROP CONSTRAINT fk_i_students;

ALTER TABLE attendances
DROP CONSTRAINT fk_i_companies;

ALTER TABLE invoices
DROP CONSTRAINT fk_i_companies;

ALTER TABLE invoices
DROP CONSTRAINT fk_i_students;

-- DROP PRIMARY KEY CONSTRAINTS 

ALTER TABLE subject_areas
DROP CONSTRAINT pk_subject_areas;

ALTER TABLE sites 
DROP CONSTRAINT pk_sites;

ALTER TABLE students
DROP CONSTRAINT pk_students;

ALTER TABLE trainers
DROP CONSTRAINT pk_trainers;

ALTER TABLE courses
DROP CONSTRAINT pk_courses;

ALTER TABLE course_runs
DROP CONSTRAINT pk_course_runs;

ALTER TABLE attendances
DROP CONSTRAINT pk_attendances;

ALTER TABLE companies
DROP CONSTRAINT pk_companies;

ALTER TABLE invoices
DROP CONSTRAINT pk_invoices;
-- DROP UNIQUE CONSTRAINT 

ALTER TABLE trainers
DROP CONSTRAINT u_trainers;

-- DROP TABLES 

DROP TABLE students;
DROP TABLE trainers; 
DROP TABLE subject_areas;
DROP TABLE sites;
DROP TABLE courses;
DROP TABLE course_runs;
DROP TABLE attendances;
DROP TABLE companies;
DROP TABLE invoices;

PURGE RECYCLEBIN;

-- DROP SEQUENCES 

DROP SEQUENCE seq_site_id;
DROP SEQUENCE seq_trainer_id;
DROP SEQUENCE seq_student_id;
DROP SEQUENCE seq_invoice_id;
