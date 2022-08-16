CREATE TABLE [dbo].[Hospital]
(
	[Hospital_ID]		INT NOT NULL,
	[Hospital_Name]		VARCHAR(100),
	[Address_ID]		INT,
	[Contact]			VARCHAR(50),
	CONSTRAINT PK_Hospital PRIMARY KEY (Hospital_ID),
	CONSTRAINT FK_Address_Hospital FOREIGN KEY (Address_ID) REFERENCES [Address](Address_ID)
)
