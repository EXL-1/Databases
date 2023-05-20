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

-- locations records
INSERT INTO locations (dc_location_id, address)
VALUES (seq_dc_location_id.NEXTVAL, "PARK CAMPUS", "UNIVERSITY ROAD")

INSERT INTO locations (dc_location_id, address)
VALUES (seq_dc_location_id.NEXTVAL, "MILTON KEYNES CENTRAL" ,"MILTON KEYNES ROAD")

INSERT INTO locations (dc_location_id, address)
VALUES (seq_dc_location_id.NEXTVAL, "DAVENTRY CENTRAL" ,"DAVENTRY ROAD")

INSERT INTO locations (dc_location_id, address)
VALUES (seq_dc_location_id.NEXTVAL, "RUGBY STATION" "RUGBY ROAD")

INSERT INTO locations (dc_location_id, address)
VALUES (seq_dc_location_id.NEXTVAL, "CORBY ROAD")



--instructors records
INSERT INTO instructors(instructor_id, fname, sname, grade, contact details) 
VALUES (seq_instructor_id.NEXTVAL, "MANDY" ,"MORRELL", "PASS", "chrismaowusu@gmail.com")

INSERT INTO instructors (instructor_id, fname, sname,grade, contact details)
VALUES (seq_instructor_id.NEXTVAL, "MICHAEL", "OPUKU", "PASS", "MICHAELOPUKO402@GMAIL.COM")

INSERT INTO instructors(instructor_id, fname, sname, grade, contact details)
VALUES (seq_instructor_id.NEXTVAL,"ZELUILO", "CUE-EZE", "PASS", "07812653986")

INSERT INTO instructors(instructor_id, fname, sname, grade, contact details)
VALUES (seq_instructor_id.NEXTVAL, "MOLOLUWA", "SEGILOLA", "PASS", "MOLOLUWASEGILOLA@GMAIL.COM")

INSERT INTO instructors(instructor_id, fname, sname, grade, contact details)
VALUES (seq_instructor_id.NEXTVAL, "DION", "THOMAS", "PASS", "DIONTHOMAS124@GMAIL.COM")





--course records
INSERT INTO courses(course_id, lesson_category, course_level, price)
VALUES (4000, "CSY1030-STD", "COMPUTING","BSc", "£9250")

INSERT INTO courses(course_id, lesson category, course_level, price)
VALUES (4005, "CSY1065-STD", "SPORTS BUSINESS", "BSc", "£9250")

INSERT INTO courses(course_id, lesson_category, course_level, price)
VALUES (4006, "CSY1040-STD", "COMPUTING", "BSc", "£9250",)

INSERT INTO courses(course_id, lesson_category, course_level, price)
VALUES (4011, "BUSINESS", "BSC", "£9250")

INSERT INTO courses(course_id, lesson_category, course_level, price)
VALUES (4009, "CSY1080-DTS", "COMPUTING", "BSc", "9250")






--lessons records
INSERT INTO lessons (learner_id, reg_number_id, lesson_date, lesson_time_)
VALUES (5003, "22813920", "KV29 DUI", "12/01/2023", "15:20 PM" )

INSERT INTO lessons (learner_id, reg_number_id, lesson_date, lesson_time_)
VALUES (5004, "21744610", "KMV80", "12/08/23", "16:30")

INSERT INTO lessons(learner_id, reg_number_id, lesson_date, lesson_time)
VALUES (5005, "21879876", "VX87 BBG", "21/03/23", "14:45")

INSERT INTO lessons (learner_id, reg_number_id, lesson_date, lesson_time_)
VALUES (5005, "23872323", "UB87, MG6", "12/05/23", "10:00")

INSERT INTO lessons (learner_id, reg_number_id, lesson_date, lesson_time_)
VALUES (5090, "19811990", "DV18, DLA", "27/01/24", "11:29")





