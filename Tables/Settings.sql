CREATE TABLE [$(SchemaPrefix)].[Settings] (
    [Name]  NVARCHAR (100) NOT NULL,
    [Value] NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Name] ASC)
);

