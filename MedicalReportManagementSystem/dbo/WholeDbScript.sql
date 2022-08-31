CREATE TABLE [dbo].[City](
	[City_ID] [int] IDENTITY(1,1) NOT NULL,
	[City_Name] [varchar](50) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED
(
	[City_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Gender_ID] [int] IDENTITY(1,1) NOT NULL,
	[Gender_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED
(
	[Gender_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[Hospital_ID] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Name] [varchar](100) NULL,
	[City_ID] [int] NULL,
	[Province_ID] [int] NULL,
	[Contact] [varchar](50) NULL,
 CONSTRAINT [PK_Hospital] PRIMARY KEY CLUSTERED
(
	[Hospital_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital_Physician]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital_Physician](
	[Hospital_ID] [int] NOT NULL,
	[Physician_ID] [int] NOT NULL,
	[Employment_Start_Date] [datetime] NULL,
 CONSTRAINT [PK_Hospital_Physician_Mapping] PRIMARY KEY CLUSTERED
(
	[Hospital_ID] ASC,
	[Physician_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital_Procedure]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital_Procedure](
	[Hospital_ID] [int] NOT NULL,
	[Procedure_ID] [int] NOT NULL,
 CONSTRAINT [PK_Hospital_Procedure_Mapping] PRIMARY KEY CLUSTERED
(
	[Hospital_ID] ASC,
	[Procedure_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurance_Policy]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurance_Policy](
	[Policy_ID] [int] IDENTITY(1,1) NOT NULL,
	[Policy_Reference_Number] [varchar](100) NULL,
	[Patient_ID] [int] NULL,
	[Insurer_ID] [int] NULL,
	[Policy_Start_Date] [datetime] NULL,
	[Policy_End_Date] [datetime] NULL,
	[Comments] [varchar](500) NULL,
 CONSTRAINT [PK_Insurance_Policy] PRIMARY KEY CLUSTERED
(
	[Policy_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurer]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurer](
	[Insurer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Insurer_Name] [varchar](100) NULL,
	[City_ID] [int] NULL,
	[Province_ID] [int] NULL,
	[Contact] [varchar](100) NULL,
 CONSTRAINT [PK_Insurer] PRIMARY KEY CLUSTERED
(
	[Insurer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medical_Procedure]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medical_Procedure](
	[Procedure_ID] [int] IDENTITY(1,1) NOT NULL,
	[Procedure_Name] [varchar](100) NULL,
	[Procedure_Cost] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Procedure] PRIMARY KEY CLUSTERED
(
	[Procedure_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medical_Report]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medical_Report](
	[Report_ID] [int] IDENTITY(1,1) NOT NULL,
	[Patient_ID] [int] NOT NULL,
	[Report_Date] [datetime] NULL,
	[Physician_ID] [int] NULL,
	[Hospital_ID] [int] NULL,
	[IsValid] [bit] NULL,
	[MedicalCondition_ID] [int] NULL,
 CONSTRAINT [PK_Medical_Report] PRIMARY KEY CLUSTERED
(
	[Report_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalCondition]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalCondition](
	[MedicalCondition_ID] [int] IDENTITY(1,1) NOT NULL,
	[Condition_Name] [varchar](50) NULL,
 CONSTRAINT [PK_MedicalCondition] PRIMARY KEY CLUSTERED
(
	[MedicalCondition_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[Medicine_ID] [int] IDENTITY(1,1) NOT NULL,
	[Medicine_Name] [varchar](100) NULL,
	[Composition] [varchar](500) NULL,
	[Potency] [varchar](10) NULL,
	[Side_Effects] [varchar](500) NULL,
	[Comments] [varchar](500) NULL,
	[MedicalCondition_ID] [int] NULL,
	[Med_Price] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Medicine] PRIMARY KEY CLUSTERED
(
	[Medicine_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[Patient_ID] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](100) NOT NULL,
	[Last_Name] [varchar](100) NULL,
	[Date_of_birth] [datetime] NULL,
	[Gender] [int] NULL,
	[City_ID] [int] NULL,
	[Province_ID] [int] NULL,
	[Primary_Contact] [varchar](50) NULL,
	[Secondary_Contact] [varchar](50) NULL,
 CONSTRAINT [PK_Patient1] PRIMARY KEY CLUSTERED
(
	[Patient_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Physician]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Physician](
	[Physician_ID] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](50) NULL,
	[Last_Name] [varchar](50) NULL,
	[City_ID] [int] NULL,
	[Province_ID] [int] NULL,
	[Contact] [varchar](50) NULL,
 CONSTRAINT [PK_Physician] PRIMARY KEY CLUSTERED
(
	[Physician_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Physician_Procedure]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Physician_Procedure](
	[Physician_ID] [int] NOT NULL,
	[Procedure_ID] [int] NOT NULL,
 CONSTRAINT [PK_Physician_Procedure_Mapping] PRIMARY KEY CLUSTERED
(
	[Physician_ID] ASC,
	[Procedure_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Physician_Specilization]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Physician_Specilization](
	[Physician_ID] [int] NOT NULL,
	[Specialization_ID] [int] NOT NULL,
	[Proficiency] [varchar](50) NULL,
 CONSTRAINT [PK_Physician_Specialization] PRIMARY KEY CLUSTERED
(
	[Physician_ID] ASC,
	[Specialization_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prescription]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription](
	[Prescription_ID] [int] IDENTITY(1,1) NOT NULL,
	[Report_ID] [int] NULL,
	[Medicine_ID] [int] NULL,
	[Dosage] [decimal](10, 4) NULL,
	[Prescription_Start_Date] [datetime] NULL,
	[Prescription_End_Date] [datetime] NULL,
	[Comments] [varchar](100) NULL,
 CONSTRAINT [PK_Prescription] PRIMARY KEY CLUSTERED
(
	[Prescription_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[Province_ID] [int] IDENTITY(1,1) NOT NULL,
	[Province_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED
(
	[Province_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report_Procedure]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report_Procedure](
	[Report_Procedure_ID] [int] IDENTITY(1,1) NOT NULL,
	[Procedure_ID] [int] NULL,
	[Report_ID] [int] NULL,
	[Procedure_Date] [datetime] NULL,
 CONSTRAINT [PK_Report_Procedure] PRIMARY KEY CLUSTERED
(
	[Report_Procedure_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialization]    Script Date: 31-08-2022 00:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialization](
	[Specialization_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Department] [varchar](100) NULL,
 CONSTRAINT [PK_Specialization] PRIMARY KEY CLUSTERED
(
	[Specialization_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON
GO
INSERT [dbo].[City] ([City_ID], [City_Name]) VALUES (1, N'Montreal')
GO
INSERT [dbo].[City] ([City_ID], [City_Name]) VALUES (2, N'Quebec City')
GO
INSERT [dbo].[City] ([City_ID], [City_Name]) VALUES (3, N'Ottawa')
GO
INSERT [dbo].[City] ([City_ID], [City_Name]) VALUES (4, N'Toronto')
GO
INSERT [dbo].[City] ([City_ID], [City_Name]) VALUES (5, N'Vancouver')
GO
INSERT [dbo].[City] ([City_ID], [City_Name]) VALUES (6, N'Calgary')
GO
INSERT [dbo].[City] ([City_ID], [City_Name]) VALUES (7, N'London')
GO
INSERT [dbo].[City] ([City_ID], [City_Name]) VALUES (8, N'Hamilton')
GO
INSERT [dbo].[City] ([City_ID], [City_Name]) VALUES (9, N'Edmonton')
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON
GO
INSERT [dbo].[Gender] ([Gender_ID], [Gender_Name]) VALUES (1, N'Male')
GO
INSERT [dbo].[Gender] ([Gender_ID], [Gender_Name]) VALUES (2, N'Female')
GO
INSERT [dbo].[Gender] ([Gender_ID], [Gender_Name]) VALUES (3, N'Gay/Non-Binary')
GO
INSERT [dbo].[Gender] ([Gender_ID], [Gender_Name]) VALUES (4, N'Lesbian/Non-Binary')
GO
INSERT [dbo].[Gender] ([Gender_ID], [Gender_Name]) VALUES (5, N'Bisexual')
GO
INSERT [dbo].[Gender] ([Gender_ID], [Gender_Name]) VALUES (6, N'Tran-sexual')
GO
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Hospital] ON
GO
INSERT [dbo].[Hospital] ([Hospital_ID], [Hospital_Name], [City_ID], [Province_ID], [Contact]) VALUES (1, N'Montreal General Hospital', 1, 1, N'5149341934')
GO
INSERT [dbo].[Hospital] ([Hospital_ID], [Hospital_Name], [City_ID], [Province_ID], [Contact]) VALUES (2, N'Jean Talon Hospital', 1, 1, N'5144956767')
GO
INSERT [dbo].[Hospital] ([Hospital_ID], [Hospital_Name], [City_ID], [Province_ID], [Contact]) VALUES (3, N'Royal Victoria Hospital', 1, 1, N'5149341934')
GO
INSERT [dbo].[Hospital] ([Hospital_ID], [Hospital_Name], [City_ID], [Province_ID], [Contact]) VALUES (4, N'Toronto General Hospital', 4, 2, N'4163403131')
GO
INSERT [dbo].[Hospital] ([Hospital_ID], [Hospital_Name], [City_ID], [Province_ID], [Contact]) VALUES (5, N'Vancouver General Hospital', 5, 6, N'6048754111')
GO
SET IDENTITY_INSERT [dbo].[Hospital] OFF
GO
INSERT [dbo].[Hospital_Physician] ([Hospital_ID], [Physician_ID], [Employment_Start_Date]) VALUES (1, 1, CAST(N'2022-01-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hospital_Physician] ([Hospital_ID], [Physician_ID], [Employment_Start_Date]) VALUES (2, 3, CAST(N'2019-07-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hospital_Physician] ([Hospital_ID], [Physician_ID], [Employment_Start_Date]) VALUES (3, 5, CAST(N'2017-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hospital_Physician] ([Hospital_ID], [Physician_ID], [Employment_Start_Date]) VALUES (4, 4, CAST(N'2022-03-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hospital_Physician] ([Hospital_ID], [Physician_ID], [Employment_Start_Date]) VALUES (5, 2, CAST(N'2008-09-24T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (1, 1)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (1, 2)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (1, 3)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (1, 4)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (1, 5)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (2, 1)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (2, 2)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (2, 3)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (2, 4)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (2, 5)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (3, 1)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (3, 2)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (3, 3)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (3, 4)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (3, 5)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (4, 1)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (4, 2)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (4, 3)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (4, 4)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (4, 5)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (5, 1)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (5, 2)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (5, 3)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (5, 4)
GO
INSERT [dbo].[Hospital_Procedure] ([Hospital_ID], [Procedure_ID]) VALUES (5, 5)
GO
SET IDENTITY_INSERT [dbo].[Insurance_Policy] ON
GO
INSERT [dbo].[Insurance_Policy] ([Policy_ID], [Policy_Reference_Number], [Patient_ID], [Insurer_ID], [Policy_Start_Date], [Policy_End_Date], [Comments]) VALUES (1, N'D267488', 4, 1, CAST(N'2016-03-03T00:00:00.000' AS DateTime), CAST(N'2024-03-03T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Insurance_Policy] ([Policy_ID], [Policy_Reference_Number], [Patient_ID], [Insurer_ID], [Policy_Start_Date], [Policy_End_Date], [Comments]) VALUES (2, N'F555422', 7, 5, CAST(N'2000-09-14T00:00:00.000' AS DateTime), CAST(N'2009-09-14T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Insurance_Policy] ([Policy_ID], [Policy_Reference_Number], [Patient_ID], [Insurer_ID], [Policy_Start_Date], [Policy_End_Date], [Comments]) VALUES (3, N'G874979', 5, 4, CAST(N'2015-06-04T00:00:00.000' AS DateTime), CAST(N'2021-06-04T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Insurance_Policy] ([Policy_ID], [Policy_Reference_Number], [Patient_ID], [Insurer_ID], [Policy_Start_Date], [Policy_End_Date], [Comments]) VALUES (4, N'A348389', 6, 2, CAST(N'2017-09-07T00:00:00.000' AS DateTime), CAST(N'2021-09-07T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Insurance_Policy] ([Policy_ID], [Policy_Reference_Number], [Patient_ID], [Insurer_ID], [Policy_Start_Date], [Policy_End_Date], [Comments]) VALUES (5, N'D277878', 2, 5, CAST(N'2012-10-06T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Insurance_Policy] ([Policy_ID], [Policy_Reference_Number], [Patient_ID], [Insurer_ID], [Policy_Start_Date], [Policy_End_Date], [Comments]) VALUES (6, N'D349719', 9, 3, CAST(N'2010-10-06T00:00:00.000' AS DateTime), CAST(N'2016-10-06T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Insurance_Policy] ([Policy_ID], [Policy_Reference_Number], [Patient_ID], [Insurer_ID], [Policy_Start_Date], [Policy_End_Date], [Comments]) VALUES (7, N'A978723', 1, 3, CAST(N'2000-08-09T00:00:00.000' AS DateTime), CAST(N'2013-11-21T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Insurance_Policy] ([Policy_ID], [Policy_Reference_Number], [Patient_ID], [Insurer_ID], [Policy_Start_Date], [Policy_End_Date], [Comments]) VALUES (8, N'A984376', 8, 1, CAST(N'2015-02-15T00:00:00.000' AS DateTime), CAST(N'2022-02-15T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Insurance_Policy] ([Policy_ID], [Policy_Reference_Number], [Patient_ID], [Insurer_ID], [Policy_Start_Date], [Policy_End_Date], [Comments]) VALUES (9, N'F989768', 10, 4, CAST(N'2013-09-17T00:00:00.000' AS DateTime), CAST(N'2018-09-17T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Insurance_Policy] ([Policy_ID], [Policy_Reference_Number], [Patient_ID], [Insurer_ID], [Policy_Start_Date], [Policy_End_Date], [Comments]) VALUES (10, N'F399928', 3, 1, CAST(N'2018-12-12T00:00:00.000' AS DateTime), CAST(N'2023-12-12T00:00:00.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Insurance_Policy] OFF
GO
SET IDENTITY_INSERT [dbo].[Insurer] ON
GO
INSERT [dbo].[Insurer] ([Insurer_ID], [Insurer_Name], [City_ID], [Province_ID], [Contact]) VALUES (1, N'Blue Cross Canada', 3, 9, N'8236784365')
GO
INSERT [dbo].[Insurer] ([Insurer_ID], [Insurer_Name], [City_ID], [Province_ID], [Contact]) VALUES (2, N'Sun Life Assurance Comapany', 7, 2, N'6474588732')
GO
INSERT [dbo].[Insurer] ([Insurer_ID], [Insurer_Name], [City_ID], [Province_ID], [Contact]) VALUES (3, N'Green Shield Canada', 4, 1, N'2873778658')
GO
INSERT [dbo].[Insurer] ([Insurer_ID], [Insurer_Name], [City_ID], [Province_ID], [Contact]) VALUES (4, N'Manulife', 6, 3, N'3873674653')
GO
INSERT [dbo].[Insurer] ([Insurer_ID], [Insurer_Name], [City_ID], [Province_ID], [Contact]) VALUES (5, N'Group Medical Services', 8, 2, N'8738647293')
GO
SET IDENTITY_INSERT [dbo].[Insurer] OFF
GO
SET IDENTITY_INSERT [dbo].[Medical_Procedure] ON
GO
INSERT [dbo].[Medical_Procedure] ([Procedure_ID], [Procedure_Name], [Procedure_Cost]) VALUES (1, N'Transplant', CAST(10000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Medical_Procedure] ([Procedure_ID], [Procedure_Name], [Procedure_Cost]) VALUES (2, N'Chemotherapy', CAST(67000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Medical_Procedure] ([Procedure_ID], [Procedure_Name], [Procedure_Cost]) VALUES (3, N'Radiation', CAST(77000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Medical_Procedure] ([Procedure_ID], [Procedure_Name], [Procedure_Cost]) VALUES (4, N'Cryoablation', CAST(112000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Medical_Procedure] ([Procedure_ID], [Procedure_Name], [Procedure_Cost]) VALUES (5, N'Hormone Therapy', CAST(90000.00 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[Medical_Procedure] OFF
GO
SET IDENTITY_INSERT [dbo].[Medical_Report] ON
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (1, 1, CAST(N'2006-12-12T00:00:00.000' AS DateTime), 3, 1, 1, 3)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (2, 2, CAST(N'2014-08-06T00:00:00.000' AS DateTime), 4, 2, 1, 5)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (3, 3, CAST(N'2022-05-01T00:00:00.000' AS DateTime), 5, 1, 1, 2)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (4, 4, CAST(N'2019-04-04T00:00:00.000' AS DateTime), 1, 1, 1, 2)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (5, 4, CAST(N'2019-03-02T00:00:00.000' AS DateTime), 1, 5, 0, 2)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (6, 5, CAST(N'2018-09-05T00:00:00.000' AS DateTime), 5, 4, 1, 4)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (7, 6, CAST(N'2020-03-09T00:00:00.000' AS DateTime), 4, 2, 1, 3)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (8, 6, CAST(N'2018-08-04T00:00:00.000' AS DateTime), 1, 3, 1, 4)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (9, 6, CAST(N'2020-05-09T00:00:00.000' AS DateTime), 1, 4, 0, 1)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (10, 7, CAST(N'2019-02-05T00:00:00.000' AS DateTime), 5, 1, 1, 1)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (11, 8, CAST(N'2017-03-02T00:00:00.000' AS DateTime), 3, 5, 1, 3)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (12, 9, CAST(N'2005-06-12T00:00:00.000' AS DateTime), 3, 2, 1, 2)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (13, 10, CAST(N'2015-05-11T00:00:00.000' AS DateTime), 3, 5, 1, 1)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (14, 10, CAST(N'2014-04-10T00:00:00.000' AS DateTime), 2, 3, 1, 3)
GO
INSERT [dbo].[Medical_Report] ([Report_ID], [Patient_ID], [Report_Date], [Physician_ID], [Hospital_ID], [IsValid], [MedicalCondition_ID]) VALUES (15, 10, CAST(N'2014-07-03T00:00:00.000' AS DateTime), 2, 1, 1, 3)
GO
SET IDENTITY_INSERT [dbo].[Medical_Report] OFF
GO
SET IDENTITY_INSERT [dbo].[MedicalCondition] ON
GO
INSERT [dbo].[MedicalCondition] ([MedicalCondition_ID], [Condition_Name]) VALUES (1, N'Hepatitis A')
GO
INSERT [dbo].[MedicalCondition] ([MedicalCondition_ID], [Condition_Name]) VALUES (2, N'Hepatitis B')
GO
INSERT [dbo].[MedicalCondition] ([MedicalCondition_ID], [Condition_Name]) VALUES (3, N'Hepatitis C')
GO
INSERT [dbo].[MedicalCondition] ([MedicalCondition_ID], [Condition_Name]) VALUES (4, N'Liver Cancer')
GO
INSERT [dbo].[MedicalCondition] ([MedicalCondition_ID], [Condition_Name]) VALUES (5, N'Cirrhosis')
GO
SET IDENTITY_INSERT [dbo].[MedicalCondition] OFF
GO
SET IDENTITY_INSERT [dbo].[Medicine] ON
GO
INSERT [dbo].[Medicine] ([Medicine_ID], [Medicine_Name], [Composition], [Potency], [Side_Effects], [Comments], [MedicalCondition_ID], [Med_Price]) VALUES (1, N'Paracip', N'Paracetamol/ Acetaminophen', N'2', N'Skin rash or dermatitis', N'Shake well before use.', 4, CAST(500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Medicine] ([Medicine_ID], [Medicine_Name], [Composition], [Potency], [Side_Effects], [Comments], [MedicalCondition_ID], [Med_Price]) VALUES (2, N'Digene', N'Dries Aluminium Hydroxide, Magnesium Aluminium Silicate Hydrate, Simethicone', N'5', N'Dizziness', N'Keep out of childrens reach', 1, CAST(880.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Medicine] ([Medicine_ID], [Medicine_Name], [Composition], [Potency], [Side_Effects], [Comments], [MedicalCondition_ID], [Med_Price]) VALUES (3, N'Voliniused', N'Diclofenac diethylamine BP, Linseed Oil BP (Oleum Lini), methyl salicylate', N'4', N'Headache', N'1 tablet for children. 2 tablets for adults.', 5, CAST(233.60 AS Decimal(10, 2)))
GO
INSERT [dbo].[Medicine] ([Medicine_ID], [Medicine_Name], [Composition], [Potency], [Side_Effects], [Comments], [MedicalCondition_ID], [Med_Price]) VALUES (4, N'Vomikind', N'Ondansetron', N'1', N'Insomnia', N'Don’t consume if allergic to nuts', 3, CAST(129.90 AS Decimal(10, 2)))
GO
INSERT [dbo].[Medicine] ([Medicine_ID], [Medicine_Name], [Composition], [Potency], [Side_Effects], [Comments], [MedicalCondition_ID], [Med_Price]) VALUES (5, N'Albuterol Sulfate', N'Anisodamine', N'5', N'Nausea', N'Shake well before use.', 2, CAST(45.00 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[Medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[Patient] ON
GO
INSERT [dbo].[Patient] ([Patient_ID], [First_Name], [Last_Name], [Date_of_birth], [Gender], [City_ID], [Province_ID], [Primary_Contact], [Secondary_Contact]) VALUES (1, N'Michael', N'Scott', CAST(N'1960-01-01T00:00:00.000' AS DateTime), 1, 8, 3, N'5123838733', N'3783746284')
GO
INSERT [dbo].[Patient] ([Patient_ID], [First_Name], [Last_Name], [Date_of_birth], [Gender], [City_ID], [Province_ID], [Primary_Contact], [Secondary_Contact]) VALUES (2, N'Rachel', N'Green', CAST(N'1965-01-01T00:00:00.000' AS DateTime), 2, 2, 5, N'2172187349', N'8736746789')
GO
INSERT [dbo].[Patient] ([Patient_ID], [First_Name], [Last_Name], [Date_of_birth], [Gender], [City_ID], [Province_ID], [Primary_Contact], [Secondary_Contact]) VALUES (3, N'Jim', N'Halpert', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 1, 1, 8, N'9374623522', N'7641827367')
GO
INSERT [dbo].[Patient] ([Patient_ID], [First_Name], [Last_Name], [Date_of_birth], [Gender], [City_ID], [Province_ID], [Primary_Contact], [Secondary_Contact]) VALUES (4, N'Joseph', N'Tribbiani', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 1, 5, 4, N'2367245625', N'7637571299')
GO
INSERT [dbo].[Patient] ([Patient_ID], [First_Name], [Last_Name], [Date_of_birth], [Gender], [City_ID], [Province_ID], [Primary_Contact], [Secondary_Contact]) VALUES (5, N'Sheldon', N'Cooper', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, 3, 1, N'2685945979', N'7863527384')
GO
INSERT [dbo].[Patient] ([Patient_ID], [First_Name], [Last_Name], [Date_of_birth], [Gender], [City_ID], [Province_ID], [Primary_Contact], [Secondary_Contact]) VALUES (6, N'William', N'Watson', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 1, 7, 7, N'2828637451', N'7386957466')
GO
INSERT [dbo].[Patient] ([Patient_ID], [First_Name], [Last_Name], [Date_of_birth], [Gender], [City_ID], [Province_ID], [Primary_Contact], [Secondary_Contact]) VALUES (7, N'Betty', N'Wallaker', CAST(N'1961-01-01T00:00:00.000' AS DateTime), 2, 2, 8, N'8738263548', N'7762535647')
GO
INSERT [dbo].[Patient] ([Patient_ID], [First_Name], [Last_Name], [Date_of_birth], [Gender], [City_ID], [Province_ID], [Primary_Contact], [Secondary_Contact]) VALUES (8, N'Monica', N'Geller', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 2, 3, 3, N'8759984376', N'1873847874')
GO
INSERT [dbo].[Patient] ([Patient_ID], [First_Name], [Last_Name], [Date_of_birth], [Gender], [City_ID], [Province_ID], [Primary_Contact], [Secondary_Contact]) VALUES (9, N'Ryan', N'Hoffman', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 1, 7, 8, N'6565235351', N'6236794579')
GO
INSERT [dbo].[Patient] ([Patient_ID], [First_Name], [Last_Name], [Date_of_birth], [Gender], [City_ID], [Province_ID], [Primary_Contact], [Secondary_Contact]) VALUES (10, N'David', N'West', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 1, 6, 6, N'2388659865', N'3242767568')
GO
SET IDENTITY_INSERT [dbo].[Patient] OFF
GO
SET IDENTITY_INSERT [dbo].[Physician] ON
GO
INSERT [dbo].[Physician] ([Physician_ID], [First_Name], [Last_Name], [City_ID], [Province_ID], [Contact]) VALUES (1, N'Marion', N'Dupont', 1, 1, N'4385550182')
GO
INSERT [dbo].[Physician] ([Physician_ID], [First_Name], [Last_Name], [City_ID], [Province_ID], [Contact]) VALUES (2, N'Gabriel', N'Ong', 5, 6, N'6045100193')
GO
INSERT [dbo].[Physician] ([Physician_ID], [First_Name], [Last_Name], [City_ID], [Province_ID], [Contact]) VALUES (3, N'Linnea', N'Yalong', 1, 1, N'5140397741')
GO
INSERT [dbo].[Physician] ([Physician_ID], [First_Name], [Last_Name], [City_ID], [Province_ID], [Contact]) VALUES (4, N'Srudhi', N'Kumar', 4, 2, N'4160586308')
GO
INSERT [dbo].[Physician] ([Physician_ID], [First_Name], [Last_Name], [City_ID], [Province_ID], [Contact]) VALUES (5, N'Karim', N'Ahmed', 1, 1, N'4387709322')
GO
SET IDENTITY_INSERT [dbo].[Physician] OFF
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (1, 1)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (1, 2)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (1, 3)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (1, 4)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (1, 5)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (2, 1)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (2, 2)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (2, 3)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (2, 4)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (2, 5)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (3, 1)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (3, 2)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (3, 3)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (3, 4)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (3, 5)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (4, 1)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (4, 2)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (4, 3)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (4, 4)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (4, 5)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (5, 1)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (5, 2)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (5, 3)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (5, 4)
GO
INSERT [dbo].[Physician_Procedure] ([Physician_ID], [Procedure_ID]) VALUES (5, 5)
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (1, 1, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (1, 2, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (1, 3, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (1, 4, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (1, 5, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (2, 1, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (2, 2, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (2, 3, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (2, 4, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (2, 5, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (3, 1, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (3, 2, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (3, 3, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (3, 4, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (3, 5, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (4, 1, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (4, 2, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (4, 3, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (4, 4, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (4, 5, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (5, 1, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (5, 2, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (5, 3, N'Advanced')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (5, 4, N'Limited')
GO
INSERT [dbo].[Physician_Specilization] ([Physician_ID], [Specialization_ID], [Proficiency]) VALUES (5, 5, N'Limited')
GO
SET IDENTITY_INSERT [dbo].[Prescription] ON
GO
INSERT [dbo].[Prescription] ([Prescription_ID], [Report_ID], [Medicine_ID], [Dosage], [Prescription_Start_Date], [Prescription_End_Date], [Comments]) VALUES (1, 4, 5, CAST(50.0000 AS Decimal(10, 4)), CAST(N'2021-01-02T00:00:00.000' AS DateTime), CAST(N'2023-07-30T00:00:00.000' AS DateTime), N'None')
GO
INSERT [dbo].[Prescription] ([Prescription_ID], [Report_ID], [Medicine_ID], [Dosage], [Prescription_Start_Date], [Prescription_End_Date], [Comments]) VALUES (2, 5, 5, CAST(1000.0000 AS Decimal(10, 4)), CAST(N'2022-03-31T00:00:00.000' AS DateTime), CAST(N'2023-09-01T00:00:00.000' AS DateTime), N'3 times a day post meals.')
GO
INSERT [dbo].[Prescription] ([Prescription_ID], [Report_ID], [Medicine_ID], [Dosage], [Prescription_Start_Date], [Prescription_End_Date], [Comments]) VALUES (3, 2, 5, CAST(100.0000 AS Decimal(10, 4)), CAST(N'2020-04-04T00:00:00.000' AS DateTime), CAST(N'2025-08-22T00:00:00.000' AS DateTime), N'Twice per day')
GO
INSERT [dbo].[Prescription] ([Prescription_ID], [Report_ID], [Medicine_ID], [Dosage], [Prescription_Start_Date], [Prescription_End_Date], [Comments]) VALUES (4, 1, 1, CAST(500.0000 AS Decimal(10, 4)), CAST(N'2021-12-15T00:00:00.000' AS DateTime), CAST(N'2022-10-17T00:00:00.000' AS DateTime), N'Administer 2 hrs before eating')
GO
INSERT [dbo].[Prescription] ([Prescription_ID], [Report_ID], [Medicine_ID], [Dosage], [Prescription_Start_Date], [Prescription_End_Date], [Comments]) VALUES (5, 3, 4, CAST(50.0000 AS Decimal(10, 4)), CAST(N'2019-11-24T00:00:00.000' AS DateTime), CAST(N'2027-07-06T00:00:00.000' AS DateTime), N'Consume after meal. One tablet every day')
GO
SET IDENTITY_INSERT [dbo].[Prescription] OFF
GO
SET IDENTITY_INSERT [dbo].[Province] ON
GO
INSERT [dbo].[Province] ([Province_ID], [Province_Name]) VALUES (1, N'Quebec')
GO
INSERT [dbo].[Province] ([Province_ID], [Province_Name]) VALUES (2, N'Ontario')
GO
INSERT [dbo].[Province] ([Province_ID], [Province_Name]) VALUES (3, N'Nova Scotia')
GO
INSERT [dbo].[Province] ([Province_ID], [Province_Name]) VALUES (4, N'New Brunswick')
GO
INSERT [dbo].[Province] ([Province_ID], [Province_Name]) VALUES (5, N'Manitoba')
GO
INSERT [dbo].[Province] ([Province_ID], [Province_Name]) VALUES (6, N'British Columbia')
GO
INSERT [dbo].[Province] ([Province_ID], [Province_Name]) VALUES (7, N'Prince Edward Island')
GO
INSERT [dbo].[Province] ([Province_ID], [Province_Name]) VALUES (8, N'Saskatchewan')
GO
INSERT [dbo].[Province] ([Province_ID], [Province_Name]) VALUES (9, N'Alberta')
GO
INSERT [dbo].[Province] ([Province_ID], [Province_Name]) VALUES (10, N'Newfoundland and Labrador')
GO
SET IDENTITY_INSERT [dbo].[Province] OFF
GO
SET IDENTITY_INSERT [dbo].[Report_Procedure] ON
GO
INSERT [dbo].[Report_Procedure] ([Report_Procedure_ID], [Procedure_ID], [Report_ID], [Procedure_Date]) VALUES (1, 1, 1, CAST(N'2021-07-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Report_Procedure] ([Report_Procedure_ID], [Procedure_ID], [Report_ID], [Procedure_Date]) VALUES (2, 2, 3, CAST(N'2019-03-02T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Report_Procedure] ([Report_Procedure_ID], [Procedure_ID], [Report_ID], [Procedure_Date]) VALUES (3, 2, 4, CAST(N'2012-12-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Report_Procedure] ([Report_Procedure_ID], [Procedure_ID], [Report_ID], [Procedure_Date]) VALUES (4, 3, 10, CAST(N'2020-04-10T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Report_Procedure] ([Report_Procedure_ID], [Procedure_ID], [Report_ID], [Procedure_Date]) VALUES (5, 4, 11, CAST(N'2016-06-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Report_Procedure] ([Report_Procedure_ID], [Procedure_ID], [Report_ID], [Procedure_Date]) VALUES (6, 5, 7, CAST(N'2019-10-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Report_Procedure] ([Report_Procedure_ID], [Procedure_ID], [Report_ID], [Procedure_Date]) VALUES (7, 2, 8, CAST(N'2015-09-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Report_Procedure] ([Report_Procedure_ID], [Procedure_ID], [Report_ID], [Procedure_Date]) VALUES (8, 3, 15, CAST(N'2020-10-09T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Report_Procedure] OFF
GO
SET IDENTITY_INSERT [dbo].[Specialization] ON
GO
INSERT [dbo].[Specialization] ([Specialization_ID], [Name], [Department]) VALUES (1, N'Oncology', N'5')
GO
INSERT [dbo].[Specialization] ([Specialization_ID], [Name], [Department]) VALUES (2, N'Dermatology', N'2')
GO
INSERT [dbo].[Specialization] ([Specialization_ID], [Name], [Department]) VALUES (3, N'Opthalmology', N'3')
GO
INSERT [dbo].[Specialization] ([Specialization_ID], [Name], [Department]) VALUES (4, N'Cardiology', N'9')
GO
INSERT [dbo].[Specialization] ([Specialization_ID], [Name], [Department]) VALUES (5, N'Neurology', N'6')
GO
SET IDENTITY_INSERT [dbo].[Specialization] OFF
GO
ALTER TABLE [dbo].[Hospital_Physician] ADD  CONSTRAINT [DF_physician_emp_start_date]  DEFAULT (getdate()) FOR [Employment_Start_Date]
GO
ALTER TABLE [dbo].[Insurance_Policy] ADD  CONSTRAINT [DF_Policy_Start]  DEFAULT (getdate()) FOR [Policy_Start_Date]
GO
ALTER TABLE [dbo].[Medical_Report] ADD  CONSTRAINT [DF_Report_Date]  DEFAULT (getdate()) FOR [Report_Date]
GO
ALTER TABLE [dbo].[Medical_Report] ADD  CONSTRAINT [df_IsValid]  DEFAULT ('Y') FOR [IsValid]
GO
ALTER TABLE [dbo].[Report_Procedure] ADD  CONSTRAINT [DF_Procedure_Date]  DEFAULT (getdate()) FOR [Procedure_Date]
GO
ALTER TABLE [dbo].[Hospital]  WITH NOCHECK ADD  CONSTRAINT [FK_City_Hospital] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([City_ID])
GO
ALTER TABLE [dbo].[Hospital] CHECK CONSTRAINT [FK_City_Hospital]
GO
ALTER TABLE [dbo].[Hospital]  WITH NOCHECK ADD  CONSTRAINT [FK_Province_Hospital] FOREIGN KEY([Province_ID])
REFERENCES [dbo].[Province] ([Province_ID])
GO
ALTER TABLE [dbo].[Hospital] CHECK CONSTRAINT [FK_Province_Hospital]
GO
ALTER TABLE [dbo].[Hospital_Physician]  WITH NOCHECK ADD  CONSTRAINT [FK_Hospital_Physician_Hospital] FOREIGN KEY([Hospital_ID])
REFERENCES [dbo].[Hospital] ([Hospital_ID])
GO
ALTER TABLE [dbo].[Hospital_Physician] CHECK CONSTRAINT [FK_Hospital_Physician_Hospital]
GO
ALTER TABLE [dbo].[Hospital_Physician]  WITH NOCHECK ADD  CONSTRAINT [FK_Hospital_Physician_Physician] FOREIGN KEY([Physician_ID])
REFERENCES [dbo].[Physician] ([Physician_ID])
GO
ALTER TABLE [dbo].[Hospital_Physician] CHECK CONSTRAINT [FK_Hospital_Physician_Physician]
GO
ALTER TABLE [dbo].[Hospital_Procedure]  WITH NOCHECK ADD  CONSTRAINT [FK_Hospital_Procedure_Hospital] FOREIGN KEY([Hospital_ID])
REFERENCES [dbo].[Hospital] ([Hospital_ID])
GO
ALTER TABLE [dbo].[Hospital_Procedure] CHECK CONSTRAINT [FK_Hospital_Procedure_Hospital]
GO
ALTER TABLE [dbo].[Hospital_Procedure]  WITH NOCHECK ADD  CONSTRAINT [FK_Hospital_Procedure_Procedure] FOREIGN KEY([Procedure_ID])
REFERENCES [dbo].[Medical_Procedure] ([Procedure_ID])
GO
ALTER TABLE [dbo].[Hospital_Procedure] CHECK CONSTRAINT [FK_Hospital_Procedure_Procedure]
GO
ALTER TABLE [dbo].[Insurance_Policy]  WITH NOCHECK ADD  CONSTRAINT [FK_Policy_Insurer] FOREIGN KEY([Insurer_ID])
REFERENCES [dbo].[Insurer] ([Insurer_ID])
GO
ALTER TABLE [dbo].[Insurance_Policy] CHECK CONSTRAINT [FK_Policy_Insurer]
GO
ALTER TABLE [dbo].[Insurance_Policy]  WITH CHECK ADD  CONSTRAINT [FK_Policy_Patient] FOREIGN KEY([Patient_ID])
REFERENCES [dbo].[Patient] ([Patient_ID])
GO
ALTER TABLE [dbo].[Insurance_Policy] CHECK CONSTRAINT [FK_Policy_Patient]
GO
ALTER TABLE [dbo].[Insurer]  WITH NOCHECK ADD  CONSTRAINT [FK_City_Insurer] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([City_ID])
GO
ALTER TABLE [dbo].[Insurer] CHECK CONSTRAINT [FK_City_Insurer]
GO
ALTER TABLE [dbo].[Insurer]  WITH NOCHECK ADD  CONSTRAINT [FK_Province_Insurer] FOREIGN KEY([Province_ID])
REFERENCES [dbo].[Province] ([Province_ID])
GO
ALTER TABLE [dbo].[Insurer] CHECK CONSTRAINT [FK_Province_Insurer]
GO
ALTER TABLE [dbo].[Medical_Report]  WITH NOCHECK ADD  CONSTRAINT [FK_MedicalReport_Hospital] FOREIGN KEY([Hospital_ID])
REFERENCES [dbo].[Hospital] ([Hospital_ID])
GO
ALTER TABLE [dbo].[Medical_Report] CHECK CONSTRAINT [FK_MedicalReport_Hospital]
GO
ALTER TABLE [dbo].[Medical_Report]  WITH NOCHECK ADD  CONSTRAINT [FK_MedicalReport_MedicalCondition] FOREIGN KEY([MedicalCondition_ID])
REFERENCES [dbo].[MedicalCondition] ([MedicalCondition_ID])
GO
ALTER TABLE [dbo].[Medical_Report] CHECK CONSTRAINT [FK_MedicalReport_MedicalCondition]
GO
ALTER TABLE [dbo].[Medical_Report]  WITH CHECK ADD  CONSTRAINT [FK_MedicalReport_Patient] FOREIGN KEY([Patient_ID])
REFERENCES [dbo].[Patient] ([Patient_ID])
GO
ALTER TABLE [dbo].[Medical_Report] CHECK CONSTRAINT [FK_MedicalReport_Patient]
GO
ALTER TABLE [dbo].[Medical_Report]  WITH NOCHECK ADD  CONSTRAINT [FK_MedicalReport_Physician] FOREIGN KEY([Physician_ID])
REFERENCES [dbo].[Physician] ([Physician_ID])
GO
ALTER TABLE [dbo].[Medical_Report] CHECK CONSTRAINT [FK_MedicalReport_Physician]
GO
ALTER TABLE [dbo].[Medicine]  WITH NOCHECK ADD  CONSTRAINT [FK_Medicine_MedicalCondition] FOREIGN KEY([MedicalCondition_ID])
REFERENCES [dbo].[MedicalCondition] ([MedicalCondition_ID])
GO
ALTER TABLE [dbo].[Medicine] CHECK CONSTRAINT [FK_Medicine_MedicalCondition]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_City_Patient] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([City_ID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_City_Patient]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Gender_Patient] FOREIGN KEY([Gender])
REFERENCES [dbo].[Gender] ([Gender_ID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Gender_Patient]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Province_Patient] FOREIGN KEY([Province_ID])
REFERENCES [dbo].[Province] ([Province_ID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Province_Patient]
GO
ALTER TABLE [dbo].[Physician]  WITH NOCHECK ADD  CONSTRAINT [FK_City_Physician] FOREIGN KEY([City_ID])
REFERENCES [dbo].[City] ([City_ID])
GO
ALTER TABLE [dbo].[Physician] CHECK CONSTRAINT [FK_City_Physician]
GO
ALTER TABLE [dbo].[Physician]  WITH NOCHECK ADD  CONSTRAINT [FK_Province_Physician] FOREIGN KEY([Province_ID])
REFERENCES [dbo].[Province] ([Province_ID])
GO
ALTER TABLE [dbo].[Physician] CHECK CONSTRAINT [FK_Province_Physician]
GO
ALTER TABLE [dbo].[Physician_Procedure]  WITH NOCHECK ADD  CONSTRAINT [FK_Physician_Procedure_Physician] FOREIGN KEY([Physician_ID])
REFERENCES [dbo].[Physician] ([Physician_ID])
GO
ALTER TABLE [dbo].[Physician_Procedure] CHECK CONSTRAINT [FK_Physician_Procedure_Physician]
GO
ALTER TABLE [dbo].[Physician_Procedure]  WITH NOCHECK ADD  CONSTRAINT [FK_Physician_Procedure_Procedure] FOREIGN KEY([Procedure_ID])
REFERENCES [dbo].[Medical_Procedure] ([Procedure_ID])
GO
ALTER TABLE [dbo].[Physician_Procedure] CHECK CONSTRAINT [FK_Physician_Procedure_Procedure]
GO
ALTER TABLE [dbo].[Physician_Specilization]  WITH NOCHECK ADD  CONSTRAINT [FK_Physician_Spec_Physician] FOREIGN KEY([Physician_ID])
REFERENCES [dbo].[Physician] ([Physician_ID])
GO
ALTER TABLE [dbo].[Physician_Specilization] CHECK CONSTRAINT [FK_Physician_Spec_Physician]
GO
ALTER TABLE [dbo].[Physician_Specilization]  WITH NOCHECK ADD  CONSTRAINT [FK_Physician_Spec_Specialization] FOREIGN KEY([Specialization_ID])
REFERENCES [dbo].[Specialization] ([Specialization_ID])
GO
ALTER TABLE [dbo].[Physician_Specilization] CHECK CONSTRAINT [FK_Physician_Spec_Specialization]
GO
ALTER TABLE [dbo].[Prescription]  WITH NOCHECK ADD  CONSTRAINT [FK_Prescription_Medicine] FOREIGN KEY([Medicine_ID])
REFERENCES [dbo].[Medicine] ([Medicine_ID])
GO
ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [FK_Prescription_Medicine]
GO
ALTER TABLE [dbo].[Prescription]  WITH NOCHECK ADD  CONSTRAINT [FK_Prescription_Report] FOREIGN KEY([Report_ID])
REFERENCES [dbo].[Medical_Report] ([Report_ID])
GO
ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [FK_Prescription_Report]
GO
ALTER TABLE [dbo].[Report_Procedure]  WITH NOCHECK ADD  CONSTRAINT [FK_Report_Procedure_Procedure] FOREIGN KEY([Procedure_ID])
REFERENCES [dbo].[Medical_Procedure] ([Procedure_ID])
GO
ALTER TABLE [dbo].[Report_Procedure] CHECK CONSTRAINT [FK_Report_Procedure_Procedure]
GO
ALTER TABLE [dbo].[Report_Procedure]  WITH NOCHECK ADD  CONSTRAINT [FK_Report_Procedure_Report] FOREIGN KEY([Report_ID])
REFERENCES [dbo].[Medical_Report] ([Report_ID])
GO
ALTER TABLE [dbo].[Report_Procedure] CHECK CONSTRAINT [FK_Report_Procedure_Report]
GO
