CREATE TABLE [dbo].[EmailTemplates] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [Name]            VARCHAR (100) NOT NULL,
    [Subject]         VARCHAR (100) NOT NULL,
    [HtmlBodyContent] VARCHAR (MAX) NOT NULL,
    [TokenList]       VARCHAR (500) NULL,
    [CreatedOn]       DATETIME      DEFAULT (getdate()) NULL,
    [UpdatedOn]       DATETIME      DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

