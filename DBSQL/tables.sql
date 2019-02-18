
-- Create the table in the specified schema
CREATE TABLE course
(
    id INT NOT NULL PRIMARY KEY, -- primary key column
    id serial primary key NOT NULL,
    name VARCHAR(60) NOT NULL,
    course_code VARCHAR(10) NOT NULL,
   
);

CREATE TABLE note
(
    id serial PRIMARY KEY NOT NULL,
    date DATE NOT NULL,
    content TEXT NOT NULL,
    course_id INT REFERENCES course(id)

);

INSERT INTO course(name, course_code) VALUES ('WEB II', 'CS 313');
INSERT INTO course(name, course_code) VALUES ('WEB I', 'CS 213');



 