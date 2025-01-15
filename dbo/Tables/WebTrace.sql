CREATE TABLE [dbo].[WebTrace] (
    [Id]                  INT            IDENTITY (1, 1) NOT NULL,
    [DateTimeEncountered] DATETIME2 (7)  NOT NULL,
    [ErrorCode]           NVARCHAR (MAX) NULL,
    [ErrorMessage]        NVARCHAR (MAX) NULL,
    [CallStack]           NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_WebTrace] PRIMARY KEY CLUSTERED ([Id] ASC)
);

