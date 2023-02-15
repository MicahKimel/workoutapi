--Create Database
CREATE DATABASE IF NOT EXISTS db;
USE db;


--Create User Table
CREATE TABLE db.User
(
	Id INT NOT NULL PRIMARY KEY,
	AuthUserId nvarchar(128) NOT NULL,
	Username nvarchar(128) NOT NULL,
	Password nvarchar(128) NOT NULL,
	Firstname nvarchar(50) NOT NULL,
	Lastname nvarchar(50) NOT NULL,
	Email nvarchar(256) NOT NULL,
	Bio nvarchar(256),
	Twitter nvarchar(256),
	Instagram nvarchar(256),
	Facebook nvarchar(256),
	Youtube nvarchar(256),
	UpdateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CreateTime datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP
);


--Create ExerciseType TABLE
CREATE TABLE db.ExerciseType
(
	ExerciseId INT NOT NULL PRIMARY KEY,
	Name nvarchar(256) NOT NULL,
	Image BLOB,
	UpdateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CreateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP

	CONSTRAINT PK_ExerciseType PRIMARY KEY (ExerciseId)
);


--Create Workout TABLE
CREATE TABLE db.Workout
(
	WorkoutId INT NOT NULL PRIMARY KEY,
	Date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP

  CONSTRAINT PK_Workout PRIMARY KEY (WorkoutId)
)


--Create ExerciseSet TABLE
CREATE TABLE db.ExerciseSet
(
	SetId INT NOT NULL PRIMARY KEY,
	AuthUserId nvarchar(128) NOT NULL,
	WorkoutId INT NOT NULL, --Will this be for collecting sets under one workout?
	ExerciseId INT NOT NULL,
	Sets INT NOT NULL,
	Reps INT NOT NULL,
	Time datetime,
	MetricType bit,
	UpdateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CreateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP

	CONSTRAINT PK_ExerciseSet PRIMARY KEY (SetId)
	CONSTRAINT FK1_ExerciseSet FOREIGN KEY (WorkoutId) REFERENCES db.Workout(WorkoutId)
	CONSTRAINT FK2_ExerciseSet FOREIGN KEY (ExerciseId) REFERENCES db.ExerciseType(ExerciseId)
);
