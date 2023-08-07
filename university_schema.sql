CREATE SCHEMA `devcamp_university_schema`;

USE devcamp_university_schema;


CREATE TABLE `students` (
  `id_students` int NOT NULL AUTO_INCREMENT,
  `student_dni` varchar(9) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id_students`),
  UNIQUE KEY `student_dni_UNIQUE` (`student_dni`)
);

CREATE TABLE `courses` (
  `id_courses` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id_courses`),
  UNIQUE KEY `course_name_UNIQUE` (`course_name`)
);

CREATE TABLE `professors` (
  `id_professors` int NOT NULL AUTO_INCREMENT,
  `professor_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id_professors`),
  UNIQUE KEY `professor_name_UNIQUE` (`professor_name`)
);

CREATE TABLE `grades` (
  `id_grades` int NOT NULL AUTO_INCREMENT,
  `grades_values` decimal(10,0) NOT NULL,
  `id_student` int NOT NULL,
  `id_course` int NOT NULL,
  `id_professor` int NOT NULL,
  PRIMARY KEY (`id_grades`),
  KEY `id_student_idx` (`id_student`),
  KEY `id_course_idx` (`id_course`),
  KEY `id_professor_idx` (`id_professor`),
  CONSTRAINT `id_course` FOREIGN KEY (`id_course`) REFERENCES `courses` (`id_courses`) ON DELETE CASCADE,
  CONSTRAINT `id_professor` FOREIGN KEY (`id_professor`) REFERENCES `professors` (`id_professors`) ON DELETE CASCADE,
  CONSTRAINT `id_student` FOREIGN KEY (`id_student`) REFERENCES `students` (`id_students`) ON DELETE CASCADE
);


SET SQL_SAFE_UPDATES = 0;

INSERT INTO students(student_dni, student_name)
VALUES ("10000000A", "student1");

INSERT INTO students(student_dni, student_name)
VALUES ("20000000B", "student2");

INSERT INTO students(student_dni, student_name)
VALUES ("30000000C", "student3");

INSERT INTO students(student_dni, student_name)
VALUES ("40000000D", "student4");

INSERT INTO students(student_dni, student_name)
VALUES ("50000000E", "student5");

INSERT INTO students(student_dni, student_name)
VALUES ("60000000F", "student6");

INSERT INTO students(student_dni, student_name)
VALUES ("70000000G", "student7");

INSERT INTO students(student_dni, student_name)
VALUES ("80000000H", "student8");

INSERT INTO students(student_dni, student_name)
VALUES ("90000000I", "student9");

INSERT INTO students(student_dni, student_name)
VALUES ("01100000J", "student10");

INSERT INTO students(student_dni, student_name)
VALUES ("01200000K", "student11");

INSERT INTO students(student_dni, student_name)
VALUES ("01300000L", "student12");

INSERT INTO students(student_dni, student_name)
VALUES ("01400000M", "student13");

INSERT INTO students(student_dni, student_name)
VALUES ("00000000N", "student14");

INSERT INTO students(student_dni, student_name)
VALUES ("01500000O", "student15");

INSERT INTO students(student_dni, student_name)
VALUES ("01600000P", "student16");

INSERT INTO students(student_dni, student_name)
VALUES ("01700000Q", "student17");

INSERT INTO students(student_dni, student_name)
VALUES ("01800000R", "student18");

INSERT INTO students(student_dni, student_name)
VALUES ("01900000S", "student19");

INSERT INTO students(student_dni, student_name)
VALUES ("02000000T", "student20");

INSERT INTO students(student_dni, student_name)
VALUES ("02200000U", "student21");

INSERT INTO students(student_dni, student_name)
VALUES ("02300000V", "student22");

INSERT INTO students(student_dni, student_name)
VALUES ("02400000A", "student23");

INSERT INTO students(student_dni, student_name)
VALUES ("02500000W", "student24");

INSERT INTO students(student_dni, student_name)
VALUES ("02600000Z", "student25");

INSERT INTO courses(course_name)
VALUES 
	("HTML"),
	("CSS"),
	("JS"),
	("REACT"),
	("PYTHON"),
	("MySQL"),
	("UI/UX"),
	("UML");
    
INSERT INTO professors(professor_name)
VALUES
	("professor1"),
	("professor2"),
	("professor3"),
	("professor4");

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 1, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 1, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 2, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 2, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 3, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 3, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 4, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 4, 4, 2);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 4, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 5, 7, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 5, 8, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 6, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 6, 4, 2);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 6, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 6, 6, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 6, 7, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 7, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 7, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 7, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 7, 4, 2);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 8, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 8, 4, 2);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 8, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 8, 6, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 8, 8, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 9, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 9, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 10, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 10, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 10, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 10, 4, 2);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 10, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 10, 6, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 10, 7, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 10, 8, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 11, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 11, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 11, 7, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 11, 8, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 12, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 12, 4, 2);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 12, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 12, 6, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 13, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 13, 6, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 14, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 14, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 14, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 14, 7, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 14, 8, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 15, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 15, 4, 2);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 15, 6, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 15, 8, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 16, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 16, 4, 2);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 17, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 17, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 17, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 17, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 17, 7, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 18, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 18, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 18, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 19, 8, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 20, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 20, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 20, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 20, 4, 2);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 20, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 20, 6, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 20, 7, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 20, 8, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 21, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 21, 4, 2);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 21, 6, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 22, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 23, 1, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 23, 3, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 23, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 23, 7, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 23, 8, 4);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 24, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 24, 6, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 25, 2, 1);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 25, 5, 3);

INSERT INTO grades(grades_values, id_student, id_course, id_professor)
VALUES (0, 25, 7, 4);

UPDATE grades
SET grades_values = 40 + RAND()*60;


SET SQL_SAFE_UPDATES = 1;

-- 1. QUERY for the average grade that is given by each professor
SELECT 
	p.id_professors AS "ID", 
	p.professor_name AS "PROFESSOR", 
	AVG(g.grades_values) AS "AVERAGE GRADE"
FROM professors p
JOIN grades g
ON p.id_professors = g.id_professor
GROUP BY p.professor_name;

-- 2. QUERY for the top grades of each student
SELECT 
	s.id_students AS "ID",
	s.student_name AS "STUDENT",
	MAX(g.grades_values) AS "HIGHEST GRADE"
FROM grades g
JOIN students s
ON g.id_student = s.id_students
GROUP BY s.id_students;

-- 3. QUERY to group students by the courses they're enrolled in.
SELECT 
	c.course_name AS "COURSE",  
	s.student_name AS "STUDENT"
FROM grades g
JOIN students s
ON  g.id_student = s.id_students
JOIN courses c
ON c.id_courses = g.id_course
JOIN professors p
ON g.id_professor = p.id_professors
ORDER BY c.id_courses, s.id_students;

-- 4. QUERY for creating a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course.
SELECT c.course_name AS "COURSE", AVG(g.grades_values) AS "GRADE"
FROM courses c
JOIN grades g
ON c.id_courses = g.id_course
GROUP BY c.course_name
ORDER BY AVG(g.grades_values) ASC;

-- 5. Finding which student and professor have the most courses in common.
SELECT
	"Student and professor with most courses in common:",
	s.student_name AS "STUDENT",
	professor_name AS "PROFESSOR",
	COUNT(*) AS "CLASSES IN COMMON"
FROM grades g
JOIN students s
ON g.id_student = s.id_students
JOIN professors p
ON g.id_professor = p.id_professors
GROUP BY id_students, p.id_professors
ORDER BY COUNT(*) DESC
LIMIT 10;