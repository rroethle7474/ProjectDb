CREATE TABLE [dbo].[SearchResults] (
    [Id]              INT             IDENTITY (1, 1) NOT NULL,
    [Title]           NVARCHAR (MAX)  NOT NULL,
    [Description]     NVARCHAR (MAX)  NOT NULL,
    [UserName]        NVARCHAR (100)  NOT NULL,
    [Url]             NVARCHAR (500)  NULL,
    [EmbedUrl]        NVARCHAR (500)  NULL,
    [VideoId]         NVARCHAR (100)  NULL,
    [ThumbnailUrl]    NVARCHAR (500)  NULL,
    [PublishedAt]     DATETIME2 (7)   NOT NULL,
    [Term]            NVARCHAR (1000) NULL,
    [ChannelName]     NVARCHAR (100)  NULL,
    [ContentTypeId]   INT             NOT NULL,
    [IsHomePage]      BIT             DEFAULT ((0)) NULL,
    [DateAdded]       DATETIME2 (7)   NULL,
    [EmbeddedHtml]    NVARCHAR (MAX)  NULL,
    [TopSearchResult] BIT             DEFAULT ((0)) NULL,
    [IsChannel]       BIT             DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_SearchResults] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SearchResults_ContentTypes_ContentTypeId] FOREIGN KEY ([ContentTypeId]) REFERENCES [dbo].[ContentTypes] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_SearchResults_ContentTypeId]
    ON [dbo].[SearchResults]([ContentTypeId] ASC);

