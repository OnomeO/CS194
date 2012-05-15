DROP TABLE IF EXISTS student_info;

CREATE TABLE student_info (
	studentname CHAR(64), 
	advisorname  CHAR(64),
	id INT,
	email CHAR(64),
	gradmonth CHAR(64),
	gradyear INT,
	concentration CHAR(64),
	mathunints INT,
	scienceunits INT,
	engifundunits INT,
	engidesignunits INT,
	tisunits INT,
	eedegreeunits INT,
	password VARCHAR(64)
);

DROP TABLE IF EXISTS courses;	

CREATE TABLE courses(
	coursetype VARCHAR(64),
	coursename VARCHAR(64),
	courseID VARCHAR(16),
	units INT,
	grade VARCHAR(4)
);

DROP TABLE IF EXISTS student_logins;	

CREATE TABLE student_logins (email CHAR(64), password VARCHAR(64));

INSERT INTO user_logins VALUES ("admin", "2821f2763398625eb2e5ed988428d8402355ac4c");