CREATE TABLE [dbo].[Hospital_Physician]
(
	[Hospital_ID] INT NOT NULL,
	[Physician_ID] INT NOT NULL,
	CONSTRAINT PK_Hospital_Physician_Mapping PRIMARY KEY (Hospital_ID,Physician_ID),
	CONSTRAINT FK_Hospital_Physician_Hospital FOREIGN KEY (Hospital_ID) REFERENCES Hospital(Hospital_ID),
	CONSTRAINT FK_Hospital_Physician_Physician FOREIGN KEY (Physician_ID) REFERENCES Physician(Physician_ID),
)
