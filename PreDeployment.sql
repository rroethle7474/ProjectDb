DECLARE @SchemaName NVARCHAR(100) = '$(SchemaPrefix)'
DECLARE @SQL NVARCHAR(MAX)

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = @SchemaName)
BEGIN
    SET @SQL = 'CREATE SCHEMA [' + @SchemaName + ']'
    EXEC sp_executesql @SQL
END
GO