SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Exchange].[Populate_FactEwFrameworkMetrics]
	@SchoolYear smallint
AS
BEGIN

	SET NOCOUNT ON;
	
	begin try


DECLARE @CohortGraduationYear smallint
SET @CohortGraduationYear = (@SchoolYear + 3)

---------------------------------------------------
-----Create the temporary table to work with ------
---------------------------------------------------

IF OBJECT_ID('tempdb..#EWFrameworkData') IS NOT NULL
	DROP TABLE #EWFrameworkData

CREATE TABLE #EWFrameworkData
           ([PersonId] int
           ,[SchoolYearId] int
           ,[CountDateId] int 
           ,[Race and Ethnicity] nvarchar(100)
           ,[Gender] nvarchar(100)
           ,[LGBT Status] nvarchar(100)
           ,[Disability Status] nvarchar(100)
           ,[Income Level] nvarchar(100)
           ,[Parental Education Level] nvarchar(100)
           ,[First-Generation College Student] nvarchar(100)
           ,[Student from migrant family household] nvarchar(100)
           ,[Home Language] nvarchar(100)
           ,[English Learner] nvarchar(100)
           ,[Attendance Intensity] nvarchar(100)
           ,[K-12 School Type] nvarchar(100)
           ,[Postsecondary Institution Classification] nvarchar(100)
           ,[Transfer Enrollment Status] nvarchar(100)
           ,[Credential-Seeking Status] nvarchar(100)
           ,[Postsecondary Major] nvarchar(100)
           ,[Occupation Category] nvarchar(100)
           ,[Dislocated Worker Status] nvarchar(100)
           ,[Basic Skills Level] nvarchar(100)
           ,[Age Group (For Example, Adult Learners)] nvarchar(100)
           ,[Urbanicity] nvarchar(100)
           ,[Individuals Experiencing Homelessness] nvarchar(100)
           ,[Individual Or Family Military Status] nvarchar(100)
           ,[Individual With Current Or Past Child Welfare Involvement] nvarchar(100)
           ,[Justice Involvement] nvarchar(100)
           ,[Age] nvarchar(100)
           ,[American Indian or Alaska Native] bit
           ,[Asian] bit
           ,[Black or African American] bit
           ,[Hispanic or Latino] bit
           ,[White] bit
           ,[Native Hawaiian or Pacific Islander] bit
           ,[Sex Code] nvarchar(50)
           ,[Sex Description] nvarchar(200)
           ,[Entry Grade Level Code] nvarchar(50)
           ,[Entry Grade Level Description] nvarchar(200)
           ,[Disability Status Code] nvarchar(50)
           ,[Disability Status Description] nvarchar(200)
           ,[Idea Indicator Code] nvarchar(50)
           ,[Idea Indicator Description] nvarchar(200)
           ,[Section 504 Status Code] nvarchar(50)
           ,[Section 504 Status Description] nvarchar(200)
           ,[Primary Disability Type Code] nvarchar(50)
           ,[Primary Disability Type Description] nvarchar(200)
           ,[Eligibility Status For School Food Service Programs Code] nvarchar(50)
           ,[Eligibility Status For School Food Service Programs Description] nvarchar(200)
           ,[Low-Income Status Code] nvarchar(50)
           ,[Low-Income Status Description] nvarchar(200)
           ,[Economic Disadvantage Status Code] nvarchar(50)
           ,[Economic Disadvantage Status Description] nvarchar(200)
           ,[Parent Guardian Highest Level Of Education Completed Code] nvarchar(50)
           ,[Parent Guardian Highest Level Of Education Completed Description] nvarchar(200)
           ,[First Generation College Student Code] nvarchar(50)
           ,[First Generation College Student Description] nvarchar(200)
           ,[Migrant Status Code] nvarchar(50)
           ,[Migrant Status Description] nvarchar(200)
           ,[ISO 639-3 Language Code Home Code] nvarchar(50)
           ,[ISO 639-3 Language Code Home Description] nvarchar(200)
           ,[English Learner Status Code] nvarchar(50)
           ,[English Learner Status Description] nvarchar(200)
           ,[Postsecondary Institution Full Time Equivalency] decimal(3,2)
           ,[Postsecondary Enrollment Status Code] nvarchar(50)
           ,[Postsecondary Enrollment Status Description] nvarchar(200)
           ,[Early Learning Organization Full Time Equivalency] nvarchar(200)
           ,[School Type Code] nvarchar(50)
           ,[School Type Description] nvarchar(200)
           ,[Charter School Type Code] nvarchar(50)
           ,[Charter School Type Description] nvarchar(200)
           ,[Postsecondary Institution Administrative Funding Control Code] nvarchar(50)
           ,[Postsecondary Institution Administrative Funding Control Description] nvarchar(200)
           ,[Level of Institution Code] nvarchar(50)
           ,[Level of Institution Description] nvarchar(200)
           ,[Postsecondary Enrollment Type Code] nvarchar(50)
           ,[Postsecondary Enrollment Type Description] nvarchar(200)
           ,[Degree or Certificate Seeking Student Code] nvarchar(50)
           ,[Degree or Certificate Seeking Student Description] nvarchar(200)
           ,[Enrollment in Postsecondary Award Type Code] nvarchar(50)
           ,[Enrollment in Postsecondary Award Type Description] nvarchar(200)
           ,[Classification of Instructional Program Code Major1 Code] nvarchar(50)
           ,[Classification of Instructional Program Code Major1 Description] nvarchar(200)
           ,[Classification of Instructional Program Code Major2 Code] nvarchar(50)
           ,[Classification of Instructional Program Code Major2 Description] nvarchar(200)
           ,[Standard Occupational Classification Code] nvarchar(50)
           ,[Standard Occupational Classification Description] nvarchar(200)
           ,[Dislocated Worker Status Code] nvarchar(50)
           ,[Dislocated Worker Status Description] nvarchar(200)
           ,[Adult Educational Functioning Level at Intake Code] nvarchar(50)
           ,[Adult Educational Functioning Level at Intake Description] nvarchar(200)
           ,[Adult Educational Functioning Level at Posttest Code] nvarchar(50)
           ,[Adult Educational Functioning Level at Posttest Description] nvarchar(200)
           ,[Locale Code] nvarchar(50)
           ,[Locale Description] nvarchar(200)
           ,[Rural Residency Status Code] nvarchar(50)
           ,[Rural Residency Status Description] nvarchar(200)
           ,[Homelessness Status Code] nvarchar(50)
           ,[Homelessness Status Description] nvarchar(200)
           ,[Military Connected Student Indicator Code] nvarchar(50)
           ,[Military Connected Student Indicator Description] nvarchar(200)
           ,[Program Type Foster Care Code] nvarchar(50)
           ,[Program Type Foster Care Description] nvarchar(200)
           ,[Active Military Status Indicator Code] nvarchar(50)
           ,[Active Military Status Indicator Description] nvarchar(200)
           ,[Military Veteran Status Indicator Code] nvarchar(50)
           ,[Military Veteran Status Indicator Description] nvarchar(200)
           ,[Disciplinary Action Taken Placed In Juvenile Detention Center] nvarchar(7)
           ,[Cohort Year] int
           ,[Cohort Graduation Year] int
           ,[High School Diploma Type Code] nvarchar(50)
           ,[High School Diploma Type Description] nvarchar(200)
		   ,[Diploma or Credential Award Date] datetime
		   ,[LeaOrganizationName] [nvarchar](1000) NULL
		   ,[LeaIdentifierSea] [nvarchar](50) NULL
		   ,[LeaIdentifierNces] [nvarchar](50) NULL
		   ,[K12SchoolOrganizationName] [nvarchar](1000) NULL
		   ,[K12SchoolSchoolIdentifierSea] [nvarchar](50) NULL
	   	   ,[K12SchoolSchoolIdentifierNces] [nvarchar](50) NULL
		   ,[PostsecondaryInstitutionOrganizationName] [nvarchar](1000) NULL
		   ,[PostsecondaryInstitutionSchoolIdentifierSea] [nvarchar](50) NULL
		   ,[IPEDSIdentifier] [int] NULL 			 
           ,[StateAbbreviationCode] nvarchar(50)
           ,[StateAbbreviationDescription] nvarchar(200)
           ,[High School Graduate] nvarchar(7)
           ,[High School Graduate Four Year] nvarchar(7)
           ,[High School Graduate Five Year] nvarchar(7)
           ,[High School Graduate Six Year] nvarchar(7)
           ,[High School Graduate Postsecondary Enrollment] nvarchar(7)
           ,[Grade 12 Three College Applications] nvarchar(7)
		   ,[High School Graduation School Year] int
		   ,[SchoolYear] int
		   ,[K12SchoolId] int)


