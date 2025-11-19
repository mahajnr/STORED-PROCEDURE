CREATE DATABASE SMS;
USE SMS;


CREATE TABLE students(
Student_ID INT PRIMARY KEY AUTO_INCREMENT,
Names VARCHAR(50),
Gender VARCHAR(10),
DOB DATE,
Department_ID INT,
FOREIGN KEY (Department_ID) REFERENCES departments(Department_ID)
);



CREATE TABLE departments(
Department_ID INT PRIMARY KEY AUTO_INCREMENT,
Dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE courses (
Course_ID INT PRIMARY KEY AUTO_INCREMENT,
Course_name VARCHAR(50),
Instructor_ID INT,
Department_ID INT,
FOREIGN KEY (Department_ID) REFERENCES departments(Department_ID),
FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID)
);

CREATE TABLE enrollment(
Enrollment_ID INT PRIMARY KEY AUTO_INCREMENT,
Student_ID INT, 
Course_ID INT,
Enrollment_date DATE,
FOREIGN KEY (Student_ID) REFERENCES students(Student_ID),
FOREIGN KEY (Course_ID) REFERENCES courses(Course_ID)
);

CREATE TABLE Instructors(
Instructor_ID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department_ID INT,
FOREIGN KEY (Department_ID) REFERENCES departments(Department_ID)
);


INSERT INTO departments(Dept_name)
VALUES ("Data_Analysis"),
       ("Cybersecurity"),
       ("Frontend"),
       ("UI/UX Design"),
	   ("Backend");
SELECT * FROM departments;


INSERT INTO Students (Names, Gender, DOB, Department_ID)
 VALUES
		('Alex Johnson', 'Male', '2000-03-12', 1),
		('Fatima Ahmed', 'Female', '2001-07-20', 1),
		('David Brown', 'Male', '1999-11-05', 2),
		('Mary Okoro', 'Female', '2000-02-17', 2),
		('James Bello', 'Male', '2002-09-25', 3),
		('Ngozi Samuel', 'Female', '2001-10-30', 3),
		('Aisha Ibrahim', 'Female', '2000-08-12', 4),
		('John Balogun', 'Male', '1999-12-03', 4),
		('Zainab Raji', 'Female', '2002-04-10', 5),
		('Ibrahim Maha', 'Male', '2000-01-15', 5),
		('Susan Smith', 'Female', '1999-09-09', 1),
		('Grace Davis', 'Female', '2001-03-27', 1),
		('Chris Wilson', 'Male', '2000-07-11', 2),
		('Patricia Isaac', 'Female', '2001-12-21', 2),
		('Tunde Ade', 'Male', '2002-02-02', 3),
		('Chinedu Garcia', 'Male', '2001-04-05', 3),
		('Amina Aliu', 'Female', '2000-10-28', 4),
		('Emeka Jones', 'Male', '1999-11-17', 4),
		('Ruth Adebayo', 'Female', '2001-01-22', 5),
		('Tobi Nguyen', 'Male', '2002-06-06', 5),
		('John James', 'Male', '1999-03-03', 1),
		('Jane Razak', 'Female', '2001-07-18', 1),
		('Peter Obi', 'Male', '2000-05-10', 2),
		('Cynthia Bello', 'Female', '2001-09-13', 2),
		('Victor Ade', 'Male', '1999-12-30', 3),
		('Deborah Ola', 'Female', '2002-08-14', 3),
		('Efe Okon', 'Male', '2001-02-07', 4),
		('Chika Uche', 'Female', '2000-09-16', 4),
		('Abdul Ibrahim', 'Male', '2001-10-05', 5),
		('Joy Akin', 'Female', '2002-01-09', 5),
		('Michael James', 'Male', '2000-12-25', 1),
		('Linda John', 'Female', '2001-03-30', 2),
		('Paul Sam', 'Male', '2000-07-12', 3),
		('Helen Obi', 'Female', '2001-05-02', 4),
		('Samuel Ade', 'Male', '1999-11-29', 5),
		('Gloria Bello', 'Female', '2000-06-15', 1),
		('Collins Okafor', 'Male', '2002-09-09', 2),
		('Amara Nnaji', 'Female', '2001-11-11', 3),
		('Timi Ojo', 'Male', '2000-10-19', 4),
		('Rose Ali', 'Female', '2002-04-01', 5),
		('Kelechi Musa', 'Male', '1999-08-23', 1),
		('Adaobi Ikenna', 'Female', '2000-07-07', 2),
		('Idris Bello', 'Male', '2001-03-03', 3),
		('Precious Udo', 'Female', '2002-12-12', 4),
		('Ahmed Yusuf', 'Male', '1999-05-05', 5),
		('Sandra Obi', 'Female', '2001-09-21', 1),
		('Joshua Ali', 'Male', '2002-02-15', 2),
		('Ifeoma Eze', 'Female', '2000-08-08', 3),
		('Blessing Okon', 'Female', '2001-04-04', 4);
 INSERT INTO Students (Names, Gender, DOB, Department_ID)
 VALUES       
		('Henry Okafor', 'Male', '1999-10-10', 5);
        
