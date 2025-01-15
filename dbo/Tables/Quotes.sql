CREATE TABLE [dbo].[Quotes] (
    [Id]               INT             IDENTITY (1, 1) NOT NULL,
    [QuoteText]        NVARCHAR (MAX)  NOT NULL,
    [QuoteImage]       VARBINARY (MAX) NOT NULL,
    [QuoteDateFetched] DATE            NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

