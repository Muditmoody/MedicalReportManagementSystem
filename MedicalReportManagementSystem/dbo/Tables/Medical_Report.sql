CREATE TABLE [dbo].[Medical_Report]
(
	[Report_ID]		INT NOT NULL,
	[Patient_ID]	INT,
	[Report_Date]	DATETIME,
	[Physician_ID]	INT,
	[Hospital_ID]	INT,
	[IsValid]		BIT CONSTRAINT df_IsValid DEFAULT('Y'),
	CONSTRAINT PK_Medical_Report PRIMARY KEY (Report_ID),
	CONSTRAINT FK_MedicalReport_Patient FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
	CONSTRAINT FK_MedicalReport_Physician FOREIGN KEY (Physician_ID) REFERENCES Physician(Physician_ID),
	CONSTRAINT FK_MedicalReport_Hospital FOREIGN KEY (Hospital_ID) REFERENCES Hospital(Hospital_ID),
)
