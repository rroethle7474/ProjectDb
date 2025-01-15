CREATE TABLE [dbo].[WeeklySearchResultReports] (
    [Id]           INT            IDENTITY (1, 1) NOT NULL,
    [ReportDate]   DATETIME2 (7)  NOT NULL,
    [IsSuccess]    BIT            NOT NULL,
    [ErrorMessage] NVARCHAR (MAX) NULL,
    [CreatedOn]    DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_WeeklySearchResultReports] PRIMARY KEY CLUSTERED ([Id] ASC)
);

