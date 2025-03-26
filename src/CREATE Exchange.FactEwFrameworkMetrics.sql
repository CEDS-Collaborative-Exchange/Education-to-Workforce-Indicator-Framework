

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
		[American Indian or Alaska Native] [bit] NULL,
		[Asian] [bit] NULL,
		[Black or African American] [bit] NULL,
		[Hispanic or Latino] [bit] NULL,
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
		[ISO 639-3 Language Code Home Code] [nvarchar](50) NULL,
		[ISO 639-3 Language Code Home Description] [nvarchar](200) NULL,
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
		[LeaOrganizationName] [nvarchar](1000) NULL,
		[LeaIdentifierSea] [nvarchar](50) NULL,
		[LeaIdentifierNces] [nvarchar](50) NULL,
		[K12SchoolOrganizationName] [nvarchar](1000) NULL,
		[K12SchoolSchoolIdentifierSea] [nvarchar](50) NULL,
		[K12SchoolSchoolIdentifierNces] [nvarchar](50) NULL,
		[PostsecondaryInstitutionOrganizationName] [nvarchar](1000) NULL,
		[PostsecondaryInstitutionSchoolIdentifierSea] [nvarchar](50) NULL,
		[IPEDSIdentifier] [int] NULL,
		[StateAbbreviationCode] [nvarchar](100) NULL,
		[StateAbbreviationDescription] [nvarchar](500) NULL,
		[High School Graduate] [nvarchar](7) NULL,
		[High School Graduate Four Year] [nvarchar](7) NULL,
		[High School Graduate Five Year] [nvarchar](7) NULL,
		[High School Graduate Six Year] [nvarchar](7) NULL,
		[High School Graduate Postsecondary Enrollment] [nvarchar](7) NULL,
		[Grade 12 Three College Applications] [nvarchar](7) NULL,
		[High School Graduation School Year] [int] NULL,
 CONSTRAINT [PK_EwFrameworkMetrics] PRIMARY KEY CLUSTERED 
