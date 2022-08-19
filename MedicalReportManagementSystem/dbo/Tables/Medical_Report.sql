CREATE TABLE [dbo].[Medical_Report]
(
	[Report_ID]				INT NOT NULL IDENTITY(1,1),
	[Patient_ID]			INT NOT NULL,
	[Report_Date]			DATETIME CONSTRAINT DF_Report_Date DEFAULT (CURRENT_TIMESTAMP),
	[Physician_ID]			INT,
	[Hospital_ID]			INT,
	[IsValid]				BIT CONSTRAINT df_IsValid DEFAULT('Y'),
	[MedicalCondition_ID]	INT,

	CONSTRAINT PK_Medical_Report PRIMARY KEY (Report_ID),
	CONSTRAINT FK_MedicalReport_Patient FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
	CONSTRAINT FK_MedicalReport_Physician FOREIGN KEY (Physician_ID) REFERENCES Physician(Physician_ID),
	CONSTRAINT FK_MedicalReport_Hospital FOREIGN KEY (Hospital_ID) REFERENCES Hospital(Hospital_ID),
	CONSTRAINT FK_MedicalReport_MedicalCondition FOREIGN KEY (MedicalCondition_ID) REFERENCES MedicalCondition(MedicalCondition_ID)
)
