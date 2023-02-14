
USE db;
CREATE TABLE db.ExerciseSet
(
	Id INT NOT NULL PRIMARY KEY,
	AuthUserId nvarchar(128) NOT NULL,
	WorkoutId INT NOT NULL,
	ExerciseId INT NOT NULL,
	Sets INT NOT NULL,
	Reps INT NOT NULL,
	Time datetime,
	MetricType bit,
	UpdateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CreateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
);