CREATE TABLE [dbo].[Address]
(
	[Address_ID]	INT NOT NULL ,
	[Province]		VARCHAR(50),
	[City]			VARCHAR(50),
	[Postal_Code]	VARCHAR(50),
	[Street]		VARCHAR(50),
	[Number]		VARCHAR(50),
	CONSTRAINT PK_Address PRIMARY KEY(Address_ID)
)
