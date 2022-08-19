CREATE TABLE [dbo].[Medicine]
(
	[Medicine_ID]			INT NOT NULL IDENTITY(1,1),
	[Medicine_Name]			VARCHAR(100),
	[Composition]			VARCHAR(500),
	[Potency]				VARCHAR(10),
	[Side_Effects]			VARCHAR(500),
	[Comments]				VARCHAR(500),
	[MedicalCondition_ID]	INT,

	CONSTRAINT PK_Medicine PRIMARY KEY (Medicine_ID),
	CONSTRAINT FK_Medicine_MedicalCondition FOREIGN KEY (MedicalCondition_ID) REFERENCES MedicalCondition(MedicalCondition_ID)
)
