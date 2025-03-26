CREATE TABLE [dbo].[Topics] (
    [Id]        INT             IDENTITY (1, 1) NOT NULL,
    [IsActive]  BIT             NOT NULL,
    [Term]      NVARCHAR (1000) NOT NULL,
    [UserId]    NVARCHAR (450)  NOT NULL,
    [CreatedOn] DATETIME2 (7)   DEFAULT (getdate()) NOT NULL,
    [UpdatedOn] DATETIME2 (7)   DEFAULT (getdate()) NOT NULL,
    [ExcludeFromTwitter] BIT NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_Topics] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Topics_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Topics_UserId]
    ON [dbo].[Topics]([UserId] ASC);

