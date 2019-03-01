-- schema
CREATE TABLE Students (
    student_id INT NOT NULL AUTO_INCREMENT,
    student_name VARCHAR(255) NOT NULL,
    student_year INT NOT NULL, 
    PRIMARY KEY(student_id)
);

CREATE TABLE Courses (
    course_number INT NOT NULL,
    course_name VARCHAR(255) NOT NULL,
    PRIMARY KEY(course_number)
);

CREATE TABLE Classes (
    class_id INT NOT NULL,
    course_number INT NOT NULL,
    num_students VARCHAR(255) NOT NULL,
    FOREIGN KEY(course_number) REFERENCES Courses(course_number),
    PRIMARY KEY(class_id)
);

CREATE TABLE Registrations (
    class_id INT NOT NULL,
    student_id INT NOT NULL,
    FOREIGN KEY(class_id) REFERENCES Classes(class_id),
    FOREIGN KEY(student_id) REFERENCES Students(student_id)
);

-- data
INSERT INTO Students
    (student_id, student_name, student_year)
VALUES
    (1, 'Michael', 1),
    (2, 'Amanda', 1),
    (3, 'Gordon', 3),
    (4, 'Tom', 3),
    (5, 'Jane', 2),
    (6, 'Sam', 4)
;

INSERT INTO Courses
    (course_name, course_number)
VALUES
    ('physics', 33115), 
    ('microeconomics', 73250),
    ('concepts', 21127),
    ('english', 76101),
    ('history', 79104),
    ('statistics', 36225)
;

INSERT INTO Classes
    (class_id, course_number, num_students)
VALUES
    (1, '33115', 200), 
    (2, '33115', 100), 
    (3, '73250', 80),
    (4, '21127', 120),
    (5, '76101', 50),
    (6, '79104', 250),
    (7, '36225', 30),
    (8, '36225', 130)
;

INSERT INTO Registrations
    (class_id, student_id) 
VALUES
    (1, 5),
    (1, 2),
    (1, 5),
    (4, 1),
    (4, 3),
    (5, 6)
;

SELECT * FROM Students
 LIMIT 5;

SELECT student_name FROM Students
 ORDER BY student_name DESC;

SELECT * FROM Students
 WHERE student_year = 1;

SELECT * FROM Classes
 WHERE num_students > 100;
 
SELECT student_id FROM Registrations
 GROUP BY student_id
HAVING count(class_id) > 1; 

SELECT s.student_name FROM Registrations as r
  JOIN Students as s ON r.student_id = s.student_id 
 GROUP BY s.student_id
HAVING count(r.class_id) > 1; 

SELECT c.class_id FROM Registrations as r 
 RIGHT JOIN Classes as c ON r.class_id = c.class_id
 WHERE r.student_id IS NULL;

SELECT DISTINCT(c2.course_name) FROM Registrations as r 
 RIGHT JOIN Classes as c1 ON r.class_id = c1.class_id
       JOIN Courses as c2 ON c1.course_number = c2.course_number
 WHERE r.student_id IS NULL;
 