SELECT * FROM students;

INSERT INTO courses (Course_name,Department_ID,Instructor_ID)
VALUES  ('Excel', 1, 1),
		('SQL', 1, 2),
		('PowerBI', 1, 3), 
		('CompTIA Security', 2, 4),
		('Certified Ethical Hacker', 2, 5),
		('Cybersecurity Fundamentals', 2, 6),
		('HTML&CSS', 3, 7),
        ('Javascript', 3, 8),
		('React Development', 3, 9),
		('UX Design', 4, 10),
		('UI Design', 4, 11),
		('Design Thinking & Prototyping', 4, 12),
		('Node.js', 5, 13),
		('Python Backend', 5, 14),
		('API Design', 5, 15);

SELECT * FROM courses;



INSERT INTO Enrollment (Student_ID, Course_ID, Enrollment_Date)
 VALUES
		(1, 1, '2024-01-10'),
		(2, 4, '2024-02-11'),
		(3, 7, '2024-03-14'),
		(4, 10, '2024-01-20'),
		(5, 13, '2024-03-22'),
		(6, 5, '2024-03-05'),
		(7, 9, '2024-04-01'),
		(8, 12, '2024-02-28'),
		(9, 15, '2024-04-10'),
		(10, 3, '2024-02-05'),
		(11, 2, '2024-01-12'), (11, 3, '2024-01-12'),
		(12, 4, '2024-01-15'), (12, 6, '2024-01-15'),
		(13, 7, '2024-02-18'), (13, 8, '2024-02-18'),
		(14, 9, '2024-03-01'), (14, 10, '2024-03-01'),
		(15, 11, '2024-02-22'), (15, 12, '2024-02-22'),
		(16, 13, '2024-03-09'), (16, 15, '2024-03-09'),
		(17, 2, '2024-01-25'), (17, 5, '2024-01-25'),
		(18, 4, '2024-03-12'), (18, 8, '2024-03-12'),
		(19, 10, '2024-04-07'), (19, 14, '2024-04-07'),
		(20, 11, '2024-03-17'), (20, 13, '2024-03-17'),
		(21, 1, '2024-01-10'), (21, 2, '2024-01-10'), (21, 3, '2024-01-10'),
		(22, 4, '2024-02-11'), (22, 5, '2024-02-11'), (22, 6, '2024-02-11'),
		(23, 7, '2024-03-14'), (23, 8, '2024-03-14'), (23, 9, '2024-03-14'),
		(24, 10, '2024-01-20'), (24, 11, '2024-01-20'), (24, 12, '2024-01-20'),
		(25, 13, '2024-03-22'), (25, 14, '2024-03-22'), (25, 15, '2024-03-22'),
		(26, 1, '2024-03-05'), (26, 2, '2024-03-05'), (26, 5, '2024-03-05'),
		(27, 6, '2024-04-01'), (27, 7, '2024-04-01'), (27, 9, '2024-04-01'),
		(28, 10, '2024-02-28'), (28, 11, '2024-02-28'), (28, 12, '2024-02-28'),
		(29, 13, '2024-04-10'), (29, 14, '2024-04-10'), (29, 15, '2024-04-10'),
		(30, 3, '2024-02-05'), (30, 6, '2024-02-05'), (30, 9, '2024-02-05'),
		(31, 1, '2024-02-12'), (31, 2, '2024-02-12'),
		(32, 5, '2024-03-09'), (32, 8, '2024-03-09'),
		(33, 10, '2024-01-29'), (33, 11, '2024-01-29'),
		(34, 14, '2024-03-14'), (34, 15, '2024-03-14'),
		(35, 3, '2024-03-25'), (35, 4, '2024-03-25'), (35, 5, '2024-03-25'),
		(36, 6, '2024-04-07'), (36, 7, '2024-04-07'),
		(37, 8, '2024-01-16'), (37, 9, '2024-01-16'), (37, 10, '2024-01-16'),
		(38, 11, '2024-02-23'), (38, 13, '2024-02-23'),
		(39, 14, '2024-03-09'), (39, 15, '2024-03-09'),
		(40, 1, '2024-03-27'), (40, 3, '2024-03-27'),
		(41, 2, '2024-01-21'), (41, 4, '2024-01-21'),
		(42, 6, '2024-02-18'), (42, 9, '2024-02-18'),
		(43, 11, '2024-03-10'), (43, 12, '2024-03-10'), (43, 15, '2024-03-10'),
		(44, 7, '2024-03-17'), (44, 10, '2024-03-17'),
		(45, 5, '2024-04-02'), (45, 8, '2024-04-02'), (45, 11, '2024-04-02'),
		(46, 12, '2024-04-06'), (46, 13, '2024-04-06'),
		(47, 14, '2024-03-30'), (47, 15, '2024-03-30'),
		(48, 1, '2024-02-02'), (48, 3, '2024-02-02'), (48, 5, '2024-02-02'),
		(49, 7, '2024-04-14'), (49, 9, '2024-04-14'),
		(50, 10, '2024-03-19'), (50, 13, '2024-03-19'), (50, 15,'2024-02-03');
				
