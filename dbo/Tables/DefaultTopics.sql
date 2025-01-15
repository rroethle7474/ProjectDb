CREATE TABLE [dbo].[DefaultTopics] (
    [Id]        INT             IDENTITY (1, 1) NOT NULL,
    [Term]      NVARCHAR (1000) NOT NULL,
    [CreatedOn] DATETIME2 (7)   NOT NULL,
    [UpdatedOn] DATETIME2 (7)   NOT NULL,
    CONSTRAINT [PK_DefaultTopics] PRIMARY KEY CLUSTERED ([Id] ASC)
);

