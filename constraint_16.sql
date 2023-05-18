
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-YYYY'; 
SELECT sysdate FROM dual;

-- ALTER TABLES 

-- PRIMARY KEYS 

ALTER TABLE locations
ADD CONSTRAINT pk_locations 
PRIMARY KEY (dc_location_id);

ALTER TABLE instructors
ADD CONSTRAINT pk_instructors
PRIMARY KEY (instructor_id);

ALTER TABLE cars 
ADD CONSTRAINT pk_cars 
PRIMARY KEY (car_reg);

ALTER TABLE courses
ADD CONSTRAINT pk_courses
PRIMARY KEY (course_id);

ALTER TABLE lessons 
ADD CONSTRAINT pk_lessons 
PRIMARY KEY (lesson_id);

ALTER TABLE learners 
ADD CONSTRAINT pk_learners 
PRIMARY KEY (learner_id);

ALTER TABLE licences 
ADD CONSTRAINT pk_licences
PRIMARY KEY (licence_id);

ALTER TABLE tests 
ADD CONSTRAINT pk_tests 
PRIMARY KEY (test_id);

ALTER TABLE driving_tests 
ADD CONSTRAINT pk_driving_tests
PRIMARY KEY (learner_id, test_id);

ALTER TABLE stages 
ADD CONSTRAINT pk_stages 
PRIMARY KEY (stage_id);

-- FOREIGN KEYS 

ALTER TABLE instructors
ADD CONSTRAINT fk_i_locations 
FOREIGN KEY (dc_location_id)
REFERENCES locations (dc_location_id)
ON DELETE CASCADE;

ALTER TABLE cars 
ADD CONSTRAINT fk_c_locations 
FOREIGN KEY (dc_location_id)
REFERENCES locations (dc_location_id)
ON DELETE CASCADE;

ALTER TABLE courses 
ADD CONSTRAINT fk_c_instructors 
FOREIGN KEY (instructor_id)
REFERENCES instructors (instructor_id);

ALTER TABLE lessons 
ADD CONSTRAINT fk_l_courses 
FOREIGN KEY (course_id)
REFERENCES courses (course_id);

ALTER TABLE lessons 
ADD CONSTRAINT fk_l_cars 
FOREIGN KEY (car_reg)
REFERENCES cars (car_reg);

ALTER TABLE licences
ADD CONSTRAINT fk_l_learners
FOREIGN KEY (learner_id)
REFERENCES learners (learner_id);

ALTER TABLE driving_tests
ADD CONSTRAINT fk_dt_learners
FOREIGN KEY (learner_id)
REFERENCES learners (learner_id);

ALTER TABLE driving_tests
ADD CONSTRAINT fk_dt_tests
FOREIGN KEY (test_id)
REFERENCES tests (test_id);

-- CHECK CONSTRAINTS 