-------------------------------------------
----STEP 1 - All Students in the Cohort----
-------------------------------------------
----Exclude students who transferred out---
-------------------------------------------

INSERT INTO #EWFrameworkData
           ([PersonId]
           ,[SchoolYearId]
           ,[Cohort Graduation Year]
		   ,[SchoolYear])
SELECT DISTINCT fse.K12StudentId, fse.SchoolYearId, @CohortGraduationYear, rdsy.SchoolYear
FROM RDS.FactK12StudentEnrollments fse
JOIN RDS.DimK12EnrollmentStatuses rdkes
	ON fse.K12EnrollmentStatusId = rdkes.DimK12EnrollmentStatusId
JOIN RDS.DimSchoolYears rdsycohortyear
	ON fse.CohortGraduationYearId = rdsycohortyear.DimSchoolYearId
JOIN RDS.DimSchoolYears rdsy
	ON fse.SchoolYearId = rdsy.DimSchoolYearId
WHERE rdsycohortyear.SchoolYear = @CohortGraduationYear
AND rdsy.SchoolYear = @SchoolYear
AND rdkes.ExitOrWithdrawalTypeCode NOT IN --Codes that indicate a transfer out
	(
	'01907'
	,'01908'
	,'01909'
	,'01910'
	,'01910'
	,'01911'
	,'01911'
	,'01912'
	,'01913'
	,'01913'
	,'01914'
	,'01914'
	,'01915'
	,'01916'
	,'01917'
	,'01918'
	,'01919'
	,'01919'
	,'03508'
	,'73063'
	)


----School Information

UPDATE #EWFrameworkData
SET [School Type Code] = dim.SchoolTypeCode
	,[School Type Description] = dim.SchoolTypeDescription
	,K12SchoolOrganizationName = dim.NameOfInstitution
	,StateAbbreviationCode = dim.StateAbbreviationCode
	,StateAbbreviationDescription = dim.StateAbbreviationDescription
	,K12SchoolSchoolIdentifierSea = dim.SchoolIdentifierSea
	,K12SchoolSchoolIdentifierNces = dim.SchoolIdentifierNces
	,LeaIdentifierSea = dim.LeaIdentifierSea
	,LeaIdentifierNces = dim.LeaIdentifierNces
	,LeaOrganizationName = dim.LeaOrganizationName
	,K12SchoolId = dim.DimK12SchoolId
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimK12Schools dim
	ON fse.K12SchoolId = dim.DimK12SchoolId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
AND NOT EXISTS (SELECT 'x' FROM RDS.DimK12EnrollmentStatuses rdkes
				WHERE fse.K12EnrollmentStatusId = rdkes.DimK12EnrollmentStatusId
				AND rdkes.ExitOrWithdrawalTypeCode IN
					(
					'01907'
					,'01908'
					,'01909'
					,'01910'
					,'01910'
					,'01911'
					,'01911'
					,'01912'
					,'01913'
					,'01913'
					,'01914'
					,'01914'
					,'01915'
					,'01916'
					,'01917'
					,'01918'
					,'01919'
					,'01919'
					,'03508'
					,'73063'
					))

----Defaults
UPDATE #EWFrameworkData
SET [Cohort Year] = ([Cohort Graduation Year] - 3)
WHERE [Cohort Graduation Year] IS NOT NULL

-------------------------------------------
----STEP 2 - Add Demographic Data      ----
-------------------------------------------
----Principle - If a binary value is   ----
----true, set to that first			   ----
-------------------------------------------

----English Learner Status

UPDATE #EWFrameworkData
SET [English Learner Status Code] = dim.EnglishLearnerStatusCode, [English Learner Status Description] = dim.EnglishLearnerStatusDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimEnglishLearnerStatuses dim
	ON fse.EnglishLearnerStatusId = dim.DimEnglishLearnerStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND dim.EnglishLearnerStatusCode = 'Yes'
	AND efm.[English Learner Status Code] IS NULL

