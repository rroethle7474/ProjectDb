CREATE TABLE [dbo].[HeroContent] (
    [ContentId]        INT            IDENTITY (1, 1) NOT NULL,
    [Title]            NVARCHAR (100) NOT NULL,
    [Description]      NVARCHAR (500) NULL,
    [AnimationData]    NVARCHAR (MAX) NULL,
    [IsActive]         BIT            DEFAULT ((0)) NOT NULL,
    [CreatedDate]      DATETIME       DEFAULT (getdate()) NULL,
    [LastModifiedDate] DATETIME       DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([ContentId] ASC)
);

