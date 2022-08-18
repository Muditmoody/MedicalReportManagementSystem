CREATE TABLE [dbo].[Specialization]
(
	[Specialization_ID] INT NOT NULL IDENTITY(1,1),
	[Name]				VARCHAR(100),
	[Department]		VARCHAR(100),

	CONSTRAINT PK_Specialization PRIMARY KEY (Specialization_ID)
)