SELECT * FROM enrollment;

INSERT INTO instructors(Name,Gender,Department_ID)
VALUES  ('James Brown', 'Male', 1),
		('Ann John', 'Female', 1),
		('Ahmed Salam', 'Male', 1),
		('Ibrahim Ibrahim', 'Male', 2),
		('Blessing Mike', 'Female', 2),
		('Ahmed Musa', 'Female', 2),
		('Mide David', 'Female', 3),
		('Ayomide Daniels', 'Male', 3),
		('Zainab Kabir', 'Female', 3),
		('Ruth Samuel', 'Female', 4),
		('Muiz Isah', 'Male', 4),
		('Becky Adams', 'Female', 4),
		('Lucky Tobe', 'Male', 5) ,
		('Hassan Ahmad', 'Male', 5),
        ('Debbie Ojo', 'Female', 5);
 select * from instructors;   
 
 


 ---How can we quickly add a new student to the system with all their details?
---Use a stored procedure to insert a new student record into the Students table.

--DELIMITER $$

--CREATE PROCEDURE AddNewStudent(
  --  IN Names VARCHAR(50),
    --IN Gender VARCHAR(10),
    --IN DOB DATE,
    --IN Department_ID INT
--)
--BEGIN
  --  INSERT INTO students (Names, Gender, DOB, Department_ID)
    --VALUES (Namess, Gender, DOB, Department_ID);
--END$$

--DELIMITER ;

--CALL AddNewStudent('Aminu Bello', 'Male', '2003-08-12', 3);


CREATE PROCEDURE AddNewStudent
    Names NVARCHAR(50),
    Gender NVARCHAR(10),
    DOB DATE,
    Department_ID INT
AS
BEGIN
    INSERT INTO Students (Names, Gender, DOB, Department_ID)
    VALUES (Names, Gender, DOB, Department_ID);
END;
GO

EXEC AddNewStudent 'Aminu Bello', 'Male', '2003-08-12', 3;

select *from students
where DOB = '2003-08-12'

--drop the add student
DROP PROCEDURE IF EXISTS AddNewStudent;
EXEC sp_helptext AddNewStudent;

SELECT * FROM Students WHERE Names = 'Aminu Bello';

