/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [SID]
      ,[CID]
      ,[CourseName]
      ,[Year]
      ,[SubjectName]
      ,[Sem]
  FROM [Attendance].[dbo].[Subject]