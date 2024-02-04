-- DROP TABLE Student;
-- DROP TABLE Attendence;
-- DROP TABLE ClassVenue;
-- DROP TABLE Teacher;


CREATE TABLE Student
(
	RollNum VARCHAR(40) not null primary key,
	Name VARCHAR(40) not null,
	Gender VARCHAR(40) not null,
	PhoneNumber VARCHAR(40)
);

CREATE TABLE Teacher
(
	ID INT not null primary key,
	Name VARCHAR(40) not null,
	Designation VARCHAR(40) not null,
	Department VARCHAR(40) not null
);

CREATE TABLE ClassVenue
(
    ID INT NOT NULL PRIMARY KEY,
    Teacher VARCHAR(40) NOT NULL,
    Building VARCHAR(40) NOT NULL,
    Roomnum INT NOT NULL,
    TeacherID INT NOT NULL,
    FOREIGN KEY (TeacherID) REFERENCES Teacher(ID)
);


CREATE TABLE Attendence
(
	RollNum VARCHAR(40) not null primary key,
	Date_ DATE not null,
	Status_ VARCHAR(1) not null,
	ClassVenue INT not null,
	FOREIGN KEY (CLassVenue) REFERENCES ClassVenue(ID)
);

INSERT INTO Student
VALUES ('L191162', 'Abdullah Nazir', 'Male', '0333-3333333');
INSERT INTO Student
VALUES ('L194124', 'Rafia Ahmed', 'Female', '0333-3456789');
INSERT INTO Student
VALUES ('L194125', 'Basit Junaid', 'Male', '0345-3243567');






SELECT * FROM Student;
SELECT * FROM Attendence;
SELECT * FROM ClassVenue;
SELECT * FROM Teacher;






