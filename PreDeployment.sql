IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = '$(SchemaPrefix)')
BEGIN
    EXEC('CREATE SCHEMA [$(SchemaPrefix)]')
END
GO