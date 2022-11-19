CREATE TABLE db.ExerciseType
(
	Id INT NOT NULL PRIMARY KEY,
	Name nvarchar(256) NOT NULL,
	Image BLOB,
	UpdateTime datetime2 NOT NULL DEFAULT getutcdate(),
	CreateTime datetime2 NOT NULL DEFAULT getutcdate()
)
