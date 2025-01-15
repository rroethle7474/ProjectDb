CREATE TABLE [dbo].[TopSearchResults] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [UserId]         NVARCHAR (450) NOT NULL,
    [SearchResultId] INT            NOT NULL,
    [CreatedOn]      DATETIME2 (7)  NOT NULL,
    [UpdatedOn]      DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_TopSearchResults] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TopSearchResults_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_TopSearchResults_SearchResults_SearchResultId] FOREIGN KEY ([SearchResultId]) REFERENCES [dbo].[SearchResults] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_TopSearchResults_UserId]
    ON [dbo].[TopSearchResults]([UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_TopSearchResults_SearchResultId]
    ON [dbo].[TopSearchResults]([SearchResultId] ASC);

