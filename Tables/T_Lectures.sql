/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [TID]
      ,[TName]
      ,[Date]
      ,[LTaken]
      ,[Course]
      ,[Year]
      ,[Subject]
      ,[Sem]
  FROM [Attendance].[dbo].[T_Lectures]