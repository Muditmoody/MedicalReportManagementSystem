CREATE TABLE [dbo].[Medical_Procedure]
(
	[Procedure_ID]		INT NOT NULL IDENTITY(1,1),
	[Procedure_Name]	VARCHAR(100),

	CONSTRAINT PK_Procedure PRIMARY KEY (Procedure_ID)
)
