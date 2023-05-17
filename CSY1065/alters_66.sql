/*
Lucas Malik Databases 29/04/2023
run command @C:\Database\Databases_WorkFiles\scripts\CSY1065\alters_66.sql
connection string:
*/

-- AlTER TABLES 

-- MODIFY TABLES

ALTER TABLE sites MODIFY(
location VARCHAR2(40));

ALTER TABLE trainers MODIFY(
contact_no NUMBER(10) NOT NULL);

-- PRIMARY KEYS

ALTER TABLE subject_areas
ADD CONSTRAINT pk_subject_areas
PRIMARY KEY(subject_id);

ALTER TABLE sites 
ADD CONSTRAINT pk_sites
PRIMARY KEY(site_id);

ALTER TABLE courses 
ADD CONSTRAINT pk_courses 
PRIMARY KEY(course_id);

ALTER TABLE trainers 
ADD CONSTRAINT pk_trainers
PRIMARY KEY (trainer_id);

ALTER TABLE students 
ADD CONSTRAINT pk_students
PRIMARY KEY(student_id);

ALTER TABLE course_runs
ADD CONSTRAINT pk_course_runs
PRIMARY KEY(running_id);

ALTER TABLE attendances
ADD CONSTRAINT pk_attendances
PRIMARY KEY(running_id,student_id);

ALTER TABLE companies
ADD CONSTRAINT pk_companies
PRIMARY KEY(company_id);

ALTER TABLE invoices
ADD CONSTRAINT pk_invoices
PRIMARY KEY(invoice_id);

-- FOREIGN KEYS 

ALTER TABLE courses
ADD CONSTRAINT fk_c_subject_areas
FOREIGN KEY (subject_id)
REFERENCES subject_areas (subject_id)
ON DELETE CASCADE;

ALTER TABLE course_runs
ADD CONSTRAINT fk_cr_sites 
FOREIGN KEY (site_id)
REFERENCES sites (site_id);

ALTER TABLE course_runs
ADD CONSTRAINT fk_cr_courses
FOREIGN KEY (course_id)
REFERENCES courses (course_id);

ALTER TABLE course_runs
ADD CONSTRAINT fk_cr_trainers
FOREIGN KEY (trainer_id)
REFERENCES trainers (trainer_id);

ALTER TABLE attendances
ADD CONSTRAINT fk_a_course_runs
FOREIGN KEY (running_id)
REFERENCES course_runs (running_id)
ON DELETE CASCADE;

ALTER TABLE attendances
ADD CONSTRAINT fk_a_students
FOREIGN KEY (student_id)
REFERENCES students (student_id)
ON DELETE CASCADE;

ALTER TABLE invoices
ADD CONSTRAINT fk_i_students
FOREIGN KEY (student_id)
REFERENCES students (student_id);

ALTER TABLE invoices
ADD CONSTRAINT fk_i_companies
FOREIGN KEY (company_id)
REFERENCES companies (company_id);

-- CHECK CONSTRAINTS

AlTER TABLE students
ADD CONSTRAINT ck_student_fname
CHECK (st_firstname = UPPER(st_firstname));

AlTER TABLE students
ADD CONSTRAINT ck_student_lname
CHECK (st_surname = UPPER(st_surname));

ALTER TABLE courses
ADD CONSTRAINT ck_courses_duration
CHECK (duration IN ('03-Jan-0001', '05-Jan-0001'));

-- DROP A TABLE COLUMN 

AlTER TABLE students DROP
(date_of_birth);

-- ADD A TABLE COLUMN 

AlTER TABLE students ADD 
(date_of_birth DATE);

ALTER TABLE trainers ADD 
(car_reg VARCHAR2(15));

-- UNIQUE / ADD CONSTRAINT 

ALTER TABLE trainers
ADD CONSTRAINT u_trainers
UNIQUE (car_reg);

/*
ALTER TABLE trainers 
PRIMARY KEY(trainer_id);

ALTER TABLE subject_areas
PRIMARY KEY(subject_id);
*/