(
	[EWFrameworkMetricId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [Exchange].[FactEwFrameworkMetrics]  WITH CHECK ADD  CONSTRAINT [FK_FactEwFrameworkMetrics_CountDateId] FOREIGN KEY([CountDateId])
REFERENCES [RDS].[DimDates] ([DimDateId])

ALTER TABLE [Exchange].[FactEwFrameworkMetrics] CHECK CONSTRAINT [FK_FactEwFrameworkMetrics_CountDateId]

ALTER TABLE [Exchange].[FactEwFrameworkMetrics]  WITH CHECK ADD  CONSTRAINT [FK_FactEwFrameworkMetrics_SchoolYearId] FOREIGN KEY([SchoolYearId])
REFERENCES [RDS].[DimSchoolYears] ([DimSchoolYearId])

ALTER TABLE [Exchange].[FactEwFrameworkMetrics] CHECK CONSTRAINT [FK_FactEwFrameworkMetrics_SchoolYearId]

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Self-reported race and ethnicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Race and Ethnicity'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Race and ethnicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Race and Ethnicity'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Race and Ethnicity'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/race-and-ethnicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Race and Ethnicity'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Race and Ethnicity'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Self-identified gender' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Gender'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Gender' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Gender'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Gender'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/gender' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Gender'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Gender'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Individuals who identify as a member of the LGBT community' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LGBT Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'LGBT status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LGBT Status'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LGBT Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/lgbt-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LGBT Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LGBT Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Students who receive special education supports or adults with a disability' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Disability status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/disability-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Whether individuals or households are considered low income, middle income, or high income' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Income Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Income level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Income Level'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Income Level'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/income-level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Income Level'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Income Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Highest level of education achieved by either parent' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parental Education Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Parental education level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parental Education Level'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parental Education Level'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/parental-education-level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parental Education Level'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parental Education Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Students who are the first in their family to complete any postsecondary degree' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First-Generation College Student'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'First-generation college student' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First-Generation College Student'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First-Generation College Student'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/first-generation-college-student' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First-Generation College Student'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First-Generation College Student'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Students who are the children of migratory or seasonal farmworkers or are migratory or seasonal farmworkers themselves' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Student from migrant family household'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Student from migrant family household' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Student from migrant family household'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Student from migrant family household'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/student-migrant-family-household' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Student from migrant family household'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Student from migrant family household'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'The language an individual speaks at home, if not English' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Home Language'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Home language' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Home Language'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Home Language'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/home-language' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Home Language'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Home Language'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A student or individual who is classified as an English language learner or as having limited English proficiency' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'English learner' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/english-learner' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Whether a child attends a half-day or full-day pre-K or kindergarten program, or a postsecondary student attends college part time or full time' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Attendance Intensity'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Attendance intensity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Attendance Intensity'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Attendance Intensity'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/attendance-intensity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Attendance Intensity'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Attendance Intensity'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'The type of school that a student attends' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K-12 School Type'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'K-12 school type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K-12 School Type'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K-12 School Type'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/k-12-school-type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K-12 School Type'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K-12 School Type'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'The highest undergraduate degree level (less than two years, two year, or four year) and the sector (public, nonprofit, or for-profit) of a postsecondary institution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Classification'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Postsecondary institution classification' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Classification'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Classification'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/postsecondary-institution-classification' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Classification'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Classification'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Whether students are first-time students in college or have transferred from another postsecondary institution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Transfer Enrollment Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Transfer enrollment status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Transfer Enrollment Status'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Transfer Enrollment Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/transfer-enrollment-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Transfer Enrollment Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Transfer Enrollment Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Type of award a student is seeking upon completion of studies' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Credential-Seeking Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Credential-seeking status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Credential-Seeking Status'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Credential-Seeking Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/credential-seeking-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Credential-Seeking Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Credential-Seeking Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A student’s postsecondary major(s)' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Major'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Postsecondary major' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Major'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Major'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/postsecondary-major' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Major'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Major'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A worker’s occupational category' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Occupation Category'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Occupation category' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Occupation Category'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Occupation Category'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/occupation-category' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Occupation Category'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Occupation Category'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Individuals who have been terminated or laid off from employment, are unemployed due to economic conditions or natural disaster, are unemployed or underemployed spouses of active-duty members of the U.S. Armed Forces, or are displaced homemakers having trouble finding employment' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Dislocated worker status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/dislocated-worker-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'An individual’s level of basic skills proficiency' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Basic Skills Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Basic skills level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Basic Skills Level'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Basic Skills Level'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/basic-skills-level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Basic Skills Level'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Basic Skills Level'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'An individual’s age grouping' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Age Group (For Example, Adult Learners)'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Age group (for example, adult learners)' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Age Group (For Example, Adult Learners)'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Age Group (For Example, Adult Learners)'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/age-group-example-adult-learners' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Age Group (For Example, Adult Learners)'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Age Group (For Example, Adult Learners)'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Whether an individual or institution is located in an urban, suburban, town, or rural area' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Urbanicity'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Urbanicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Urbanicity'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Urbanicity'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/urbanicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Urbanicity'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Urbanicity'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Any individual who lacks a fixed, regular, and adequate nighttime residence' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individuals Experiencing Homelessness'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Individuals experiencing homelessness' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individuals Experiencing Homelessness'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individuals Experiencing Homelessness'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/individuals-experiencing-homelessness' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individuals Experiencing Homelessness'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individuals Experiencing Homelessness'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Whether a student, parent, or spouse is a member of the U.S. Armed Forces (including the reserves or National Guard)' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual Or Family Military Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Individual or family military status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual Or Family Military Status'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual Or Family Military Status'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/individual-or-family-military-status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual Or Family Military Status'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual Or Family Military Status'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Students in foster care' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual With Current Or Past Child Welfare Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Individual with current or past child welfare involvement' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual With Current Or Past Child Welfare Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual With Current Or Past Child Welfare Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/individual-current-or-past-child-welfare-involvement' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual With Current Or Past Child Welfare Involvement'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Individual With Current Or Past Child Welfare Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'Individuals who have interacted with the justice system in any capacity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Justice Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Justice involvement' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Justice Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Disaggregate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Justice Involvement'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/disaggregates/justice-involvement' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Justice Involvement'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Sex Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The concept describing the biological traits that distinguish the males and females of a species.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Sex Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Sex' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Sex Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000255' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Sex Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000255' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Sex Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Sex Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The concept describing the biological traits that distinguish the males and females of a species.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Sex Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Sex' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Sex Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000255' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Sex Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000255' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Sex Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'StateAbbreviationCode'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'StateAbbreviationCode'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'State Abbreviation' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'StateAbbreviationCode'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000267' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'StateAbbreviationCode'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000267' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'StateAbbreviationCode'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'StateAbbreviationDescription'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'StateAbbreviationDescription'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'State Abbreviation' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'StateAbbreviationDescription'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000267' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'StateAbbreviationDescription'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000267' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'StateAbbreviationDescription'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Active Military Status Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Indicates whether a person is an active member of the active duty forces, national guard, or reserve forces.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Active Military Status Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Active Military Status Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Active Military Status Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001577' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Active Military Status Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001577' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Active Military Status Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Active Military Status Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Indicates whether a person is an active member of the active duty forces, national guard, or reserve forces.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Active Military Status Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Active Military Status Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Active Military Status Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001577' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Active Military Status Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001577' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Active Military Status Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Intake Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An individual''s entering skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment at program intake.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Intake Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Adult Educational Functioning Level at Intake' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Intake Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000779' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Intake Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000779' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Intake Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Intake Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An individual''s entering skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment at program intake.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Intake Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Adult Educational Functioning Level at Intake' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Intake Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000779' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Intake Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000779' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Intake Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Posttest Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An individual''s skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment after a set time period or number of instructional hours.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Posttest Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Adult Educational Functioning Level at Posttest' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Posttest Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000780' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Posttest Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000780' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Posttest Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Posttest Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An individual''s skill level, as defined by the National Reporting System for Adult Education and determined by an approved standardized assessment after a set time period or number of instructional hours.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Posttest Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Adult Educational Functioning Level at Posttest' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Posttest Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000780' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Posttest Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000780' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Adult Educational Functioning Level at Posttest Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Charter School Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The category of charter school.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Charter School Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Charter School Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Charter School Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000710' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Charter School Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000710' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Charter School Type Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Charter School Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The category of charter school.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Charter School Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Charter School Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Charter School Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000710' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Charter School Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000710' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Charter School Type Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Degree or Certificate Seeking Student Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Person is enrolled in courses for credit and recognized by the institution as seeking a degree, certificate, or other formal award. High school students also enrolled in postsecondary courses for credit are not considered degree/certificate-seeking.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Degree or Certificate Seeking Student Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Degree or Certificate Seeking Student' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Degree or Certificate Seeking Student Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000078' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Degree or Certificate Seeking Student Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000078' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Degree or Certificate Seeking Student Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Degree or Certificate Seeking Student Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Person is enrolled in courses for credit and recognized by the institution as seeking a degree, certificate, or other formal award. High school students also enrolled in postsecondary courses for credit are not considered degree/certificate-seeking.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Degree or Certificate Seeking Student Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Degree or Certificate Seeking Student' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Degree or Certificate Seeking Student Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000078' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Degree or Certificate Seeking Student Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000078' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Degree or Certificate Seeking Student Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication of whether a person is classified as disabled under the American''s with Disability Act (ADA).' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Disability Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000577' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000577' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication of whether a person is classified as disabled under the American''s with Disability Act (ADA).' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Disability Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000577' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000577' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disability Status Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An individual who has been terminated or laid off, or who has received a notice of termination or layoff from employment, or an individual who was self-employed but is unemployed as a result of general economic conditions in the community in which the individual resides or because of natural disasters.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Dislocated Worker Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000776' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000776' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An individual who has been terminated or laid off, or who has received a notice of termination or layoff from employment, or an individual who was self-employed but is unemployed as a result of general economic conditions in the community in which the individual resides or because of natural disasters.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Dislocated Worker Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000776' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000776' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Dislocated Worker Status Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Economic Disadvantage Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication that the student met the State criteria for classification as having an economic disadvantage.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Economic Disadvantage Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Economic Disadvantage Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Economic Disadvantage Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000086' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Economic Disadvantage Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000086' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Economic Disadvantage Status Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Economic Disadvantage Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication that the student met the State criteria for classification as having an economic disadvantage.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Economic Disadvantage Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Economic Disadvantage Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Economic Disadvantage Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000086' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Economic Disadvantage Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000086' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Economic Disadvantage Status Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Eligibility Status For School Food Service Programs Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication of a student''s level of eligibility to participate in the National School Lunch Program for breakfast, lunch, snack, supper, and milk programs.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Eligibility Status For School Food Service Programs Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Eligibility Status for School Food Service Programs' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Eligibility Status For School Food Service Programs Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000092' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Eligibility Status For School Food Service Programs Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000092' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Eligibility Status For School Food Service Programs Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Eligibility Status For School Food Service Programs Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication of a student''s level of eligibility to participate in the National School Lunch Program for breakfast, lunch, snack, supper, and milk programs.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Eligibility Status For School Food Service Programs Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Eligibility Status for School Food Service Programs' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Eligibility Status For School Food Service Programs Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000092' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Eligibility Status For School Food Service Programs Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000092' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Eligibility Status For School Food Service Programs Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'In coordination with the state''s definition based on Section 8101(20) of the ESEA, as amended by the ESSA, the term ''English learner'', when used with respect to an individual, means an individual: (A) who is aged 3 through 21; (B) who is enrolled or preparing to enroll in an elementary school or a secondary school;
(C)(i) who was not born in the United States or whose native languages are languages other than English; (ii) (I) who is a Native American or Alaska Native, or a native resident of the outlying areas; and (II) who comes from an environment where a language other than English has had a significant impact on the individual''s level of English language proficiency; or
(iii) who is migratory, whose native language is a language other than English, and who come from an environment where a language other than English is dominant; and (D) whose difficulties in speaking, reading, writing, or understanding the English language may be sufficient to deny the individual (i) the ability to meet the challenging State academic standards; (ii) the ability to successfully achieve in classrooms where the language of instruction is English; or
(iii) the opportunity to participate fully in society.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'English Learner Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000180' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000180' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner Status Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'In coordination with the state''s definition based on Section 8101(20) of the ESEA, as amended by the ESSA, the term ''English learner'', when used with respect to an individual, means an individual: (A) who is aged 3 through 21; (B) who is enrolled or preparing to enroll in an elementary school or a secondary school;
(C)(i) who was not born in the United States or whose native languages are languages other than English; (ii) (I) who is a Native American or Alaska Native, or a native resident of the outlying areas; and (II) who comes from an environment where a language other than English has had a significant impact on the individual''s level of English language proficiency; or
(iii) who is migratory, whose native language is a language other than English, and who come from an environment where a language other than English is dominant; and (D) whose difficulties in speaking, reading, writing, or understanding the English language may be sufficient to deny the individual (i) the ability to meet the challenging State academic standards; (ii) the ability to successfully achieve in classrooms where the language of instruction is English; or
(iii) the opportunity to participate fully in society.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'English Learner Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000180' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000180' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'English Learner Status Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Enrollment in Postsecondary Award Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indicator of the award level in which the person is currently enrolled.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Enrollment in Postsecondary Award Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Enrollment in Postsecondary Award Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Enrollment in Postsecondary Award Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000361' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Enrollment in Postsecondary Award Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000361' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Enrollment in Postsecondary Award Type Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Enrollment in Postsecondary Award Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indicator of the award level in which the person is currently enrolled.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Enrollment in Postsecondary Award Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Enrollment in Postsecondary Award Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Enrollment in Postsecondary Award Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000361' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Enrollment in Postsecondary Award Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000361' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Enrollment in Postsecondary Award Type Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Entry Grade Level Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Entry Grade Level Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Entry Grade Level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Entry Grade Level Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000100' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Entry Grade Level Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000100' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Entry Grade Level Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Entry Grade Level Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Entry Grade Level Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Entry Grade Level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Entry Grade Level Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000100' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Entry Grade Level Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000100' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Entry Grade Level Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First Generation College Student Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The term First Generation College Student means an individual both of whose parents did not complete a baccalaureate degree or in the case of any individual who regularly resided with and received support from only one parent, an individual whose only such parent did not complete a baccalaureate degree.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First Generation College Student Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'First Generation College Student' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First Generation College Student Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001947' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First Generation College Student Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001947' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First Generation College Student Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First Generation College Student Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The term First Generation College Student means an individual both of whose parents did not complete a baccalaureate degree or in the case of any individual who regularly resided with and received support from only one parent, an individual whose only such parent did not complete a baccalaureate degree.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First Generation College Student Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'First Generation College Student' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First Generation College Student Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001947' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First Generation College Student Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001947' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'First Generation College Student Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Diploma Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The type of diploma/credential that is awarded to a person in recognition of his/her completion of the curricular requirements.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Diploma Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'High School Diploma Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Diploma Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000138' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Diploma Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000138' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Diploma Type Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Diploma Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The type of diploma/credential that is awarded to a person in recognition of his/her completion of the curricular requirements.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Diploma Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'High School Diploma Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Diploma Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000138' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Diploma Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000138' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Diploma Type Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Homelessness Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Children and youth who lack a fixed, regular, and adequate nighttime residence. Homeless children and youth include: 1) children and youth who are sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason; are living in motels, hotels, trailer parks, or camping grounds due to the lack of alternative adequate accommodations; are living in emergency or transitional shelters; are abandoned in hospitals; or are awaiting foster care placement; 2) children and youth who have a primary nighttime residence that is a public or private place not designed for or originally used as a regular sleeping accommodation for human beings; or 3) children and youths who are living in cars, parks, public spaces, abandoned buildings, substandard housing, bus or train stations, or similar settings. 4) migratory children who qualify as homeless because the children are living in circumstances described in the above. (See Section 103 of the McKinney Act for a more detailed description of this data element).' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Homelessness Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Homelessness Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Homelessness Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000149' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Homelessness Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000149' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Homelessness Status Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Homelessness Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Children and youth who lack a fixed, regular, and adequate nighttime residence. Homeless children and youth include: 1) children and youth who are sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason; are living in motels, hotels, trailer parks, or camping grounds due to the lack of alternative adequate accommodations; are living in emergency or transitional shelters; are abandoned in hospitals; or are awaiting foster care placement; 2) children and youth who have a primary nighttime residence that is a public or private place not designed for or originally used as a regular sleeping accommodation for human beings; or 3) children and youths who are living in cars, parks, public spaces, abandoned buildings, substandard housing, bus or train stations, or similar settings. 4) migratory children who qualify as homeless because the children are living in circumstances described in the above. (See Section 103 of the McKinney Act for a more detailed description of this data element).' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Homelessness Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Homelessness Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Homelessness Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000149' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Homelessness Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000149' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Homelessness Status Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Idea Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person having intellectual disability; hearing impairment, including deafness; speech or language impairment; visual impairment, including blindness; serious emotional disturbance (hereafter referred to as emotional disturbance); orthopedic impairment; autism; traumatic brain injury; developmental delay; other health impairment; specific learning disability; deaf-blindness; or multiple disabilities and who, by reason thereof, receive special education and related services under the Individuals with Disabilities Education Act (IDEA) according to an Individualized Education Program (IEP), Individual Family Service Plan (IFSP), or service plan.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Idea Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'IDEA Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Idea Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000151' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Idea Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000151' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Idea Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Idea Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person having intellectual disability; hearing impairment, including deafness; speech or language impairment; visual impairment, including blindness; serious emotional disturbance (hereafter referred to as emotional disturbance); orthopedic impairment; autism; traumatic brain injury; developmental delay; other health impairment; specific learning disability; deaf-blindness; or multiple disabilities and who, by reason thereof, receive special education and related services under the Individuals with Disabilities Education Act (IDEA) according to an Individualized Education Program (IEP), Individual Family Service Plan (IFSP), or service plan.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Idea Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'IDEA Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Idea Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000151' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Idea Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000151' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Idea Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Level of Institution Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A classification of whether a postsecondary institution''s highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Level of Institution Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Level of Institution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Level of Institution Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000178' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Level of Institution Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000178' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Level of Institution Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Level of Institution Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A classification of whether a postsecondary institution''s highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Level of Institution Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Level of Institution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Level of Institution Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000178' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Level of Institution Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000178' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Level of Institution Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Low-Income Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person who receives or is a member of a family who receives a total family income in the 6 months prior to enrollment of 70 percent of the income standard for a family of that size or that does not exceed the poverty line, or the person is receiving or is a member of a family who is receiving cash assistance payments from Federal, State, or local agencies or food stamps, or the person can be designated as homeless under the McKinney Act.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Low-Income Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Low-income Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Low-Income Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000775' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Low-Income Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000775' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Low-Income Status Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Low-Income Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person who receives or is a member of a family who receives a total family income in the 6 months prior to enrollment of 70 percent of the income standard for a family of that size or that does not exceed the poverty line, or the person is receiving or is a member of a family who is receiving cash assistance payments from Federal, State, or local agencies or food stamps, or the person can be designated as homeless under the McKinney Act.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Low-Income Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Low-income Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Low-Income Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000775' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Low-Income Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000775' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Low-Income Status Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Migrant Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Persons who are, or whose parents or spouses are, migratory agricultural workers, including migratory dairy workers, or migratory fishers, and who, in the preceding 36 months, in order to obtain, or accompany such parents or spouses, in order to obtain, temporary or seasonal employment in agricultural or fishing work (A) have moved from one LEA to another; (B) in a state that comprises a single LEA, have moved from one administrative area to another within such LEA; or (C) reside in an LEA of more than 15,000 square miles, and migrate a distance of 20 miles or more to a temporary residence to engage in a fishing activity.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Migrant Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Migrant Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Migrant Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000189' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Migrant Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000189' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Migrant Status Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Migrant Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Persons who are, or whose parents or spouses are, migratory agricultural workers, including migratory dairy workers, or migratory fishers, and who, in the preceding 36 months, in order to obtain, or accompany such parents or spouses, in order to obtain, temporary or seasonal employment in agricultural or fishing work (A) have moved from one LEA to another; (B) in a state that comprises a single LEA, have moved from one administrative area to another within such LEA; or (C) reside in an LEA of more than 15,000 square miles, and migrate a distance of 20 miles or more to a temporary residence to engage in a fishing activity.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Migrant Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Migrant Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Migrant Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000189' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Migrant Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000189' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Migrant Status Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Connected Student Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication that the student’s parent or guardian is on Active Duty, in the National Guard, or in the Reserve components of the United States military services' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Connected Student Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Military Connected Student Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Connected Student Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001576' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Connected Student Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001576' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Connected Student Indicator Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Connected Student Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication that the student’s parent or guardian is on Active Duty, in the National Guard, or in the Reserve components of the United States military services' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Connected Student Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Military Connected Student Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Connected Student Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001576' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Connected Student Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001576' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Connected Student Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Veteran Status Indicator Code '

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication that a person is a veteran who served on Active Duty, in the National Guard, or in the Reserve components of the United States military services.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Veteran Status Indicator Code '

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Military Veteran Status Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Veteran Status Indicator Code '

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001578' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Veteran Status Indicator Code '

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001578' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Veteran Status Indicator Code '

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Veteran Status Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication that a person is a veteran who served on Active Duty, in the National Guard, or in the Reserve components of the United States military services.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Veteran Status Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Military Veteran Status Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Veteran Status Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001578' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Veteran Status Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001578' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Military Veteran Status Indicator Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication of the student''s enrollment status for a particular term as defined by the institution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Postsecondary Enrollment Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000096' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000096' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Status Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication of the student''s enrollment status for a particular term as defined by the institution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Postsecondary Enrollment Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000096' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000096' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Status Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indicator of the enrollment type associated with the enrollment award level of a person at the beginning of a term.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Postsecondary Enrollment Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000095' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000095' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Type Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indicator of the enrollment type associated with the enrollment award level of a person at the beginning of a term.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Postsecondary Enrollment Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000095' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000095' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Enrollment Type Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Primary Disability Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The major or overriding disability condition that best describes a person''s impairment.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Primary Disability Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Primary Disability Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Primary Disability Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000218' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Primary Disability Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000218' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Primary Disability Type Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Primary Disability Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The major or overriding disability condition that best describes a person''s impairment.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Primary Disability Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Primary Disability Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Primary Disability Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000218' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Primary Disability Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000218' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Primary Disability Type Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Rural Residency Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person who resides in a place with a population of less than 2,500 that is not near any metropolitan area with a population greater than 50,000, or in a city with adjacent areas of high density.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Rural Residency Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Rural Residency Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Rural Residency Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000778' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Rural Residency Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000778' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Rural Residency Status Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Rural Residency Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person who resides in a place with a population of less than 2,500 that is not near any metropolitan area with a population greater than 50,000, or in a city with adjacent areas of high density.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Rural Residency Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Rural Residency Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Rural Residency Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000778' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Rural Residency Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000778' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Rural Residency Status Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'School Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The type of education institution as classified by its primary focus. ' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'School Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'School Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'School Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000242' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'School Type Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000242' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'School Type Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'School Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The type of education institution as classified by its primary focus. ' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'School Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'School Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'School Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000242' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'School Type Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000242' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'School Type Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Section 504 Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Individuals with disabilities who are being provided with related aids and services under Section 504 of the Rehabilitation Act of 1973, as amended.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Section 504 Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Section 504 Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Section 504 Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000249' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Section 504 Status Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000249' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Section 504 Status Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Section 504 Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Individuals with disabilities who are being provided with related aids and services under Section 504 of the Rehabilitation Act of 1973, as amended.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Section 504 Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Section 504 Status' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Section 504 Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000249' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Section 504 Status Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000249' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Section 504 Status Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Standard Occupational Classification Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A Bureau of Labor Statistics coding system for classifying occupations by work performed and, in some cases, on the skills, education and training needed to perform the work at a competent level.  See https://www.bls.gov/soc/2018/major_groups.htm.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Standard Occupational Classification Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Standard Occupational Classification' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Standard Occupational Classification Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000730' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Standard Occupational Classification Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000730' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Standard Occupational Classification Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Standard Occupational Classification Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A Bureau of Labor Statistics coding system for classifying occupations by work performed and, in some cases, on the skills, education and training needed to perform the work at a competent level.  See https://www.bls.gov/soc/2018/major_groups.htm.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Standard Occupational Classification Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Standard Occupational Classification' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Standard Occupational Classification Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000730' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Standard Occupational Classification Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000730' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Standard Occupational Classification Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'American Indian or Alaska Native'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person having origins in any of the original peoples of North and South America (including Central America), and who maintains cultural identification through tribal affiliation or community attachment.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'American Indian or Alaska Native'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'American Indian or Alaska Native' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'American Indian or Alaska Native'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000016' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'American Indian or Alaska Native'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000016' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'American Indian or Alaska Native'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Asian'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person having origins in any of the original peoples of the Far East, Southeast Asia, or the Indian Subcontinent. This area includes, for example, Cambodia, China, India, Japan, Korea, Malaysia, Pakistan, the Philippine Islands, Thailand, and Vietnam.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Asian'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Asian' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Asian'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000020' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Asian'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000020' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Asian'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Black or African American'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person having origins in any of the black racial groups of Africa.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Black or African American'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Black or African American' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Black or African American'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000034' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Black or African American'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000034' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Black or African American'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Cohort Graduation Year'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The year the cohort is expected to graduate.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Cohort Graduation Year'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Cohort Graduation Year' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Cohort Graduation Year'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000584' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Cohort Graduation Year'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000584' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Cohort Graduation Year'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Cohort Year'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The school year in which the student entered the baseline group used for computing completion rates (e.g., high school, program).' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Cohort Year'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Cohort Year' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Cohort Year'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000046' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Cohort Year'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000046' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Cohort Year'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Diploma or Credential Award Date'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The month and year on which the diploma/credential is awarded to a student in recognition of his/her completion of the curricular requirements.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Diploma or Credential Award Date'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Diploma or Credential Award Date' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Diploma or Credential Award Date'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000081' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Diploma or Credential Award Date'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000081' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Diploma or Credential Award Date'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'White'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person having origins in any of the original peoples of Europe, Middle East, or North Africa.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'White'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'White' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'White'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000301' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'White'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000301' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'White'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Hispanic Or Latino'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'An indication that the person traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central and South America, and other Spanish cultures, regardless of race.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Hispanic Or Latino'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Hispanic or Latino Ethnicity' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Hispanic Or Latino'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000144' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Hispanic Or Latino'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000144' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Hispanic Or Latino'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Native Hawaiian or Pacific Islander'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A person having origins in any of the original peoples of Hawaii, Guam, Samoa, or other Pacific Islands.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Native Hawaiian or Pacific Islander'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Native Hawaiian or Other Pacific Islander' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Native Hawaiian or Pacific Islander'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000192' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Native Hawaiian or Pacific Islander'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000192' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Native Hawaiian or Pacific Islander'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, CEDS_PrefixConcatenatedOptionElementURL, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A unique number or alphanumeric code assigned to an institution by a school, school system, a state, or other agency or entity.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'School Identifier' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001069' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001069' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'OrganizationType' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'PostsecondaryInstitution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'School Identification System' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'001073' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'SEA' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001073' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, and CEDS_PrefixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Highest Level of Education Completed' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000141' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000141' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'Role' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001946' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'ParentGuardian' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001946' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, and CEDS_PrefixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The extent of formal instruction a person has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Highest Level of Education Completed' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000141' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000141' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'Role' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001946' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'ParentGuardian' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001946' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Parent Guardian Highest Level Of Education Completed Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The code for the specific language or dialect that a person uses to communicate.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'ISO 639-3 Language Code' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001637' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001637' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Language Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'000316' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'Home' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/000316' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The code for the specific language or dialect that a person uses to communicate.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'ISO 639-3 Language Code' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001637' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001637' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Language Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'000316' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'Home' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/000316' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'ISO 639-3 Language Code Home Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, and CEDS_PrefixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The time a person is enrolled, employed, involved, or participates in the organization, divided by the time the organization defines as full-time for that role.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Full Time Equivalency' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001921' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001921' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'Organization Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'PostsecondaryInstitution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, and CEDS_PrefixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Early Learning Organization Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The time a person is enrolled, employed, involved, or participates in the organization, divided by the time the organization defines as full-time for that role.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Early Learning Organization Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Full Time Equivalency' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Early Learning Organization Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001921' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Early Learning Organization Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001921' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Early Learning Organization Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'Organization Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Early Learning Organization Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Early Learning Organization Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'EarlyLearningOrganization' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Early Learning Organization Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Early Learning Organization Full Time Equivalency'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, and CEDS_PrefixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The type of education institution as classified by its funding source.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Administrative Funding Control' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000012' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000012' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'Organization Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'PostsecondaryInstitution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, and CEDS_PrefixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The type of education institution as classified by its funding source.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Administrative Funding Control' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000012' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000012' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'Organization Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'PostsecondaryInstitution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Postsecondary Institution Administrative Funding Control Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Classification of Instructional Program Code' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000043' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000043' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Postsecondary Program Level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'001616' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'Major' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001616' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Classification of Instructional Program Code' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000043' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000043' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Postsecondary Program Level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'001616' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'Major' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001616' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major1 Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Classification of Instructional Program Code' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000043' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000043' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Postsecondary Program Level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'001616' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'Major' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001616' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A six-digit code in the form xx.xxxx that identifies instructional program specialties within educational institutions.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Classification of Instructional Program Code' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000043' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000043' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Postsecondary Program Level' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'001616' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'Major' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001616' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Classification of Instructional Program Code Major2 Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Locale Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A general geographic classification that describes the type of area where a school is located.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Locale Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Locale' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Locale Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'002130' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Locale Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/002130' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Locale Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Locale Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A general geographic classification that describes the type of area where a school is located.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Locale Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Locale' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Locale Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'002130' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Locale Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/002130' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Locale Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The system outlining instructional or non-instructional activities and procedures designed to accomplish a predetermined educational objective or set of objectives or to provide support services to a person and/or the community.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Program Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000225' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000225' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Program Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'000225' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'75000' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Code'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/000225' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Code'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The system outlining instructional or non-instructional activities and procedures designed to accomplish a predetermined educational objective or set of objectives or to provide support services to a person and/or the community.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Program Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000225' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000225' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Program Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'000225' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'75000' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Description'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/000225' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Program Type Foster Care Description'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disciplinary Action Taken Placed In Juvenile Detention Center'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Identifies the consequences of an incident for the student(s) involved in an incident as perpetrator(s).' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disciplinary Action Taken Placed In Juvenile Detention Center'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Disciplinary Action Taken' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disciplinary Action Taken Placed In Juvenile Detention Center'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000488' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disciplinary Action Taken Placed In Juvenile Detention Center'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000488' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disciplinary Action Taken Placed In Juvenile Detention Center'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Disciplinary Action Taken' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disciplinary Action Taken Placed In Juvenile Detention Center'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'000488' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disciplinary Action Taken Placed In Juvenile Detention Center'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'75000' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disciplinary Action Taken Placed In Juvenile Detention Center'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/000488' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Disciplinary Action Taken Placed In Juvenile Detention Center'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, and CEDS_PrefixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The name of a non-person entity such as an organization, institution, agency or business.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Organization Name' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000204' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000204' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'Organization Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'LEA' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, and CEDS_PrefixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The name of a non-person entity such as an organization, institution, agency or business.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Organization Name' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000204' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000204' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'Organization Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'K12School' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, and CEDS_PrefixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'The name of a non-person entity such as an organization, institution, agency or business.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Organization Name' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000204' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000204' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'Organization Type' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'PostsecondaryInstitution' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'PostsecondaryInstitutionOrganizationName'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A unique number or alphanumeric code assigned to a local education agency by a school system, a state, or other agency or entity.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Local Education Agency Identifier' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001068' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001068' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Local Education Agency Identification System' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'001072' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'SEA' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001072' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL  extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A unique number or alphanumeric code assigned to a local education agency by a school system, a state, or other agency or entity.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Local Education Agency Identifier' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001068' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001068' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'Local Education Agency Identification System' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'001072' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'NCES' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001072' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'LeaIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, CEDS_PrefixConcatenatedOptionElementURL, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A unique number or alphanumerion by a school, school system, a state, or other agency or entity.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'School Identifier' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001069' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001069' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'OrganizationType' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'K12School' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'School Identification System' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'001073' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'SEA' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001073' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierSea'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, CEDS_Def_Desc, CEDS_PrefixConcatenatedOptionElement, CEDS_PrefixConcatenatedOptionElementGlobalId, CEDS_PrefixConcatenatedOptionCode, CEDS_PrefixConcatenatedOptionElementURL, CEDS_SuffixConcatenatedOptionElement, CEDS_SuffixConcatenatedOptionElementGlobalId, CEDS_SuffixConcatenatedOptionCode, and CEDS_SuffixConcatenatedOptionElementURL extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'A unique number or alphanumerion by a school, school system, a state, or other agency or entity.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'School Identifier' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'001069' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/001069' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElement', @value=N'OrganizationType' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementGlobalId', @value=N'001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionCode', @value=N'K12School' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_PrefixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001156' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElement', @value=N'School Identification System' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementGlobalId', @value=N'001073' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionCode', @value=N'NCES' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'CEDS_SuffixConcatenatedOptionElementURL', @value=N'https://ceds.ed.gov/element/001073' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'K12SchoolSchoolIdentifierNces'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the CEDS_GlobalId, CEDS_Element, CEDS_URL, and CEDS_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'IPEDSIdentifier'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Def_Desc', @value=N'Unique identification number assigned to postsecondary institutions surveyed through the Integrated Postsecondary Education Data System (IPEDS). Also referred to as UNITID or IPEDS ID.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'IPEDSIdentifier'

