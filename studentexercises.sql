CREATE TABLE Cohort (
	id		INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	name 	TEXT NOT NULL UNIQUE

);

CREATE TABLE Student (
	id				INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	first_name 		TEXT NOT NULL, 
	last_name		TEXT NOT NULL, 
	slack_handle	TEXT NOT NULL,
	cohort_id		INTEGER NOT NULL,
	FOREIGN KEY(cohort_id) REFERENCES Cohort(id)
);

CREATE TABLE Instructor (
	id				INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	first_name 		TEXT NOT NULL, 
	last_name		TEXT NOT NULL, 
	slack_handle	TEXT NOT NULL,
	cohort_id		INTEGER NOT NULL,
	FOREIGN KEY(cohort_id) REFERENCES Cohort(id)
);

CREATE TABLE Exercise (
	id 		INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	name 	TEXT NOT NULL,
	lang 	TEXT NOT NULL 
);

CREATE TABLE StudentExercise (
	id 							INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	exercise_id					INTEGER NOT NULL,
	student_id					INTEGER NOT NULL,
	FOREIGN KEY(exercise_id) REFERENCES Exercise(id),
	FOREIGN KEY(student_id)	 REFERENCES Student(id)
);

INSERT INTO Cohort (name) VALUES ('Cohort 38');
INSERT INTO Cohort (name) VALUES ('Cohort 37');
INSERT INTO Cohort (name) VALUES ('Cohort 39');

INSERT INTO Exercise (name, lang) VALUES ('Kandy Korner', 'JavaScript');
INSERT INTO Exercise (name, lang) VALUES ('ChickenMonkey', 'JavaScript');
INSERT INTO Exercise (name, lang) VALUES ('Ternery Traveler', 'JavaScript');
INSERT INTO Exercise (name, lang) VALUES ('Flower Shop', 'Python');
INSERT INTO Exercise (name, lang) VALUES ('Pizza Parlor', 'Python');

INSERT INTO Instructor (first_name,last_name,slack_handle,cohort_id) 
VALUES ('Andy','Collins','@TGWG',1);
INSERT INTO Instructor (first_name,last_name,slack_handle,cohort_id) 
VALUES ('Kristen','Norris','@kNorris',1);
INSERT INTO Instructor (first_name,last_name,slack_handle,cohort_id) 
VALUES ('Jisie','David','@jDavid',2);

INSERT INTO Student (first_name,last_name,slack_handle,cohort_id) 
VALUES ('Cooper','Nichols','@Coop',1);
INSERT INTO Student (first_name,last_name,slack_handle,cohort_id) 
VALUES ('Michael','Clark','@MikeyC',1);
INSERT INTO Student (first_name,last_name,slack_handle,cohort_id) 
VALUES ('Landon','Morgan','@LandyMandy',1);
INSERT INTO Student (first_name,last_name,slack_handle,cohort_id) 
VALUES ('James','Nitz','@BudIce',2); 
INSERT INTO Student (first_name,last_name,slack_handle,cohort_id) 
VALUES ('Kyle','Baker','@GraphiteCharcoal',2);
INSERT INTO Student (first_name,last_name,slack_handle,cohort_id) 
VALUES ('Dan','Eggs','@dEggs',2);

INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (3,1);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (5,1);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (1,2);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (4,2);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (1,3);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (5,3);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (2,4);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (3,4);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (4,5);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (2,5);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (2,6);
INSERT INTO StudentExercise (exercise_id,student_id)
VALUES (5,6);