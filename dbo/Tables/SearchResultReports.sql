CREATE TABLE [dbo].[SearchResultReports] (
    [Id]              INT            IDENTITY (1, 1) NOT NULL,
    [ContentTypeId]   INT            NOT NULL,
    [ReportDate]      DATETIME2 (7)  NOT NULL,
    [IsSuccess]       BIT            NOT NULL,
    [ErrorMessage]    NVARCHAR (MAX) NULL,
    [IsDefaultReport] BIT            DEFAULT ((0)) NOT NULL,
    [IsChannelReport] BIT            DEFAULT ((0)) NOT NULL,
    [CreatedOn]       DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_SearchResultReports] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SearchResultReports_ContentTypes_ContentTypeId] FOREIGN KEY ([ContentTypeId]) REFERENCES [dbo].[ContentTypes] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_SearchResultReports_ContentTypeId]
    ON [dbo].[SearchResultReports]([ContentTypeId] ASC);

