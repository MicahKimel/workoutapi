CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[AuthUserId] nvarchar(128) NOT NULL,
	[Username] nvarchar(128) NOT NULL,
	[Firstname] nvarchar(50) NOT NULL,
	[Lastname] nvarchar(50) NOT NULL,
	[Email] nvarchar(256) NOT NULL,
	[Bio] nvarchar(MAX),
	[Twitter] nvarchar(MAX),
	[Instagram] nvarchar(MAX),
	[Facebook] nvarchar(MAX),
	[Youtube] nvarchar(MAX),
	[UpdateTime] datetime2 NOT NULL DEFAULT getutcdate(),
	[CreateTime] datetime2 NOT NULL DEFAULT getutcdate()
)
