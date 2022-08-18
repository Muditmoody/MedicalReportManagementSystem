CREATE TABLE [dbo].[Insurance_Policy]
(
	[Policy_ID]					INT NOT NULL IDENTITY(1,1),
	[Policy_Reference_Number]	VARCHAR(100),
	[Patient_ID]				INT,
	[Insurer_ID]				INT,
	[Policy_Start_Date]			DATETIME CONSTRAINT DF_Policy_Start DEFAULT (CURRENT_TIMESTAMP),
	[Policy_End_Date]			DATETIME,
	[Comments]					VARCHAR(500),

	CONSTRAINT PK_Insurance_Policy PRIMARY KEY (Policy_ID),
	CONSTRAINT FK_Policy_Patient FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
	CONSTRAINT FK_Policy_Insurer FOREIGN KEY (Insurer_ID) REFERENCES Insurer(Insurer_ID),
)