UPDATE #EWFrameworkData
SET [English Learner Status Code] = dim.EnglishLearnerStatusCode, [English Learner Status Description] = dim.EnglishLearnerStatusDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimEnglishLearnerStatuses dim
	ON fse.EnglishLearnerStatusId = dim.DimEnglishLearnerStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[English Learner Status Code] IS NULL


----Economic Disadvantage Status & Eligibility Status For School Food Service Programs

UPDATE #EWFrameworkData
SET [Economic Disadvantage Status Code] = dim.EconomicDisadvantageStatusCode
	,[Economic Disadvantage Status Description] = dim.EconomicDisadvantageStatusDescription
	,[Eligibility Status For School Food Service Programs Code] = dim.EligibilityStatusForSchoolFoodServiceProgramsCode
	,[Eligibility Status For School Food Service Programs Description] = dim.EligibilityStatusForSchoolFoodServiceProgramsDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimEconomicallyDisadvantagedStatuses dim
	ON fse.EconomicallyDisadvantagedStatusId = dim.DimEconomicallyDisadvantagedStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND dim.EconomicDisadvantageStatusCode = 'Yes'
	AND efm.[Economic Disadvantage Status Code] IS NULL
	AND dim.EligibilityStatusForSchoolFoodServiceProgramsCode IN ('Free', 'ReducedPrice')

UPDATE #EWFrameworkData
SET [Economic Disadvantage Status Code] = dim.EconomicDisadvantageStatusCode
	,[Economic Disadvantage Status Description] = dim.EconomicDisadvantageStatusDescription
	,[Eligibility Status For School Food Service Programs Code] = dim.EligibilityStatusForSchoolFoodServiceProgramsCode
	,[Eligibility Status For School Food Service Programs Description] = dim.EligibilityStatusForSchoolFoodServiceProgramsDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimEconomicallyDisadvantagedStatuses dim
	ON fse.EconomicallyDisadvantagedStatusId = dim.DimEconomicallyDisadvantagedStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[Economic Disadvantage Status Code] IS NULL

----Homelessness Status

UPDATE #EWFrameworkData
SET [Homelessness Status Code] = dim.HomelessnessStatusCode, [Homelessness Status Description] = dim.HomelessnessStatusDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimHomelessnessStatuses dim
	ON fse.HomelessnessStatusId = dim.DimHomelessnessStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND dim.HomelessnessStatusCode = 'Yes'
	AND efm.[Homelessness Status Code] IS NULL

UPDATE #EWFrameworkData
SET [Homelessness Status Code] = dim.HomelessnessStatusCode, [Homelessness Status Description] = dim.HomelessnessStatusDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimHomelessnessStatuses dim
	ON fse.HomelessnessStatusId = dim.DimHomelessnessStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[Homelessness Status Code] IS NULL


----Idea Indicator

UPDATE #EWFrameworkData
SET [Idea Indicator Code] = dim.IdeaIndicatorCode, [Idea Indicator Description] = dim.IdeaIndicatorDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimIdeaStatuses dim
	ON fse.IdeaStatusId = dim.DimIdeaStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND dim.IdeaIndicatorCode = 'Yes'
	AND efm.[Idea Indicator Code] IS NULL

UPDATE #EWFrameworkData
SET [Idea Indicator Code] = dim.IdeaIndicatorCode, [Idea Indicator Description] = dim.IdeaIndicatorDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimIdeaStatuses dim
	ON fse.IdeaStatusId = dim.DimIdeaStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[Idea Indicator Code] IS NULL


----Entry Grade Level

UPDATE #EWFrameworkData
SET [Entry Grade Level Code] = dim.GradeLevelCode, [Entry Grade Level Description] = dim.GradeLevelDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimGradeLevels dim
	ON fse.EntryGradeLevelId = dim.DimGradeLevelId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[Entry Grade Level Code] IS NULL


----Sex

UPDATE #EWFrameworkData
SET [Sex Code] = dim.SexCode, [Sex Description] = dim.SexDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimK12Demographics dim
	ON fse.K12DemographicId = dim.DimK12DemographicId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[Sex Code] IS NULL

----Primary Disability Type

UPDATE #EWFrameworkData
SET [Primary Disability Type Code] = dim.IdeaDisabilityTypeCode, [Primary Disability Type Description] = dim.IdeaDisabilityTypeDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimIdeaDisabilityTypes dim
	ON fse.PrimaryDisabilityTypeId = dim.DimIdeaDisabilityTypeId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[Primary Disability Type Code] IS NULL

----Migrant Status

UPDATE #EWFrameworkData
SET [Migrant Status Code] = dim.MigrantStatusCode, [Migrant Status Description] = dim.MigrantStatusDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimMigrantStatuses dim
	ON fse.MigrantStatusId = dim.DimMigrantStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND dim.MigrantStatusCode = 'Yes'
	AND efm.[Migrant Status Code] IS NULL

UPDATE #EWFrameworkData
SET [Migrant Status Code] = dim.MigrantStatusCode, [Migrant Status Description] = dim.MigrantStatusDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimMigrantStatuses dim
	ON fse.MigrantStatusId = dim.DimMigrantStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[Migrant Status Code] IS NULL

----Foster Care

UPDATE #EWFrameworkData
SET [Program Type Foster Care Code] = dim.ProgramParticipationFosterCareCode, [Program Type Foster Care Description] = dim.ProgramParticipationFosterCareDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimFosterCareStatuses dim
	ON fse.FosterCareStatusId = dim.DimFosterCareStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND dim.ProgramParticipationFosterCareCode = 'Yes'
	AND efm.[Program Type Foster Care Code] IS NULL

UPDATE #EWFrameworkData
SET [Program Type Foster Care Code] = dim.ProgramParticipationFosterCareCode, [Program Type Foster Care Description] = dim.ProgramParticipationFosterCareDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimFosterCareStatuses dim
	ON fse.FosterCareStatusId = dim.DimFosterCareStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[Program Type Foster Care Code] IS NULL

----Race

UPDATE #EWFrameworkData
SET Asian = '1'
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.BridgeK12StudentEnrollmentRaces bridge
	ON fse.FactK12StudentEnrollmentId = bridge.FactK12StudentEnrollmentId
JOIN RDS.DimRaces dim
	ON bridge.RaceId = dim.DimRaceId
WHERE RaceCode = 'Asian'

UPDATE #EWFrameworkData
SET [American Indian or Alaska Native] = '1'
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.BridgeK12StudentEnrollmentRaces bridge
	ON fse.FactK12StudentEnrollmentId = bridge.FactK12StudentEnrollmentId
