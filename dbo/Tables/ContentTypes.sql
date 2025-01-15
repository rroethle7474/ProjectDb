CREATE TABLE [dbo].[ContentTypes] (
    [Id]          INT             IDENTITY (1, 1) NOT NULL,
    [Title]       NVARCHAR (1000) NOT NULL,
    [Description] NVARCHAR (1000) NOT NULL,
    [CreatedOn]   DATETIME2 (7)   NOT NULL,
    [UpdatedOn]   DATETIME2 (7)   NOT NULL,
    CONSTRAINT [PK_ContentTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

