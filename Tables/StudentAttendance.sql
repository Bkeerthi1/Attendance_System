/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [STID]
      ,[StudentName]
      ,[Course]
      ,[Year]
      ,[Subject]
      ,[Roll]
      ,[Status]
      ,[Date]
      ,[AID]
      ,[Lecture]
      ,[Sem]
  FROM [Attendance].[dbo].[StudentAttendance]