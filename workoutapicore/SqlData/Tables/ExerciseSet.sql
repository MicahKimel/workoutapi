CREATE TABLE db.ExerciseSet
(
	Id INT NOT NULL PRIMARY KEY,
	AuthUserId nvarchar(128) NOT NULL,
	WorkoutId INT NOT NULL,
	ExerciseId INT NOT NULL,
	Sets INT NOT NULL,
	Reps INT NOT NULL,
	Time datetime2,
	MetricType bit,
	UpdateTime datetime2 NOT NULL DEFAULT getutcdate(),
	CreateTime datetime2 NOT NULL DEFAULT getutcdate()
)