JOIN RDS.DimRaces dim
	ON bridge.RaceId = dim.DimRaceId
WHERE RaceCode = 'AmericanIndianOrAlaskaNative'

UPDATE #EWFrameworkData
SET [Black or African American] = '1'
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.BridgeK12StudentEnrollmentRaces bridge
	ON fse.FactK12StudentEnrollmentId = bridge.FactK12StudentEnrollmentId
JOIN RDS.DimRaces dim
	ON bridge.RaceId = dim.DimRaceId
WHERE RaceCode = 'BlackOrAfricanAmerican'

UPDATE #EWFrameworkData
SET [Native Hawaiian or Pacific Islander] = '1'
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.BridgeK12StudentEnrollmentRaces bridge
	ON fse.FactK12StudentEnrollmentId = bridge.FactK12StudentEnrollmentId
JOIN RDS.DimRaces dim
	ON bridge.RaceId = dim.DimRaceId
WHERE RaceCode = 'NativeHawaiianOrOtherPacificIslander'

UPDATE #EWFrameworkData
SET [Hispanic or Latino] = '1'
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.BridgeK12StudentEnrollmentRaces bridge
	ON fse.FactK12StudentEnrollmentId = bridge.FactK12StudentEnrollmentId
JOIN RDS.DimRaces dim
	ON bridge.RaceId = dim.DimRaceId
WHERE RaceCode = 'HispanicorLatinoEthnicity'

UPDATE #EWFrameworkData
SET White = '1'
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.BridgeK12StudentEnrollmentRaces bridge
	ON fse.FactK12StudentEnrollmentId = bridge.FactK12StudentEnrollmentId
JOIN RDS.DimRaces dim
	ON bridge.RaceId = dim.DimRaceId
WHERE RaceCode = 'White'

----Military Connected Student Indicator / Active Military Status / Military Veteran Status Indicator

UPDATE #EWFrameworkData
SET [Military Connected Student Indicator Code] = dim.MilitaryConnectedStudentIndicatorCode
	,[Military Connected Student Indicator Description] = dim.MilitaryConnectedStudentIndicatorDescription
	,[Active Military Status Indicator Code] = dim.MilitaryActiveStudentIndicatorCode
	,[Active Military Status Indicator Description] = dim.MilitaryActiveStudentIndicatorDescription
	,[Military Veteran Status Indicator Code] = dim.MilitaryVeteranStudentIndicatorCode
	,[Military Veteran Status Indicator Description] = dim.MilitaryVeteranStudentIndicatorDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimMilitaryStatuses dim
	ON fse.MilitaryStatusId = dim.DimMilitaryStatusId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[Military Connected Student Indicator Code] IS NULL

----ISO 6393 Language Code Home

UPDATE #EWFrameworkData
SET [ISO 639-3 Language Code Home Code] = dim.Iso6392LanguageCodeCode, [ISO 639-3 Language Code Home Description] = dim.Iso6392LanguageCodeDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentEnrollments fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimLanguages dim
	ON fse.LanguageHomeId = dim.DimLanguageId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fse.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
WHERE efm.[Cohort Graduation Year] = CohortGraduationYear.SchoolYear
	AND efm.[ISO 639-3 Language Code Home Code] IS NULL

------------------------------------------------------
---- Begin pulling data from FactK12StudentCounts ----
------------------------------------------------------

----Disability Status / Section 504 Status

UPDATE #EWFrameworkData
SET [Disability Status Code] = dim.DisabilityStatusCode
	,[Disability Status Description] = dim.DisabilityStatusDescription
	,[Section 504 Status Code] = dim.Section504StatusCode
	,[Section 504 Status Description] = dim.Section504StatusDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentCounts fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimDisabilityStatuses dim
	ON fse.DisabilityStatusId = dim.DimDisabilityStatusId
WHERE dim.Section504StatusCode = 'Yes'
	AND efm.[Section 504 Status Code] IS NULL

UPDATE #EWFrameworkData
SET [Disability Status Code] = dim.DisabilityStatusCode
	,[Disability Status Description] = dim.DisabilityStatusDescription
	,[Section 504 Status Code] = dim.Section504StatusCode
	,[Section 504 Status Description] = dim.Section504StatusDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentCounts fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimDisabilityStatuses dim
	ON fse.DisabilityStatusId = dim.DimDisabilityStatusId
WHERE efm.[Section 504 Status Code] IS NULL

----High School Diploma Type (Note - when FactK12StudentAcademicRecord is added to the warehouse, this will be a better location to pull graduation information)

UPDATE #EWFrameworkData
SET [High School Diploma Type Code] = dim.HighSchoolDiplomaTypeCode
	,[High School Diploma Type Description] = dim.HighSchoolDiplomaTypeDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentCounts fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimK12AcademicAwardStatuses dim
	ON fse.K12AcademicAwardStatusId = dim.DimK12AcademicAwardStatusId
WHERE dim.HighSchoolDiplomaTypeCode <> 'MISSING'
	AND efm.[High School Diploma Type Code] IS NULL

UPDATE #EWFrameworkData
SET [High School Diploma Type Code] = dim.HighSchoolDiplomaTypeCode
	,[High School Diploma Type Description] = dim.HighSchoolDiplomaTypeDescription
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentCounts fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimK12AcademicAwardStatuses dim
	ON fse.K12AcademicAwardStatusId = dim.DimK12AcademicAwardStatusId
WHERE efm.[High School Diploma Type Code] IS NULL

----Set defaults based on FactK12StudentCounts information (Note - a better source will be FactK12StudentAcademicRecord when added to the warehouse)

UPDATE #EWFrameworkData
SET [High School Graduate] = 'True'
	,[High School Graduation School Year] = @SchoolYear
WHERE [High School Diploma Type Code] <> 'MISSING'

UPDATE #EWFrameworkData
SET [High School Graduate] = 'False'
WHERE [High School Diploma Type Code] = 'MISSING'

----------------------------------------------------------
---- Begin pulling data from FactPsStudentEnrollments ----
----------------------------------------------------------

----High School Graduate Postsecondary Enrollment

--using EntryDateIntoPostsecondaryId
UPDATE #EWFrameworkData
SET [High School Graduate Postsecondary Enrollment] = 'True'
FROM #EWFrameworkData efm
JOIN RDS.FactPsStudentEnrollments fse
	ON efm.PersonId = fse.PsStudentId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimDates entrydateintopostsecondary
	ON fse.EntryDateIntoPostSecondaryId = entrydateintopostsecondary.DimDateId