DELETE FROM Students
WHERE Names = 'Aminu Bello'
AND Student_ID NOT IN (SELECT MIN(Student_ID) FROM Students WHERE Names = 'Aminu Bello');




GO



---enroll a student into a specific course efficiently
CREATE PROCEDURE EnrollStudent
    @Student_ID INT, @Course_ID INT, @Enrollment_Date DATE
AS
BEGIN
    INSERT INTO Enrollment (Student_ID, Course_ID, Enrollment_Date)
    VALUES (@Student_ID, @Course_ID, @Enrollment_Date);
END;
GO

EXEC EnrollStudent 1, 5, '2024-03-6';

select Student_ID,Course_ID from enrollment
where Enrollment_Date = '2024-03-6'

-- student was enrolled into comptia security course

select Course_ID,Course_name from courses
where Course_ID = 5

--3 a list of all students enrolled in a specific course
CREATE PROCEDURE StudentsByCourse
    @Course_ID INT
AS
BEGIN
    SELECT s.Student_ID, s.Names, s.Gender, d.Department_Name AS Department, c.Course_name
    FROM Students s
    JOIN Enrollment e ON s.Student_ID = e.Student_ID
    JOIN Courses c ON e.Course_ID = c.Course_ID
    JOIN Departments d ON s.Department_ID = d.Department_ID
    WHERE c.Course_ID = @Course_ID;
END;
GO


 EXEC StudentsByCourse 11;
 --This shows all students enrolled in Course_ID = 11, along with their details. 

 -- Find the correct Department_ID for UI/UX Design
SELECT Department_ID,Department_Name  FROM departments WHERE Department_Name = 'UI/UX Design';



---4 Students by Instructor
CREATE PROCEDURE StudentsByInstructor
    @Instructor_ID INT
AS
BEGIN
    SELECT DISTINCT s.Student_ID, s.Names, c.Course_name, i.Name AS Instructor
    FROM Students s
    JOIN Enrollment e ON s.Student_ID = e.Student_ID
    JOIN Courses c ON e.Course_ID = c.Course_ID
    JOIN Instructors i ON c.Instructor_ID = i.Instructor_ID
    WHERE i.Instructor_ID = @Instructor_ID;
END;
GO

EXEC StudentsByInstructor 2;
---SQL indtructor Ann john
--it shows all students taught by ann john


--5 Update a Student’s Contact Information
ALTER TABLE Students ADD Email NVARCHAR(100);
GO

CREATE PROCEDURE UpdateStudentContact
    @Student_ID INT,
    @Email NVARCHAR(100)
AS
BEGIN
    UPDATE Students
    SET Email = @Email
    WHERE Student_ID = @Student_ID;
END;
GO

EXEC UpdateStudentContact 5, 'rajizainaboyinoyiza@gmail.com';

--students column was updated with their contact
select Names, Email from students
where Email !=''
--james bello email has been updated and the column is not null

--6 Get All Courses a Student Is Enrolled In
CREATE PROCEDURE GetCoursesByStudent
    @Student_ID INT
AS
BEGIN
    SELECT 
        s.Names AS Student_Name,
        c.Course_ID,
        c.Course_name,
        d.Department_Name AS Department,
        e.Enrollment_Date
    FROM Enrollment e
    JOIN Students s ON e.Student_ID = s.Student_ID
    JOIN Courses c ON e.Course_ID = c.Course_ID
    JOIN Departments d ON c.Department_ID = d.Department_ID
    WHERE e.Student_ID = @Student_ID;
END;
GO


EXEC GetCoursesByStudent 1;
-- this broughtout Alex johnson because his student ID is 1


---7 Enrollment Summary per Course

CREATE PROCEDURE EnrollmentSummary
AS
BEGIN
    SELECT c.Course_name,
           COUNT(e.Enrollment_ID) AS Total_Students
    FROM Courses c
    LEFT JOIN Enrollment e ON c.Course_ID = e.Course_ID
    GROUP BY c.Course_name
    ORDER BY Total_Students DESC;
END;
GO

EXEC EnrollmentSummary;
--query shows the total students that enrolled for each courses

