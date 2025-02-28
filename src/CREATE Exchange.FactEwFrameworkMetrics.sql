

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Exchange')
	BEGIN
	EXEC('CREATE SCHEMA Exchange')
	END



SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[Exchange].[FactEwFrameworkMetrics]') AND type in (N'U'))

BEGIN

	CREATE TABLE [Exchange].[FactEwFrameworkMetrics](
		[EWFrameworkMetricId] [int] IDENTITY(1,1) NOT NULL,
		[PersonId] [int] NULL,
		[SchoolYearId] [int] NULL,
		[CountDateId] [int] NULL,
		[Race and Ethnicity] [nvarchar](100) NULL,
		[Gender] [nvarchar](100) NULL,
		[LGBT Status] [nvarchar](100) NULL,
		[Disability Status] [nvarchar](100) NULL,
		[Income Level] [nvarchar](100) NULL,
		[Parental Education Level] [nvarchar](100) NULL,
		[First-Generation College Student] [nvarchar](100) NULL,
		[Student from migrant family household] [nvarchar](100) NULL,
		[Home Language] [nvarchar](100) NULL,
		[English Learner] [nvarchar](100) NULL,
		[Attendance Intensity] [nvarchar](100) NULL,
		[K-12 School Type] [nvarchar](100) NULL,
		[Postsecondary Institution Classification] [nvarchar](100) NULL,
		[Transfer Enrollment Status] [nvarchar](100) NULL,
		[Credential-Seeking Status] [nvarchar](100) NULL,
		[Postsecondary Major] [nvarchar](100) NULL,
		[Occupation Category] [nvarchar](100) NULL,
		[Dislocated Worker Status] [nvarchar](100) NULL,
		[Basic Skills Level] [nvarchar](100) NULL,
		[Age Group (For Example, Adult Learners)] [nvarchar](100) NULL,
		[Urbanicity] [nvarchar](100) NULL,
		[Individuals Experiencing Homelessness] [nvarchar](100) NULL,
		[Individual Or Family Military Status] [nvarchar](100) NULL,
		[Individual With Current Or Past Child Welfare Involvement] [nvarchar](100) NULL,
		[Justice Involvement] [nvarchar](100) NULL,
		[Age] [nvarchar](50) NULL,
		[Age Group] [nvarchar](50) NULL,
		[American Indian or Alaska Native] [bit] NULL,
		[Asian] [bit] NULL,
		[Black or African American] [bit] NULL,
		[Hispanic or Latino] [bit] NULL,
		[Middle Eastern or North African] [bit] NULL,
		[White] [bit] NULL,
		[Native Hawaiian or Pacific Islander] [bit] NULL,
		[Sex Code] [nvarchar](50) NULL,
		[Sex Description] [nvarchar](200) NULL,
		[Entry Grade Level Code] [nvarchar](50) NULL,
		[Entry Grade Level Description] [nvarchar](50) NULL,
		[Disability Status Code] [nvarchar](50) NULL,
		[Disability Status Description] [nvarchar](200) NULL,
		[Idea Indicator Code] [nvarchar](50) NULL,
		[Idea Indicator Description] [nvarchar](200) NULL,
		[Section 504 Status Code] [nvarchar](50) NULL,
		[Section 504 Status Description] [nvarchar](200) NULL,
		[Primary Disability Type Code] [nvarchar](50) NULL,
		[Primary Disability Type Description] [nvarchar](200) NULL,
		[Eligibility Status For School Food Service Programs Code] [nvarchar](50) NULL,
		[Eligibility Status For School Food Service Programs Description] [nvarchar](200) NULL,
		[Low-Income Status Code] [nvarchar](50) NULL,
		[Low-Income Status Description] [nvarchar](200) NULL,
		[Economic Disadvantage Status Code] [nvarchar](50) NULL,
		[Economic Disadvantage Status Description] [nvarchar](50) NULL,
		[Parent Guardian Highest Level Of Education Completed Code] [nvarchar](50) NULL,
		[Parent Guardian Highest Level Of Education Completed Description] [nvarchar](200) NULL,
		[First Generation College Student Code] [nvarchar](50) NULL,
		[First Generation College Student Description] [nvarchar](200) NULL,
		[Migrant Status Code] [nvarchar](50) NULL,
		[Migrant Status Description] [nvarchar](200) NULL,
		[ISO 6393 Language Code Home Code] [nvarchar](50) NULL,
		[ISO 6393 Language Code Home Description] [nvarchar](200) NULL,
		[English Learner Status Code] [nvarchar](50) NULL,
		[English Learner Status Description] [nvarchar](200) NULL,
		[Postsecondary Institution Full Time Equivalency] [decimal](3, 2) NULL,
		[Postsecondary Enrollment Status Code] [nvarchar](50) NULL,
		[Postsecondary Enrollment Status Description] [nvarchar](200) NULL,
		[Early Learning Organization Full Time Equivalency] [decimal](3, 2) NULL,
		[School Type Code] [nvarchar](50) NULL,
		[School Type Description] [nvarchar](200) NULL,
		[Charter School Type Code] [nvarchar](50) NULL,
		[Charter School Type Description] [nvarchar](200) NULL,
		[Postsecondary Institution Administrative Funding Control Code] [nvarchar](50) NULL,
		[Postsecondary Institution Administrative Funding Control Description] [nvarchar](200) NULL,
		[Level of Institution Code] [nvarchar](50) NULL,
		[Level of Institution Description] [varchar](200) NULL,
		[Postsecondary Enrollment Type Code] [nvarchar](50) NULL,
		[Postsecondary Enrollment Type Description] [nvarchar](200) NULL,
		[Degree or Certificate Seeking Student Code] [nvarchar](50) NULL,
		[Degree or Certificate Seeking Student Description] [nvarchar](200) NULL,
		[Enrollment in Postsecondary Award Type Code] [nvarchar](50) NULL,
		[Enrollment in Postsecondary Award Type Description] [nvarchar](200) NULL,
		[Classification of Instructional Program Code Major1 Code] [nvarchar](50) NULL,
		[Classification of Instructional Program Code Major1 Description] [nvarchar](200) NULL,
		[Classification of Instructional Program Code Major2 Code] [nvarchar](50) NULL,
		[Classification of Instructional Program Code Major2 Description] [nvarchar](200) NULL,
		[Standard Occupational Classification Code] [nvarchar](50) NULL,
		[Standard Occupational Classification Description] [nvarchar](200) NULL,
		[Dislocated Worker Status Code] [nvarchar](50) NULL,
		[Dislocated Worker Status Description] [nvarchar](200) NULL,
		[Adult Educational Functioning Level at Intake Code] [nvarchar](50) NULL,
		[Adult Educational Functioning Level at Intake Description] [nvarchar](50) NULL,
		[Adult Educational Functioning Level at Posttest Code] [nvarchar](50) NULL,
		[Adult Educational Functioning Level at Posttest Description] [nvarchar](50) NULL,
		[Locale Code] [nvarchar](50) NULL,
		[Locale Description] [nvarchar](200) NULL,
		[Rural Residency Status Code] [nvarchar](50) NULL,
		[Rural Residency Status Description] [nvarchar](200) NULL,
		[Homelessness Status Code] [nvarchar](50) NULL,
		[Homelessness Status Description] [nvarchar](200) NULL,
		[Military Connected Student Indicator Code] [nvarchar](50) NULL,
		[Military Connected Student Indicator Description] [nvarchar](50) NULL,
		[Program Type Foster Care Code] [nvarchar](50) NULL,
		[Program Type Foster Care Description] [nvarchar](200) NULL,
		[Active Military Status Indicator Code] [nvarchar](50) NULL,
		[Active Military Status Indicator Description] [nvarchar](200) NULL,
		[Military Veteran Status Indicator Code] [nvarchar](50) NULL,
		[Military Veteran Status Indicator Description] [nvarchar](200) NULL,
		[Disciplinary Action Taken Placed In Juvenile Detention Center] [nvarchar](7) NULL,
		[Cohort Year] [int] NULL,
		[Cohort Graduation Year] [int] NULL,
		[High School Diploma Type Code] [nvarchar](50) NULL,
		[High School Diploma Type Description] [nvarchar](200) NULL,
		[Diploma or Credential Award Date] [datetime] NULL,
		[OrganizationName] [nvarchar](1000) NULL,
		[OrganizationIdentifierNces] [nvarchar](100) NULL,
		[OrganizationIdentifierSea] [nvarchar](100) NULL,
		[ParentOrganizationIdentifierSea] [nvarchar](100) NULL,
		[ReportLevel] [nvarchar](40) NULL,
		[StateAbbreviationCode] [nvarchar](100) NULL,
		[StateAbbreviationDescription] [nvarchar](500) NULL,
		[High School Graduate] [nvarchar](7) NULL,
		[High School Graduate Four Year] [nvarchar](7) NULL,
		[High School Graduate Five Year] [nvarchar](7) NULL,
		[High School Graduate Six Year] [nvarchar](7) NULL,
		[High School Graduate Postsecondary Enrollment] [nvarchar](7) NULL,
		[Grade 12 Student] [nvarchar](7) NULL,
		[Grade 12 Three College Applications] [nvarchar](7) NULL,
		[High School Student Pass One Early College Course] [nvarchar](7) NULL,
		[High School Student] [nvarchar](7) NULL,
		[Credit Bearing Score or Postsecondary Credit] [nvarchar](7) NULL,
		[High School Graduation School Year] [int] NULL,
	 CONSTRAINT [PK_EwFrameworkMetrics] PRIMARY KEY CLUSTERED 
	(
		[EWFrameworkMetricId] ASC
	)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]

