CREATE DATABASE IF NOT EXISTS db;
USE db;
CREATE TABLE db.ExerciseType
(
	Id INT NOT NULL PRIMARY KEY,
	Name nvarchar(256) NOT NULL,
	Image BLOB,
	UpdateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CreateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
);
