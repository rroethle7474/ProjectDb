CREATE TABLE [dbo].[WishListItems] (
    [ItemId]        INT             IDENTITY (1, 1) NOT NULL,
    [UserId]        INT             NULL,
    [ItemName]      NVARCHAR (100)  NOT NULL,
    [Description]   NVARCHAR (500)  NULL,
    [Quantity]      INT             DEFAULT ((1)) NOT NULL,
    [ProductUrl]    VARCHAR (2048)  NULL,
    [EstimatedCost] DECIMAL (10, 2) NULL,
    [DateAdded]     DATETIME        DEFAULT (getdate()) NULL,
    [LastModified]  DATETIME        DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([ItemId] ASC),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

