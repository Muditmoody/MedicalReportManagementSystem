CREATE TABLE [dbo].[Hospital_Physician]
(
	[Hospital_ID]				INT NOT NULL,
	[Physician_ID]				INT NOT NULL,
	[Employment_Start_Date]		DATETIME CONSTRAINT DF_physician_emp_start_date DEFAULT (CURRENT_TIMESTAMP),

	CONSTRAINT PK_Hospital_Physician_Mapping PRIMARY KEY (Hospital_ID,Physician_ID),
	CONSTRAINT FK_Hospital_Physician_Hospital FOREIGN KEY (Hospital_ID) REFERENCES Hospital(Hospital_ID),
	CONSTRAINT FK_Hospital_Physician_Physician FOREIGN KEY (Physician_ID) REFERENCES Physician(Physician_ID),
)