--learner records
INSERT INTO learners (learner_id, learner_age, Lfname, Lsname, Learner_contact_no)
VALUES (10000, "22813290", "18,", "CHRISMA", "OWUSU", "07521963186")

INSERT INTO learners (learner_id, learner_age, Lfname, Lsname, Learner_contact_no)
VALUES (10001, "21744610", "20", "ANTOINE", "OPOKU", "MICHAELOPOKU402@GMAIL.COM")

INSERT INTO learners(learner_id, learner_age, Lfname, Lsname, Learner_contact_no)
VALUES (5012, "21876483", "20", "VICTOR", "CUE-EZE", "ZELEZE09@GMAIL.COM")

INSERT INTO learners (learner_id, learner_age, Lfname, Lsname, Learner_contact_no)
VALUES (10019, "23981028", "29", "JEFFREY", "SEGILOLA", "MOLOLUWASEGILOLA@GMAIL.COM")

INSERT INTO learners (learner_id, learner_age, Lfname, Lsname, Learner_contact_no)
VALUES (10021, "23091291", "26", "FEMI" "SHODIPO", "FEMISHAKOOS@HOTMAIL.COM")


-- license records
INSERT INTO licenses (license_id, license_number, licence_type)
VALUES (10000, "9872127", "849339", "B1")

INSERT INTO licenses(license_id, license_number, licence_type)
VALUES (10002, "28190972", "876543", "B2")

INSERT INTO licenses(license_id, license_number, licence_type)
VALUES(10009, "98654321", "876539", "B3")

INSERT INTO licenses (license_id, license_number, licence_type)
VALUES (50025, "20194755", "301847", "B4")

INSERT INTO licenses (license_id, license_number, licence_type)
VALUES (10002, "38716333", "301387", "B1")



-- driving tests records
INSERT INTO driving_tests(driving_test_id, driving_test_date, driving_test_time)
VALUES (50000, "55555555", "07/06/2022","10:00")

INSERT INTO driving_tests(driving_test_id, driving_test_date, driving_test_time)
VALUES (50002, "777777777", "18/12/22", "13:00")

INSERT INTO driving_tests(driving_test_id, driving_test_date, driving_test_time)
VALUES (50005, "22222222", "09/05/22", "13:00")

INSERT INTO driving_tests(driving_test_id, driving_test_date, driving_test_time)
VALUES (50059, "29102928", "01/01/23", "13:58")

INSERT INTO driving_tests(driving_test_id, driving_test_date, driving_test_time)
VALUES (50053, "22813920", "08/06/23", "12:00")



-- stages records 
INSERT INTO stages(stage_element, stage_id, completion)
VALUES (60002, "FINISHED", "65478746", "29/05/23")

INSERT INTO stages (stage_element, stage_id, completion)
VALUES (60006, "FINISHED", "88890999", "09/05/23")

INSERT INTO stages(stage_element, stage_id, completion)
VALUES (60026, "FINISHED", "30291273", "01/01/23")

INSERT INTO stages(stage_element, stage_id, completion)
VALUES (60000, "finished", "55555555", "07/06/2022")

INSERT INTO stages(stage_element, stage_id, completion)
VALUES (60001, "FINISHED", "88888999", "18/12/22")



-- tests records
INSERT INTO tests(test_id, test_category, test_type)
VALUES (30003, "22813921", "CATEGORY B", "CATEGORY B" )

INSERT INTO tests(test_id, test_category, test_type)
VALUES (300012, "21744610", "CATEGORY A", "CATEGORY A")

INSERT INTO tests(test_id, test_category, test_type)
VALUES (30001, "23981028", "CATEGORY B", "CATEGORY B")

INSERT INTO tests(test_id, test_category, test_type)
VALUES (30019, "CATEGORY B", "CATEGORY B")

INSERT INTO tests(test_id, test_category, test_type)
VALUES (3001, "CATEGORY B", "CATEGORY B")
