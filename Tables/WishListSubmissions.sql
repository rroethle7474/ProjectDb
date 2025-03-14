﻿CREATE TABLE [dbo].[WishListSubmissions] (
    [SubmissionId]   INT            IDENTITY (1, 1) NOT NULL,
    [UserId]         INT            NULL,
    [StatusId]       INT            NOT NULL,
    [IsActive]       BIT            DEFAULT ((1)) NOT NULL,
    [SubmissionDate] DATETIME       DEFAULT (getdate()) NULL,
    [LastModified]   DATETIME       DEFAULT (getdate()) NULL,
    [Reason]         NVARCHAR (MAX) NULL,
    [ShipmentDate]   DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([SubmissionId] ASC),
    FOREIGN KEY ([StatusId]) REFERENCES [dbo].[WishListSubmissionStatus] ([StatusId]),
    FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

