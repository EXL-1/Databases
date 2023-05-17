CREATE TABLE locations (
    dc_location_id NUMBER(5),
    name VARCHAR2 (15),
    address VARCHAR2 (20);
)

CREATE TABLE instructors (
    instructor_id NUMBER(5),
    dc_location_id NUMBER(5),
    firstname VARCHAR2(20),
    surname VARCHAR2(20),
    contact VARCHAR2 (5) NOT NULL,
    grade VARCHAR2 (5);

)

CREATE TABLE cars (
    register_number NUMBER(7),
    car_model VARCHAR2 (10) NOT NULL,
    dc_location_id NUMBER(5);
)
