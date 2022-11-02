USE [AdventureWorks2019]
GO

-- EJEMPLO NONCLUSTER INDEX 
CREATE UNIQUE NONCLUSTERED INDEX [AK_Culture_Name] ON [Production].[Culture2]
(
	[Name] ASC
)
GO

-- EJEMPLO CLUSTER INDEX 
ALTER TABLE [Production].[Culture2] ADD  CONSTRAINT [PK_Culture_CultureID] PRIMARY KEY CLUSTERED 
(
	[CultureID] ASC
)


