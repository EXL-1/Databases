INSERT INTO locations (dc_location_id, ,name, address)
VALUES (seq_dc_location_id.NEXTVAL, "PARK CAMPUS", "UNIVERSITY ROAD");

INSERT INTO instructors(instructor_id, fname, sname, grade, contact details) 
VALUES (seq_instructor_id.NEXTVAL, "MANDY" ,"MORRELL", "PASS", "chrismaowusu@gmail.com")

INSERT INTO courses(course_id, lesson_category, course_level, price)
VALUES (4000, "CSY1030-STD", "COMPUTING","BSc", "£9250")

INSERT INTO lessons (learner_id, reg_number_id, lesson_date, lesson_time_)
VALUE (5003, "22813920", "KV29 DUI", "12/01/2023", "15:20 PM" )

INSERT INTO learners (learner_id, learner_age, Lfname, Lsname, Learner_contact_no)
VALUES (10000, "22813290", "18,", "Chrisma", "Owusu", "07521963186")

INSERT INTO licenses (license_id, license_number, licence_type)
VALUES (10000, "9872127", "849339", "B1")

INSERT INTO driving_tests(driving_test_id, driving_test_date, driving_test_time)
VALUES (50000, "55555555", "07/06/2022", "10:00")

INSERT INTO stages(stage_element, stage_id, completion)
VALUES (60000, "finished", "55555555", "07/06/2022")

INSERT INTO tests(test_id, test_category, test_type)
VALUES ("22813921", "Category B", "Category B" )