WHERE [High School Graduate Postsecondary Enrollment] IS NULL
	AND entrydateintopostsecondary.DateValue IS NOT NULL
	AND entrydateintopostsecondary.DateValue < (CONVERT(VARCHAR(4), @SchoolYear) + '-11-01')
	AND entrydateintopostsecondary.DateValue > '1900-01-01'

--using EnrollmentEntryDateId
UPDATE #EWFrameworkData
SET [High School Graduate Postsecondary Enrollment] = 'True'
FROM #EWFrameworkData efm
JOIN RDS.FactPsStudentEnrollments fse
	ON efm.PersonId = fse.PsStudentId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimDates enrollmententrydate
	ON fse.EnrollmentEntryDateId = enrollmententrydate.DimDateId
WHERE [High School Graduate Postsecondary Enrollment] IS NULL
	AND enrollmententrydate.DateValue IS NOT NULL
	AND enrollmententrydate.DateValue < (CONVERT(VARCHAR(4), @SchoolYear) + '-11-01')
	AND enrollmententrydate.DateValue > '1900-01-01'

--set default to False where enrollment is unknown or false
UPDATE #EWFrameworkData
SET [High School Graduate Postsecondary Enrollment] = 'False'
WHERE [High School Graduate Postsecondary Enrollment] IS NULL


-----------------------------------------------------------
---- Begin pulling data from FactK12StudentDisciplines ----
-----------------------------------------------------------

----Disciplinary Action Taken Placed In Juvenile Detention Center

UPDATE #EWFrameworkData
SET [Disciplinary Action Taken Placed In Juvenile Detention Center] = 'True'
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentDisciplines fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimDisciplineStatuses dim
	ON fse.DisciplineStatusId = dim.DimDisciplineStatusId
WHERE dim.DisciplinaryActionTakenCode = '75000' --Placed in juveinle detention center
	AND [Disciplinary Action Taken Placed In Juvenile Detention Center] IS NULL

UPDATE #EWFrameworkData
SET [Disciplinary Action Taken Placed In Juvenile Detention Center] = 'True'
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentDisciplines fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimDisciplineStatuses dim
	ON fse.DisciplineStatusId = dim.DimDisciplineStatusId
WHERE dim.DisciplinaryActionTakenCode = '03088' -- juvenile justice referral
	AND [Disciplinary Action Taken Placed In Juvenile Detention Center] IS NULL

UPDATE #EWFrameworkData
SET [Disciplinary Action Taken Placed In Juvenile Detention Center] = 'True'
FROM #EWFrameworkData efm
JOIN RDS.FactK12StudentDisciplines fse
	ON efm.PersonId = fse.K12StudentId
	AND efm.K12SchoolId = fse.K12SchoolId
	AND efm.SchoolYearId = fse.SchoolYearId
JOIN RDS.DimDisciplineStatuses dim
	ON fse.DisciplineStatusId = dim.DimDisciplineStatusId
WHERE dim.DisciplinaryActionTakenCode = '03089' -- law enforcement referral
	AND [Disciplinary Action Taken Placed In Juvenile Detention Center] IS NULL

UPDATE #EWFrameworkData
SET [Disciplinary Action Taken Placed In Juvenile Detention Center] = 'False'
WHERE [Disciplinary Action Taken Placed In Juvenile Detention Center] IS NULL

-------------------------------------
----STEP 3 - Run Calculations -------
-------------------------------------

-------------------------------------
----Calculate Four/Five/Six Year ----
-------------------------------------

UPDATE #EWFrameworkData SET [High School Graduate Four Year] = 'True' WHERE [Cohort Year] = (@SchoolYear - 3) AND [Cohort Graduation Year] = @SchoolYear AND [High School Graduation School Year] = @SchoolYear
UPDATE #EWFrameworkData SET [High School Graduate Five Year] = 'True' WHERE [Cohort Year] = (@SchoolYear - 4) AND [Cohort Graduation Year] = (@SchoolYear - 1) AND [High School Graduation School Year] = @SchoolYear
UPDATE #EWFrameworkData SET [High School Graduate Six Year] = 'True' WHERE [Cohort Year] = (@SchoolYear - 5) AND [Cohort Graduation Year] = (@SchoolYear - 2) AND [High School Graduation School Year] = @SchoolYear
UPDATE #EWFrameworkData SET [High School Graduate Four Year] = 'False' WHERE [High School Graduate Four Year] IS NULL
UPDATE #EWFrameworkData SET [High School Graduate Five Year] = 'False' WHERE [High School Graduate Five Year] IS NULL
UPDATE #EWFrameworkData SET [High School Graduate Six Year] = 'False' WHERE [High School Graduate Six Year] IS NULL


----------------------------------------------
----STEP 4 - Populate EW Disaggregates -------
----------------------------------------------

------------------------------------------------------------
----Begin updating the EW Framework Disaggregates fields----
------------------------------------------------------------

----The data that has already been placed into the Fact table will now be used to populate the EW Framework Disaggregates which are also located in the Fact table.

---Race and Ethnicity Information - note need to come back and correct for two or more races.

UPDATE #EWFrameworkData 
SET [Race and Ethnicity] = 'American Indian or Alaska Native' 
WHERE [Asian] = '0' 
	AND [American Indian or Alaska Native] = '1'
	AND [Black or African American] = '0' 
	AND [Hispanic or Latino] = '0' 
	AND [Native Hawaiian or Pacific Islander] = '0'
	AND [White] = '0'
	AND [Race and Ethnicity] IS NULL

UPDATE #EWFrameworkData 
SET [Race and Ethnicity] = 'Asian' 
WHERE [Asian] = '1' 
	AND [American Indian or Alaska Native] = '0'
	AND [Black or African American] = '0' 
	AND [Hispanic or Latino] = '0' 
	AND [Native Hawaiian or Pacific Islander] = '0'
	AND [White] = '0'
	AND [Race and Ethnicity] IS NULL

UPDATE #EWFrameworkData 
SET [Race and Ethnicity] = 'Black or African American' 
WHERE [Asian] = '0' 
	AND [American Indian or Alaska Native] = '0'
	AND [Black or African American] = '1' 
	AND [Hispanic or Latino] = '0' 
	AND [Native Hawaiian or Pacific Islander] = '0'
	AND [White] = '0'
	AND [Race and Ethnicity] IS NULL

