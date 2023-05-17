-- CSY 1065_66 Databases Lucas Malik 11/05/2023
-- @C:\Database\Databases_WorkFiles\scripts\CSY1065\insert_66.sql
-- connection string: 

-- INSERT DATA 

INSERT INTO sites 
(site_id ,site_name, location)
VALUES (seq_site_id.NEXTVAL, 'PARK CAMPUS', 'NORTHAMPTON');

INSERT INTO courses
(course_id)
VALUES (10);

INSERT INTO trainers
(trainer_id, t_firstname, t_surname, mentor_id, contact_no, rate)
VALUES (seq_trainer_id.NEXTVAL, 'MANDY', 'MORRELL', NULL, '01604735500', 5.50);

INSERT INTO students 
(student_id, st_firstname, st_surname, contact, date_of_birth)
VALUES (seq_student_id.NEXTVAL, 'LUCAS', 'MALIK', '447484271954', '21-SEP-2022');

INSERT INTO invoices 
(invoice_id, student_id, billing_date)
VALUES (seq_invoice_id.NEXTVAL, 2000000, '10-SEP-2023');

-- UPDATE DATA 

UPDATE sites 
SET location = 'UON'
WHERE site_id = 1;

UPDATE trainers 
SET rate = +10 
WHERE trainer_id = 102;



