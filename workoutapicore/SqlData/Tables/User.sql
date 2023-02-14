CREATE DATABASE db;
USE db;

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


insert into db.User (Id, AuthUserId, Username, Password, Firstname, Lastname, Email, Bio, Twitter, Instagram, Facebook, Youtube) 
values (1, '1', 'micah', 'micah', 'kimel', 'password', 'email', 'bio', 'twitter', 'instagram', 'facebook', 'youtube');

CREATE TABLE db.ExerciseType
(
	Id INT NOT NULL PRIMARY KEY,
	Name nvarchar(256) NOT NULL,
	Image BLOB,
	UpdateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CreateTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
);

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