USE [AdventureWorks2019]
GO

-- EJEMPLO COMANDO INSERT
INSERT INTO [Sales].[Currency]
           ([CurrencyCode]
           ,[Name]
           ,[ModifiedDate])
     VALUES
           ('ACR','Shilling 34','2022-04-30'),
		   ('TBH','Taka 86','2022-04-30')
GO

-- EJEMPLO COMANDO UPDATE

GO

UPDATE [Sales].[Currency]
   SET [CurrencyCode] = 'CHJ'
 WHERE [Name] = 'Taka 86'
GO

-- EJEMPLO COMANDO DELETE

GO

DELETE FROM [Sales].[Currency]
      WHERE [Name] = 'ACR'
GO

-- EJEMPLO COMANDO SELECT 

SELECT TOP (1000) [ProductModelID]
      ,[Name]
      ,[CatalogDescription]
      ,[Instructions]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[ProductModel]
