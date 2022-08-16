CREATE TABLE [dbo].[Hospital_Procedure]
(
	[Hospital_ID] INT NOT NULL,
	[Procedure_ID] INT NOT NULL,
	CONSTRAINT PK_Hospital_Procedure_Mapping PRIMARY KEY (Hospital_ID,Procedure_ID),
	CONSTRAINT FK_Hospital_Procedure_Hospital FOREIGN KEY (Hospital_ID) REFERENCES Hospital(Hospital_ID),
	CONSTRAINT FK_Hospital_Procedure_Procedure FOREIGN KEY (Procedure_ID) REFERENCES Medical_Procedure(Procedure_ID),
)
