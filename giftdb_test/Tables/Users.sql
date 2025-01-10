CREATE TABLE [giftdb_test].[Users] (
    [UserId]           INT             IDENTITY (1, 1) NOT NULL,
    [Username]         NVARCHAR (50)   NOT NULL,
    [PasswordHash]     NVARCHAR (256)  NOT NULL,
    [Name]             NVARCHAR (100)  NULL,
    [OriginalPassword] NVARCHAR (50)   NULL,
    [IsAdmin]          BIT             DEFAULT ((0)) NOT NULL,
    [SpendingLimit]    DECIMAL (10, 2) NULL,
    [SillyDescription] NVARCHAR (500)  NULL,
    [Email]            NVARCHAR (100)  NOT NULL,
    [CreatedDate]      DATETIME        DEFAULT (getdate()) NULL,
    [LastModifiedDate] DATETIME        DEFAULT (getdate()) NULL,
    [ParentEmail1]     VARCHAR (50)    NULL,
    [ParentEmail2]     VARCHAR (50)    NULL,
    [ParentPhone1]     VARCHAR (50)    NULL,
    [ParentPhone2]     VARCHAR (50)    NULL,
    [GreetingMessage]  NVARCHAR (MAX)  NULL,
    [Birthday]         DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC),
    UNIQUE NONCLUSTERED ([Username] ASC)
);