UPDATE #EWFrameworkData 
SET [Race and Ethnicity] = 'Hispanic or Latino' 
WHERE [Asian] = '0' 
	AND [American Indian or Alaska Native] = '0'
	AND [Black or African American] = '0' 
	AND [Hispanic or Latino] = '1' 
	AND [Native Hawaiian or Pacific Islander] = '0'
	AND [White] = '0'
	AND [Race and Ethnicity] IS NULL

UPDATE #EWFrameworkData 
SET [Race and Ethnicity] = 'Native Hawaiian or Pacific Islander' 
WHERE [Asian] = '0' 
	AND [American Indian or Alaska Native] = '0'
	AND [Black or African American] = '0' 
	AND [Hispanic or Latino] = '0' 
	AND [Native Hawaiian or Pacific Islander] = '1'
	AND [White] = '0'
	AND [Race and Ethnicity] IS NULL

UPDATE #EWFrameworkData 
SET [Race and Ethnicity] = 'White' 
WHERE [Asian] = '0' 
	AND [American Indian or Alaska Native] = '0'
	AND [Black or African American] = '0' 
	AND [Hispanic or Latino] = '0' 
	AND [Native Hawaiian or Pacific Islander] = '0'
	AND [White] = '1'
	AND [Race and Ethnicity] IS NULL

UPDATE #EWFrameworkData 
SET [Race and Ethnicity] = 'Two Or More Races' 
WHERE [Race and Ethnicity] IS NULL

----Gender
UPDATE #EWFrameworkData SET Gender = [Sex Description]

----English Learner
UPDATE #EWFrameworkData SET [English Learner] = [English Learner Status Description]

----Individuals Experiencing Homelessness
UPDATE #EWFrameworkData SET [Individuals Experiencing Homelessness] = [Homelessness Status Description]

---- Home Language
UPDATE #EWFrameworkData
SET [Home Language] = [ISO 639-3 Language Code Home Description]

---- First Generation College Student
UPDATE #EWFrameworkData
SET [First-Generation College Student] = 'True'
WHERE [First Generation College Student Code] = 'Yes'

UPDATE #EWFrameworkData
SET [First-Generation College Student] = 'False'
WHERE [First Generation College Student Code] = 'No'

----Student from migrant family household
UPDATE #EWFrameworkData
SET [Student from migrant family household] = 'True'
WHERE [Migrant Status Code] = 'Yes'

UPDATE #EWFrameworkData
SET [Student from migrant family household] = 'False'
WHERE [Migrant Status Code] = 'No'

----K-12 School Type
UPDATE #EWFrameworkData 
SET [K-12 School Type] = [School Type Description]

----Parental Education Level
UPDATE #EWFrameworkData 
SET [Parental Education Level] = 'High school diploma' 
WHERE [Parent Guardian Highest Level Of Education Completed Description] = 'High school diploma'

UPDATE #EWFrameworkData 
SET [Parental Education Level] = 'Doctoral degree' 
WHERE [Parent Guardian Highest Level Of Education Completed Description] LIKE 'Doctoral%'

UPDATE #EWFrameworkData 
SET [Parental Education Level] = 'Bachelor''s degree' 
WHERE [Parent Guardian Highest Level Of Education Completed Description] LIKE 'Bachelor%'

UPDATE #EWFrameworkData 
SET [Parental Education Level] = 'Master''s degree' 
WHERE [Parent Guardian Highest Level Of Education Completed Description] LIKE 'Masters%'

UPDATE #EWFrameworkData 
SET [Parental Education Level] = 'High school equivalency (e.g., GED)' 
WHERE [Parent Guardian Highest Level Of Education Completed Description] LIKE 'High school equivalency (e.g., GED)%'

UPDATE #EWFrameworkData 
SET [Parental Education Level] = 'Some college but no degree' 
WHERE [Parent Guardian Highest Level Of Education Completed Description] LIKE 'Some college but no degree%'

----Urbanicity
UPDATE #EWFrameworkData 
SET Urbanicity = 'Rural' 
WHERE [Locale Code] IN ('RuralFringe', 'RuralDistant', 'RuralRemote')

UPDATE #EWFrameworkData 
SET Urbanicity = 'Town' 
WHERE [Locale Code] IN ('TownFringe', 'TownDistant', 'TownRemote')

UPDATE #EWFrameworkData 
SET Urbanicity = 'Suburban' 
WHERE [Locale Code] IN ('SuburbanLarge', 'SuburbanMidsize', 'SuburbanSmall')

UPDATE #EWFrameworkData 
SET Urbanicity = 'Urban' 
WHERE [Locale Code] IN ('CityLarge', 'CityMidsize', 'CitySmall')

----Individual Or Family Military Status
UPDATE #EWFrameworkData 
SET [Individual Or Family Military Status] = 'True' 
WHERE [Military Connected Student Indicator Code] IN ('ActiveDuty', 'NationalGuardOrReserve')

UPDATE #EWFrameworkData 
SET [Individual Or Family Military Status] = 'True' 
WHERE [Active Military Status Indicator Code] = 'Yes'

UPDATE #EWFrameworkData 
SET [Individual Or Family Military Status] = 'False' 
WHERE [Individual Or Family Military Status] IS NULL

----Individual With Current Or Past Child Welfare Involvement

UPDATE #EWFrameworkData 
SET [Individual With Current Or Past Child Welfare Involvement] = 'True'
WHERE [Program Type Foster Care Code] = 'Yes'

UPDATE #EWFrameworkData
SET [Individual With Current Or Past Child Welfare Involvement] = 'False'
WHERE [Individual With Current Or Past Child Welfare Involvement] IS NULL

----Justice Involvement
UPDATE #EWFrameworkData 
SET [Justice Involvement] = [Disciplinary Action Taken Placed In Juvenile Detention Center]

----Age

UPDATE ffm
SET Age = DATEDIFF(YEAR, dp.BirthDate, dd.DateValue) - 
    CASE 
        WHEN MONTH(dp.BirthDate) > MONTH(dd.DateValue) 
             OR (MONTH(dp.BirthDate) = MONTH(dd.DateValue) AND DAY(dp.BirthDate) > DAY(dd.DateValue)) 
        THEN 1 
        ELSE 0 
    END
