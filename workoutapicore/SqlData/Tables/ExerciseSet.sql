CREATE DATABASE IF NOT EXISTS db;
USE db;

CREATE TABLE db.Category
(
	Id INT NOT NULL PRIMARY KEY,
	Name nvarchar(256) NOT NULL
);

CREATE TABLE db.ExerciseSet
(
	Id INT NOT NULL PRIMARY KEY,
	UserId INT NOT NULL,
	WorkoutId INT NOT NULL,
	ExerciseId INT NOT NULL,
	Sets INT NOT NULL,
	Reps INT NOT NULL,
	Weight Decimal(5,2),
	Time datetime,
	MetricType bit,
	UpdateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CreateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
);