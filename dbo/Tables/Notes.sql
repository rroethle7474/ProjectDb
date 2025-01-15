CREATE TABLE [dbo].[Notes] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Title]          NVARCHAR (MAX) NOT NULL,
    [Message]        NVARCHAR (MAX) NOT NULL,
    [UserId]         NVARCHAR (450) NOT NULL,
    [SearchResultId] INT            NOT NULL,
    [CreatedOn]      DATETIME2 (7)  NOT NULL,
    [UpdatedOn]      DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Notes_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Notes_SearchResults_SearchResultId] FOREIGN KEY ([SearchResultId]) REFERENCES [dbo].[SearchResults] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Notes_UserId]
    ON [dbo].[Notes]([UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Notes_SearchResultId]
    ON [dbo].[Notes]([SearchResultId] ASC);