FROM #EWFrameworkData ffm
JOIN RDS.DimPeople dp
    ON ffm.PersonId = dp.DimPersonId
JOIN RDS.DimDates dd
    ON ffm.CountDateId = dd.DimDateId;

----Income Level
UPDATE #EWFrameworkData 
SET [Income Level] = 'Low Income' 
WHERE [Eligibility Status For School Food Service Programs Code] IN ('Free', 'Reduced')

UPDATE #EWFrameworkData
SET [Income Level] = 'Low Income'
WHERE [Economic Disadvantage Status Code] = 'Yes'

UPDATE #EWFrameworkData
SET [Income Level] = 'Not Low Income'
WHERE [Income Level] IS NULL
	AND [Eligibility Status For School Food Service Programs Code] = 'FullPrice'

UPDATE #EWFrameworkData
SET [Income Level] = 'Not Low Income'
WHERE [Income Level] IS NULL
	AND [Economic Disadvantage Status Code] = 'No'


-----------------------------------------------------------
----STEP 6 - Load the FactEwFrameworkMetricts table -------
-----------------------------------------------------------


INSERT INTO [Exchange].[FactEwFrameworkMetrics]
           ([PersonId]
           ,[SchoolYearId]
           ,[CountDateId]
           ,[Race and Ethnicity]
           ,[Gender]
           ,[LGBT Status]
           ,[Disability Status]
           ,[Income Level]
           ,[Parental Education Level]
           ,[First-Generation College Student]
           ,[Student from migrant family household]
           ,[Home Language]
           ,[English Learner]
           ,[Attendance Intensity]
           ,[K-12 School Type]
           ,[Postsecondary Institution Classification]
           ,[Transfer Enrollment Status]
           ,[Credential-Seeking Status]
           ,[Postsecondary Major]
           ,[Occupation Category]
           ,[Dislocated Worker Status]
           ,[Basic Skills Level]
           ,[Age Group (For Example, Adult Learners)]
           ,[Urbanicity]
           ,[Individuals Experiencing Homelessness]
           ,[Individual Or Family Military Status]
           ,[Individual With Current Or Past Child Welfare Involvement]
           ,[Justice Involvement]
           ,[Age]
           ,[American Indian or Alaska Native]
           ,[Asian]
           ,[Black or African American]
           ,[Hispanic or Latino]
           ,[White]
           ,[Native Hawaiian or Pacific Islander]
           ,[Sex Code]
           ,[Sex Description]
           ,[Entry Grade Level Code]
           ,[Entry Grade Level Description]
           ,[Disability Status Code]
           ,[Disability Status Description]
           ,[Idea Indicator Code]
           ,[Idea Indicator Description]
           ,[Section 504 Status Code]
           ,[Section 504 Status Description]
           ,[Primary Disability Type Code]
           ,[Primary Disability Type Description]
           ,[Eligibility Status For School Food Service Programs Code]
           ,[Eligibility Status For School Food Service Programs Description]
           ,[Low-Income Status Code]
           ,[Low-Income Status Description]
           ,[Economic Disadvantage Status Code]
           ,[Economic Disadvantage Status Description]
           ,[Parent Guardian Highest Level Of Education Completed Code]
           ,[Parent Guardian Highest Level Of Education Completed Description]
           ,[First Generation College Student Code]
           ,[First Generation College Student Description]
           ,[Migrant Status Code]
           ,[Migrant Status Description]
           ,[ISO 639-3 Language Code Home Code]
           ,[ISO 639-3 Language Code Home Description]
           ,[English Learner Status Code]
           ,[English Learner Status Description]
           ,[Postsecondary Institution Full Time Equivalency]
           ,[Postsecondary Enrollment Status Code]
           ,[Postsecondary Enrollment Status Description]
           ,[Early Learning Organization Full Time Equivalency]
           ,[School Type Code]
           ,[School Type Description]
           ,[Charter School Type Code]
           ,[Charter School Type Description]
           ,[Postsecondary Institution Administrative Funding Control Code]
           ,[Postsecondary Institution Administrative Funding Control Description]
           ,[Level of Institution Code]
           ,[Level of Institution Description]
           ,[Postsecondary Enrollment Type Code]
           ,[Postsecondary Enrollment Type Description]
           ,[Degree or Certificate Seeking Student Code]
           ,[Degree or Certificate Seeking Student Description]
           ,[Enrollment in Postsecondary Award Type Code]
           ,[Enrollment in Postsecondary Award Type Description]
           ,[Classification of Instructional Program Code Major1 Code]
           ,[Classification of Instructional Program Code Major1 Description]
           ,[Classification of Instructional Program Code Major2 Code]
           ,[Classification of Instructional Program Code Major2 Description]
           ,[Standard Occupational Classification Code]
           ,[Standard Occupational Classification Description]
           ,[Dislocated Worker Status Code]
           ,[Dislocated Worker Status Description]
           ,[Adult Educational Functioning Level at Intake Code]
           ,[Adult Educational Functioning Level at Intake Description]
           ,[Adult Educational Functioning Level at Posttest Code]
           ,[Adult Educational Functioning Level at Posttest Description]
           ,[Locale Code]
           ,[Locale Description]
           ,[Rural Residency Status Code]
           ,[Rural Residency Status Description]
           ,[Homelessness Status Code]
           ,[Homelessness Status Description]
           ,[Military Connected Student Indicator Code]
           ,[Military Connected Student Indicator Description]
           ,[Program Type Foster Care Code]
           ,[Program Type Foster Care Description]
           ,[Active Military Status Indicator Code]
           ,[Active Military Status Indicator Description]
           ,[Military Veteran Status Indicator Code]
           ,[Military Veteran Status Indicator Description]
           ,[Disciplinary Action Taken Placed In Juvenile Detention Center]
           ,[Cohort Year]
           ,[Cohort Graduation Year]
           ,[High School Diploma Type Code]
           ,[High School Diploma Type Description]
		   ,[Diploma or Credential Award Date]
		   ,[LeaOrganizationName]
		   ,[LeaIdentifierSea]
		   ,[LeaIdentifierNces]
		   ,[K12SchoolOrganizationName]
		   ,[K12SchoolSchoolIdentifierSea]
	   	   ,[K12SchoolSchoolIdentifierNces]
		   ,[PostsecondaryInstitutionOrganizationName]
		   ,[PostsecondaryInstitutionSchoolIdentifierSea]
		   ,[IPEDSIdentifier]
           ,[StateAbbreviationCode]
           ,[StateAbbreviationDescription]
           ,[High School Graduate]
           ,[High School Graduate Four Year]
           ,[High School Graduate Five Year]
           ,[High School Graduate Six Year]
           ,[High School Graduate Postsecondary Enrollment]
           ,[Grade 12 Three College Applications]
		   ,[High School Graduation School Year])
