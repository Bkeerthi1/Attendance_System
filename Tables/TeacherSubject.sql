/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Teacher]
      ,[Course]
      ,[Year]
      ,[Subject]
      ,[Sem]
  FROM [Attendance].[dbo].[TeacherSubject]