CREATE TABLE [dbo].[Channels] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [IsActive]      BIT            NOT NULL,
    [ChannelName]   NVARCHAR (100) NOT NULL,
    [Identifier]    NVARCHAR (500) NOT NULL,
    [Description]   NVARCHAR (MAX) NULL,
    [ContentTypeId] INT            NOT NULL,
    [UserId]        NVARCHAR (450) NOT NULL,
    [CreatedOn]     DATETIME2 (7)  NOT NULL,
    [UpdatedOn]     DATETIME2 (7)  NOT NULL,
    CONSTRAINT [PK_Channels] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Channels_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Channels_ContentTypes_ContentTypeId] FOREIGN KEY ([ContentTypeId]) REFERENCES [dbo].[ContentTypes] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Channels_UserId]
    ON [dbo].[Channels]([UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Channels_ContentTypeId]
    ON [dbo].[Channels]([ContentTypeId] ASC);

