CREATE TABLE [giftdb_test].[WishListSubmissionStatus] (
    [StatusId]          INT            NOT NULL,
    [StatusName]        NVARCHAR (50)  NOT NULL,
    [StatusDescription] NVARCHAR (255) NULL,
    [DisplayOrder]      INT            NOT NULL,
    [CreatedDate]       DATETIME       DEFAULT (getdate()) NULL,
    [LastModifiedDate]  DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([StatusId] ASC)
);

