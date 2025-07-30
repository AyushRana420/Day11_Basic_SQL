
--step 1: Creating and using the database
--step 2: Create a table

CREATE TABLE Students(
	StudentId int primary key,
	FullName varchar(100),
	Age int,
	Email varchar(100)unique
	);

CREATE TABLE Courses(
	CourseID int primary key,
	Cousrename varchar(50),
	Credits int
);

CREATE TABLE Enrollment(
	EnrollementID int primary key,
	StudentId int,
	CourseID int,
	EnrollmentDate date
	foreign key(StudentId) references Students(StudentId), --Defing foreign key
	foreign key(CourseID) references Courses(CourseID),
);

--Inserting values in above table
INSERT INTO Students(StudentId,FullName,Age,Email)
VALUES(1,'Ayush',21,'ayushrana419@gmail.com'),
	  (2,'Aditi',25,'aditi@gmail.com');

Select * from Students;--we never prefer using * during development

INSERT INTO Courses(CourseID,Cousrename,Credits)
VALUES(101,'C# with MSSQL',5),
	  (102,'ASP.NET Core with Angular',6);
Select * from Courses;

INSERT INTO Enrollment(EnrollementID,StudentId,CourseID,EnrollmentDate)
VALUES(1,1,101,'2025-01-10'),
	  (2,2,102,'2025-04-12');
Select * from Enrollment;

--updating age = 22
update Students
SET Age = 22
where StudentId = 1;

select * from Students;
--Performing arithmetic / logical operations
SELECT FullName, Age + 1 AS NextyearAge FROM Students
where Age>22 and Email like '%gmail.com'

--Join
SELECT s.FullName, c.Cousrename, e.EnrollmentDate
FROM Enrollment e
JOIN Students s on e.StudentId = s.StudentId
JOIN Courses c on e.CourseID = c.CourseID

