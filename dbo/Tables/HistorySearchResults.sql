CREATE TABLE [dbo].[HistorySearchResults] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [Title]           NVARCHAR (MAX) NOT NULL,
    [Description]     NVARCHAR (MAX) NOT NULL,
    [UserName]        NVARCHAR (100) NOT NULL,
    [Url]             NVARCHAR (500) NULL,
    [EmbedUrl]        NVARCHAR (500) NULL,
    [VideoId]         NVARCHAR (100) NULL,
    [ThumbnailUrl]    NVARCHAR (500) NULL,
    [PublishedAt]     DATETIME2 (7)  NULL,
    [SubTopicTerm]    NVARCHAR (MAX) NULL,
    [ChannelName]     NVARCHAR (MAX) NULL,
    [ContentTypeName] NVARCHAR (MAX) NULL,
    [CreatedOn]       DATETIME2 (7)  NOT NULL,
    [UpdatedOn]       DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_HistorySearchResults] PRIMARY KEY CLUSTERED ([Id] ASC)
);

