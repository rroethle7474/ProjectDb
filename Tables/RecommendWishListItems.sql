CREATE TABLE [dbo].[RecommendWishListItems] (
    [RecommendItemId] INT             IDENTITY (1, 1) NOT NULL,
    [UserId]          INT             NOT NULL,
    [ItemName]        NVARCHAR (100)  NOT NULL,
    [Description]     NVARCHAR (500)  NULL,
    [ProductUrl]      VARCHAR (2048)  NULL,
    [EstimatedCost]   DECIMAL (10, 2) NULL,
    [DefaultQuantity] INT             DEFAULT ((1)) NOT NULL,
    [IsActive]        BIT             DEFAULT ((1)) NOT NULL,
    [DateAdded]       DATETIME        DEFAULT (getdate()) NOT NULL,
    [LastModified]    DATETIME        DEFAULT (getdate()) NOT NULL,
    [ProductSrcImage] NVARCHAR (2048) NULL,
    PRIMARY KEY CLUSTERED ([RecommendItemId] ASC),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

