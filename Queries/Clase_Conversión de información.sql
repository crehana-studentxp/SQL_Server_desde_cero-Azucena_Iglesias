USE AdventureWorks2019

GO

-- EJEMPLO CAST

SELECT  P.FirstName, 
		P.LastName,
		(CAST(e.[VacationHours] AS float))/24 AS VacationDays  
FROM HumanResources.Employee E 
INNER JOIN Person.Person P
    ON e.BusinessEntityID = p.BusinessEntityID  


-- EJEMPLO CONVERT

SELECT  P.FirstName, 
		P.LastName,
		(CONVERT(float, E.VacationHours))/24 AS VacationDays  
FROM HumanResources.Employee E 
INNER JOIN Person.Person P
    ON e.BusinessEntityID = p.BusinessEntityID  
