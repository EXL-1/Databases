
-- ALTER TABLES / DROP CONSTRAINTS 

-- DROP FOREIGN KEY CONSTRAINTS 

-- DROP PRIMARY KEY CONSTRAINTS 

ALTER TABLE locations 
DROP CONSTRAINT pk_locations;

ALTER TABLE instructors 
DROP CONSTRAINT pk_instructors;

ALTER TABLE cars 
DROP CONSTRAINT pk_cars;

ALTER TABLE courses 
DROP CONSTRAINT pk_courses;

ALTER TABLE lessons 
DROP CONSTRAINT pk_lessons; 

ALTER TABLE learners 
DROP CONSTRAINT pk_learners; 

ALTER TABLE licences 
DROP CONSTRAINT pk_licences;

ALTER TABLE tests 
DROP CONSTRAINT pk_tests;

ALTER TABLE driving_tests 
DROP CONSTRAINT pk_driving_tests;

ALTER TABLE stages 
DROP CONSTRAINT pk_stages;

ALTER TABLE instructors
DROP CONSTRAINT fk_i_locations;

ALTER TABLE cars
DROP CONSTRAINT fk_c_locations;


-- DROP TABLES 

DROP TABLE locations;
DROP TABLE instructors;
DROP TABLE cars;
DROP TABLE courses;
DROP TABLE lessons; 
DROP TABLE learners; 
DROP TABLE licenses; 
DROP TABLE driving_tests; 
DROP TABLE test;
DROP TABLE stages;

PURGE RECYCLEBIN;