EXEC sys.sp_addextendedproperty @name=N'CEDS_Element', @value=N'Institution IPEDS UnitID' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'IPEDSIdentifier'

EXEC sys.sp_addextendedproperty @name=N'CEDS_GlobalId', @value=N'000166' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'IPEDSIdentifier'

EXEC sys.sp_addextendedproperty @name=N'CEDS_URL', @value=N'https://ceds.ed.gov/element/000166' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'IPEDSIdentifier'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A student who graduated from high school with a regular diploma.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'High School Graduate' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/indicators/high-school-graduation' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A student who graduated from high school with a regular diploma within four years of entering high school, regardless of whether they transferred schools.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Four Year'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'High School Graduate Four Year' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Four Year'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Four Year'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/indicators/high-school-graduation' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Four Year'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Four Year'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A student who graduated from high school with a regular diploma within five years of entering high school, regardless of whether they transferred schools.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Five Year'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'High School Graduate Five Year' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Five Year'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Five Year'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/indicators/high-school-graduation' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Five Year'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Five Year'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A student who graduated from high school with a regular diploma within six years of entering high school, regardless of whether they transferred schools.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Six Year'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'High School Graduate Six Year' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Six Year'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Six Year'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/indicators/high-school-graduation' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Six Year'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Six Year'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A high school graduate who enrolls in a postsecondary institution by October 31 following their high school graduation.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Postsecondary Enrollment'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'High School Graduate Postsecondary Enrollment' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Postsecondary Enrollment'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Postsecondary Enrollment'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/indicators/postsecondary-enrollment-directly-after-high-school-graduation' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Postsecondary Enrollment'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduate Postsecondary Enrollment'

