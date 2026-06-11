
CREATE DATABASE Student;
USE Student;

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    mark INT,
    course VARCHAR(50)
);


INSERT INTO Students (id, name, subject, mark, course) VALUES
(1, 'Pradeep', 'Java', 85, 'BCA'),
(2, 'Sanjay', 'Python', 45, 'BCA'),
(3, 'Rahul', 'SQL', 75, 'BSc CS'),
(4, 'Karthik', 'Java', 55, 'BCom'),
(5, 'Anitha', 'Python', 90, 'BSc CS'),
(6, 'Meena', 'SQL', 40, 'BCA'),
(7, 'Arun', 'Java', 65, 'BSc IT'),
(8, 'Divya', 'Python', 50, 'BSc IT');


SELECT *
FROM Students
WHERE mark >
(
    SELECT AVG(mark)
    FROM Students
);


SELECT *
FROM Students
WHERE id IN
(
    SELECT id
    FROM Students
    WHERE mark > 50
);