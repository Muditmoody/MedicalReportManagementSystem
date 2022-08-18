CREATE TABLE [dbo].[Physician_Procedure]
(
	[Physician_ID]		INT NOT NULL,
	[Procedure_ID]		INT NOT NULL,

	CONSTRAINT PK_Physician_Procedure_Mapping PRIMARY KEY (Physician_ID,Procedure_ID),
	CONSTRAINT FK_Physician_Procedure_Physician FOREIGN KEY (Physician_ID) REFERENCES Physician(Physician_ID),
	CONSTRAINT FK_Physician_Procedure_Procedure FOREIGN KEY (Procedure_ID) REFERENCES Medical_Procedure(Procedure_ID),
)
