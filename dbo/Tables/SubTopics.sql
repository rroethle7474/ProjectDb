CREATE TABLE [dbo].[SubTopics] (
    [Id]        INT             IDENTITY (1, 1) NOT NULL,
    [IsActive]  BIT             NOT NULL,
    [Term]      NVARCHAR (1000) NOT NULL,
    [UserId]    NVARCHAR (450)  NOT NULL,
    [TopicId]   INT             NOT NULL,
    [CreatedOn] DATETIME2 (7)   NOT NULL,
    [UpdatedOn] DATETIME2 (7)   NOT NULL,
    [ExcludeFromTwitter] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_SubTopics] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SubTopics_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_SubTopics_Topics_TopicId] FOREIGN KEY ([TopicId]) REFERENCES [dbo].[Topics] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_SubTopics_UserId]
    ON [dbo].[SubTopics]([UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SubTopics_TopicId]
    ON [dbo].[SubTopics]([TopicId] ASC);

