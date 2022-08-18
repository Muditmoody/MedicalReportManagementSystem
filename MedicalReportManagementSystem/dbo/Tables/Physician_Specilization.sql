CREATE TABLE [dbo].[Physician_Specilization]
(
	[Physician_ID]			INT NOT NULL,
	[Specialization_ID]		INT NOT NULL,
	[Proficiency]			VARCHAR(50),

	CONSTRAINT PK_Physician_Specialization PRIMARY KEY (Physician_ID,Specialization_ID),
	CONSTRAINT FK_Physician_Spec_Physician FOREIGN KEY (Physician_ID) REFERENCES Physician(Physician_ID),
	CONSTRAINT FK_Physician_Spec_Specialization FOREIGN KEY (Specialization_ID) REFERENCES Specialization(Specialization_ID)
)