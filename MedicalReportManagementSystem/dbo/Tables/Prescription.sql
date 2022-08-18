CREATE TABLE [dbo].[Prescription]
(
	[Prescription_ID]			INT NOT NULL IDENTITY(1,1),
	[Report_ID]					INT,
	[Medicine_ID]				INT,
	[Dosage]					VARCHAR(50),
	[Prescription_Start_Date]	DATETIME,
	[Prescription_End_Date]		DATETIME,
	[Comments]					VARCHAR(100),

	CONSTRAINT PK_Prescription PRIMARY KEY (Prescription_ID),
	CONSTRAINT FK_Prescription_Report FOREIGN KEY (Report_ID) REFERENCES Medical_Report(Report_ID),
	CONSTRAINT FK_Prescription_Medicine FOREIGN KEY (Medicine_ID) REFERENCES Medicine(Medicine_ID),
)
