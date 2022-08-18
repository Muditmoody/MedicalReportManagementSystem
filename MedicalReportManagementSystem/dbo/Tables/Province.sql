CREATE TABLE [dbo].[Province]
(
	[Province_ID]	INT NOT NULL IDENTITY(1,1),
	[Province_Name]	VARCHAR(50),

	CONSTRAINT PK_Province PRIMARY KEY(Province_ID)
)
