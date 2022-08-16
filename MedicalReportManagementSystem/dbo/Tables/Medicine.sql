﻿CREATE TABLE [dbo].[Medicine]
(
	[Medicine_ID]	INT NOT NULL,
	[Medicine_Name] VARCHAR(100),
	[Composition]	VARCHAR(500),
	[Potency]		VARCHAR(10),
	[Side_Effects]  VARCHAR(500),
	[Comments]		VARCHAR(500),
	CONSTRAINT PK_Medicine PRIMARY KEY (Medicine_ID)
)