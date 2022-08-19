CREATE TABLE [dbo].[MedicalCondition]
(
	[MedicalCondition_ID]	INT NOT NULL IDENTITY(1,1),
	[Condition_Name]		VARCHAR(50),

	CONSTRAINT PK_MedicalCondition PRIMARY KEY(MedicalCondition_ID)
)
