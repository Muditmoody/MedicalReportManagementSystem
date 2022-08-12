CREATE TABLE [dbo].[Patient]
(
	[Patient_Id] INT NOT NULL PRIMARY KEY,
    [Patient_Name] VARCHAR(100) NULL,
    [Date_of_birth] DATETIME NULL,
    [Gender] CHAR(1) NULL,
    [Primary_Contact] VARCHAR(50) NULL,
    [Secondary_Contact] VARCHAR(50) NULL
)