EXEC sys.sp_addextendedproperty @name=N'EW_Def_Desc', @value=N'A grade 12 student who submits a well-balanced portfolio of at least three college applications.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Grade 12 Three College Applications'

EXEC sys.sp_addextendedproperty @name=N'EW_Element', @value=N'Grade 12 Three College Applications' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Grade 12 Three College Applications'

EXEC sys.sp_addextendedproperty @name=N'EW_ElementType', @value=N'Indicator' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Grade 12 Three College Applications'

EXEC sys.sp_addextendedproperty @name=N'EW_URL', @value=N'https://educationtoworkforce.org/indicators/college-applications' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Grade 12 Three College Applications'

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'See the EW_Element, EW_ElementType, EW_URL, and EW_Def_Desc extended properties.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Grade 12 Three College Applications'

EXEC sys.sp_addextendedproperty @name=N'Column_Def_Desc', @value=N'The age of the person on the CountDate.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'Age'

EXEC sys.sp_addextendedproperty @name=N'Column_Def_Desc', @value=N'The school year in which the student graduated from high school.' , @level0type=N'SCHEMA',@level0name=N'Exchange', @level1type=N'TABLE',@level1name=N'FactEwFrameworkMetrics', @level2type=N'COLUMN',@level2name=N'High School Graduation School Year'



END






