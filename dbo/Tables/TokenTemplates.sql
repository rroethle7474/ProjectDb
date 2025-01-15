CREATE TABLE [dbo].[TokenTemplates] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Name]            VARCHAR (100) NOT NULL,
    [HtmlBodyContent] VARCHAR (MAX) NOT NULL,
    [EmailTemplateId] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_TokenTemplates_EmailTemplates] FOREIGN KEY ([EmailTemplateId]) REFERENCES [dbo].[EmailTemplates] ([Id])
);

