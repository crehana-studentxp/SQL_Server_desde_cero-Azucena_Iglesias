USE [AdventureWorks2019]
GO

-- EJEMPLO COMANDO CREATE

CREATE TABLE [Person].[Person2](
	[BusinessEntityID] [int] NOT NULL,
	[PersonType] [nchar](2) NOT NULL,
	[NameStyle] [dbo].[NameStyle] NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [dbo].[Name] NOT NULL,
	[MiddleName] [dbo].[Name] NULL,
	[LastName] [dbo].[Name] NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[EmailPromotion] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL)


GO

-- EJEMPLO COMANDO ALTER
ALTER TABLE [Person].[Person2] ADD  [ADDRESS] NVARCHAR(255)

GO

-- EJEMPLO COMANDO TRUNCATE

SELECT * FROM [Production].[Culture2]

TRUNCATE TABLE [Production].[Culture2]

GO

-- EJEMPLO COMANDO DROP 

SELECT * FROM [Production].[Culture3]

TRUNCATE TABLE [Production].[Culture3]

GO
