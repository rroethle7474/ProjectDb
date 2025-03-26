CREATE TABLE [dbo].[DefaultTopics] (
    [Id]        INT             IDENTITY (1, 1) NOT NULL,
    [Term]      NVARCHAR (1000) NOT NULL,
    [CreatedOn] DATETIME2 (7)   NOT NULL,
    [UpdatedOn] DATETIME2 (7)   NOT NULL,
    [ExcludeFromTwitter] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_DefaultTopics] PRIMARY KEY CLUSTERED ([Id] ASC)
);