ALTER TABLE [Exchange].[FactEwFrameworkMetrics]  WITH CHECK ADD  CONSTRAINT [FK_FactEwFrameworkMetrics_CountDateId] FOREIGN KEY([CountDateId])
REFERENCES [RDS].[DimDates] ([DimDateId])

ALTER TABLE [Exchange].[FactEwFrameworkMetrics] CHECK CONSTRAINT [FK_FactEwFrameworkMetrics_CountDateId]

ALTER TABLE [Exchange].[FactEwFrameworkMetrics]  WITH CHECK ADD  CONSTRAINT [FK_FactEwFrameworkMetrics_SchoolYearId] FOREIGN KEY([SchoolYearId])
REFERENCES [RDS].[DimSchoolYears] ([DimSchoolYearId])

ALTER TABLE [Exchange].[FactEwFrameworkMetrics] CHECK CONSTRAINT [FK_FactEwFrameworkMetrics_SchoolYearId]

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Self-reported race and ethnicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Race and Ethnicity'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Race and ethnicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Race and Ethnicity'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/race-and-ethnicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Race and Ethnicity'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Race and Ethnicity'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Self-identified gender' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Gender'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Gender' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Gender'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/gender' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Gender'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Gender'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Individuals who identify as a member of the LGBT community' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LGBT Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'LGBT status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LGBT Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/lgbt-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LGBT Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LGBT Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Students who receive special education supports or adults with a disability' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Disability status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/disability-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Whether individuals or households are considered low income, middle income, or high income' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Income Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Income level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Income Level'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/income-level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Income Level'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Income Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Highest level of education achieved by either parent' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parental Education Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Parental education level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parental Education Level'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/parental-education-level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parental Education Level'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parental Education Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Students who are the first in their family to complete any postsecondary degree' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First-Generation College Student'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'First-generation college student' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First-Generation College Student'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/first-generation-college-student' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First-Generation College Student'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First-Generation College Student'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Students who are the children of migratory or seasonal farmworkers or are migratory or seasonal farmworkers themselves' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Student from migrant family household'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Student from migrant family household' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Student from migrant family household'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/student-migrant-family-household' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Student from migrant family household'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Student from migrant family household'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'The language an individual speaks at home, if not English' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Home Language'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Home language' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Home Language'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/home-language' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Home Language'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Home Language'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A student or individual who is classified as an English language learner or as having limited English proficiency' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'English learner' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/english-learner' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Whether a child attends a half-day or full-day pre-K or kindergarten program, or a postsecondary student attends college part time or full time' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Attendance Intensity'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Attendance intensity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Attendance Intensity'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/attendance-intensity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Attendance Intensity'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Attendance Intensity'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'The type of school that a student attends' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K-12 School Type'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'K-12 school type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K-12 School Type'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/k-12-school-type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K-12 School Type'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K-12 School Type'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'The highest undergraduate degree level (less than two years, two year, or four year) and the sector (public, nonprofit, or for-profit) of a postsecondary institution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Classification'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Postsecondary institution classification' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Classification'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/postsecondary-institution-classification' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Classification'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Classification'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Whether students are first-time students in college or have transferred from another postsecondary institution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Transfer Enrollment Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Transfer enrollment status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Transfer Enrollment Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/transfer-enrollment-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Transfer Enrollment Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Transfer Enrollment Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Type of award a student is seeking upon completion of studies' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Credential-Seeking Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Credential-seeking status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Credential-Seeking Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/credential-seeking-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Credential-Seeking Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Credential-Seeking Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A student’s postsecondary major(s)' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Major'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Postsecondary major' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Major'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/postsecondary-major' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Major'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Major'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A worker’s occupational category' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Occupation Category'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Occupation category' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Occupation Category'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/occupation-category' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Occupation Category'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Occupation Category'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Individuals who have been terminated or laid off from employment, are unemployed due to economic conditions or natural disaster, are unemployed or underemployed spouses of active-duty members of the U.S. Armed Forces, or are displaced homemakers having trouble finding employment' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Dislocated worker status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/dislocated-worker-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'An individual’s level of basic skills proficiency' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Basic Skills Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Basic skills level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Basic Skills Level'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/basic-skills-level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Basic Skills Level'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Basic Skills Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'An individual’s age grouping' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Age Group (For Example, Adult Learners)'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Age group (for example, adult learners)' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Age Group (For Example, Adult Learners)'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/age-group-example-adult-learners' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Age Group (For Example, Adult Learners)'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Age Group (For Example, Adult Learners)'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Whether an individual or institution is located in an urban, suburban, town, or rural area' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Urbanicity'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Urbanicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Urbanicity'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/urbanicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Urbanicity'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Urbanicity'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Any individual who lacks a fixed, regular, and adequate nighttime residence' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individuals Experiencing Homelessness'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Individuals experiencing homelessness' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individuals Experiencing Homelessness'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/individuals-experiencing-homelessness' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individuals Experiencing Homelessness'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individuals Experiencing Homelessness'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Whether a student, parent, or spouse is a member of the U.S. Armed Forces (including the reserves or National Guard)' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual Or Family Military Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Individual or family military status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual Or Family Military Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/individual-or-family-military-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual Or Family Military Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual Or Family Military Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Students in foster care' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual With Current Or Past Child Welfare Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Individual with current or past child welfare involvement' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual With Current Or Past Child Welfare Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/individual-current-or-past-child-welfare-involvement' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual With Current Or Past Child Welfare Involvement'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual With Current Or Past Child Welfare Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Individuals who have interacted with the justice system in any capacity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Justice Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Justice involvement' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Justice Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/justice-involvement' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Justice Involvement'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Justice Involvement'

END
