/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 5 j.[JobID] as _id
      ,j.[EmployerID] as employer_id
      ,[JobTitle] as title
      ,[PositionTypeID] as position_type
      ,[Description] as [description]
      ,[Active] as active
      ,[CompanyConfidential] as company_confidential
      ,[TrainingPosition] AS training_position
      ,[CloseDate] as close_date
      ,[PublishDate] as publish_date
      ,l.Latitude as lat
      ,l.Longitude as lon
      ,l.Admin1Code as province_code
      ,ep.CompanyName as company_name
  FROM [jobcentre_dev].[dbo].[JobDB39] j
  INNER JOIN [jobcentre_dev].[dbo].[JobLocationsDB39] jl
  ON  j.jobId = jl.jobId
  INNER JOIN [jobcentre_dev].[dbo].[LocationsDB39] l
  ON jl.LocationId = l.Id
  INNER JOIN [jobcentre_dev].[dbo].[EmployerProfileDB39] ep
  ON j.EmployerID = ep.EmployerID