SELECT
            [PersonId]
           ,[SchoolYearId]
           ,[CountDateId]
           ,[Race and Ethnicity]
           ,[Gender]
           ,[LGBT Status]
           ,[Disability Status]
           ,[Income Level]
           ,[Parental Education Level]
           ,[First-Generation College Student]
           ,[Student from migrant family household]
           ,[Home Language]
           ,[English Learner]
           ,[Attendance Intensity]
           ,[K-12 School Type]
           ,[Postsecondary Institution Classification]
           ,[Transfer Enrollment Status]
           ,[Credential-Seeking Status]
           ,[Postsecondary Major]
           ,[Occupation Category]
           ,[Dislocated Worker Status]
           ,[Basic Skills Level]
           ,[Age Group (For Example, Adult Learners)]
           ,[Urbanicity]
           ,[Individuals Experiencing Homelessness]
           ,[Individual Or Family Military Status]
           ,[Individual With Current Or Past Child Welfare Involvement]
           ,[Justice Involvement]
           ,[Age]
           ,[American Indian or Alaska Native]
           ,[Asian]
           ,[Black or African American]
           ,[Hispanic or Latino]
           ,[White]
           ,[Native Hawaiian or Pacific Islander]
           ,[Sex Code]
           ,[Sex Description]
           ,[Entry Grade Level Code]
           ,[Entry Grade Level Description]
           ,[Disability Status Code]
           ,[Disability Status Description]
           ,[Idea Indicator Code]
           ,[Idea Indicator Description]
           ,[Section 504 Status Code]
           ,[Section 504 Status Description]
           ,[Primary Disability Type Code]
           ,[Primary Disability Type Description]
           ,[Eligibility Status For School Food Service Programs Code]
           ,[Eligibility Status For School Food Service Programs Description]
           ,[Low-Income Status Code]
           ,[Low-Income Status Description]
           ,[Economic Disadvantage Status Code]
           ,[Economic Disadvantage Status Description]
           ,[Parent Guardian Highest Level Of Education Completed Code]
           ,[Parent Guardian Highest Level Of Education Completed Description]
           ,[First Generation College Student Code]
           ,[First Generation College Student Description]
           ,[Migrant Status Code]
           ,[Migrant Status Description]
           ,[ISO 639-3 Language Code Home Code]
           ,[ISO 639-3 Language Code Home Description]
           ,[English Learner Status Code]
           ,[English Learner Status Description]
           ,[Postsecondary Institution Full Time Equivalency]
           ,[Postsecondary Enrollment Status Code]
           ,[Postsecondary Enrollment Status Description]
           ,[Early Learning Organization Full Time Equivalency]
           ,[School Type Code]
           ,[School Type Description]
           ,[Charter School Type Code]
           ,[Charter School Type Description]
           ,[Postsecondary Institution Administrative Funding Control Code]
           ,[Postsecondary Institution Administrative Funding Control Description]
           ,[Level of Institution Code]
           ,[Level of Institution Description]
           ,[Postsecondary Enrollment Type Code]
           ,[Postsecondary Enrollment Type Description]
           ,[Degree or Certificate Seeking Student Code]
           ,[Degree or Certificate Seeking Student Description]
           ,[Enrollment in Postsecondary Award Type Code]
           ,[Enrollment in Postsecondary Award Type Description]
           ,[Classification of Instructional Program Code Major1 Code]
           ,[Classification of Instructional Program Code Major1 Description]
           ,[Classification of Instructional Program Code Major2 Code]
           ,[Classification of Instructional Program Code Major2 Description]
           ,[Standard Occupational Classification Code]
           ,[Standard Occupational Classification Description]
           ,[Dislocated Worker Status Code]
           ,[Dislocated Worker Status Description]
           ,[Adult Educational Functioning Level at Intake Code]
           ,[Adult Educational Functioning Level at Intake Description]
           ,[Adult Educational Functioning Level at Posttest Code]
           ,[Adult Educational Functioning Level at Posttest Description]
           ,[Locale Code]
           ,[Locale Description]
           ,[Rural Residency Status Code]
           ,[Rural Residency Status Description]
           ,[Homelessness Status Code]
           ,[Homelessness Status Description]
           ,[Military Connected Student Indicator Code]
           ,[Military Connected Student Indicator Description]
           ,[Program Type Foster Care Code]
           ,[Program Type Foster Care Description]
           ,[Active Military Status Indicator Code]
           ,[Active Military Status Indicator Description]
           ,[Military Veteran Status Indicator Code]
           ,[Military Veteran Status Indicator Description]
           ,[Disciplinary Action Taken Placed In Juvenile Detention Center]
           ,[Cohort Year]
           ,[Cohort Graduation Year]
           ,[High School Diploma Type Code]
           ,[High School Diploma Type Description]
		   ,[Diploma or Credential Award Date]
		   ,[LeaOrganizationName]
		   ,[LeaIdentifierSea]
		   ,[LeaIdentifierNces]
		   ,[K12SchoolOrganizationName]
		   ,[K12SchoolSchoolIdentifierSea]
	   	   ,[K12SchoolSchoolIdentifierNces]
		   ,[PostsecondaryInstitutionOrganizationName]
		   ,[PostsecondaryInstitutionSchoolIdentifierSea]
		   ,[IPEDSIdentifier]
           ,[StateAbbreviationCode]
           ,[StateAbbreviationDescription]
           ,[High School Graduate]
           ,[High School Graduate Four Year]
           ,[High School Graduate Five Year]
           ,[High School Graduate Six Year]
           ,[High School Graduate Postsecondary Enrollment]
           ,[Grade 12 Three College Applications]
		   ,[High School Graduation School Year]
FROM #EWFrameworkData



DROP TABLE #EWFrameworkData




	end try

	begin catch

		declare @msg as nvarchar(max)
		set @msg = ERROR_MESSAGE()

		declare @sev as int
		set @sev = ERROR_SEVERITY()

		RAISERROR(@msg, @sev, 1)

	end catch

	SET NOCOUNT OFF;

END
GO