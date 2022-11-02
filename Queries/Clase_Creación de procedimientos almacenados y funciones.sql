
----EJEMPLO PROCEDIMIENTO ALMACENADO

-- ================================================================================
-- Autor:		Azucena Iglesias 
-- Fecha:		19/07/2022
-- Descripción:	Obtiene el total de días de vacaciones de todos los empleados
-- =================================================================================
CREATE PROCEDURE HumanResources.spVacationsAllEmployees

AS
BEGIN
      SELECT p.FirstName
            ,p.LastName
            ,e.JobTitle
	        ,AVG(e.VacationHours)/24 AS 'VacationDays' 
        FROM [Person].[Person] p
  LEFT JOIN [HumanResources].[Employee] e
         ON p.[BusinessEntityID] = e.[BusinessEntityID]
   GROUP BY p.FirstName
            ,p.LastName
            ,e.JobTitle
	HAVING AVG(e.VacationHours)/24 >0
  END
GO

-- EJEMPLO DE FUNCION


-- =============================================
-- Autor:		Azucena Iglesias 
-- Fecha:		19/07/2022
-- Descripción:	Obtiene el total de días de ausencia buscando por id de empleado
-- =============================================
CREATE FUNCTION HumanResources.fnLeaveDaysEmployee
(
	@EmployeeId int,
	@Vacations int,
	@Sick int
)
RETURNS Float
AS
BEGIN
declare @LeaveDays INT

			SELECT  
			        @Vacations = VacationHours,
			        @Sick = SickLeaveHours
			FROM [HumanResources].[Employee]  
			WHERE BusinessEntityID = @EmployeeId 

			SET @LeaveDays = (@Vacations + @Sick)/24


	RETURN @LeaveDays

END
GO

SELECT e.BusinessEntityID AS EmployeeId
					,p.FirstName
					,p.LastName
					,e.JobTitle
				    ,HumanResources.fnLeaveDaysEmployee(e.BusinessEntityID,e.VacationHours,e.SickLeaveHours) AS 'TotalLeaveDays' 
			FROM [Person].[Person] p
	  LEFT JOIN [HumanResources].[Employee] e
			 ON p.[BusinessEntityID] = e.[BusinessEntityID]
	  WHERE e.BusinessEntityID = 8
	  GROUP BY  e.BusinessEntityID 
				,p.FirstName
				,p.LastName
				,e.JobTitle
				,e.VacationHours
				,e.SickLeaveHours
			