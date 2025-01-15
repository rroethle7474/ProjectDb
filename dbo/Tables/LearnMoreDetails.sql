CREATE TABLE [dbo].[LearnMoreDetails] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [Introduction]     NVARCHAR (MAX) NULL,
    [Items]            NVARCHAR (MAX) NULL,
    [QuoteDateFetched] DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

