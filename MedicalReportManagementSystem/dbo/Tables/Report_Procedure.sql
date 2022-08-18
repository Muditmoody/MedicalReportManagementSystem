CREATE TABLE [dbo].[Report_Procedure]
(
	[Report_Procedure_ID]	INT NOT NULL IDENTITY(1,1),
	[Procedure_ID]			INT,
	[Report_ID]				INT,
	[Procedure_Date]		DATETIME CONSTRAINT DF_Procedure_Date DEFAULT (CURRENT_TIMESTAMP),

	CONSTRAINT PK_Report_Procedure PRIMARY KEY (Report_Procedure_ID),
	CONSTRAINT FK_Report_Procedure_Procedure FOREIGN KEY (Procedure_ID) REFERENCES Medical_Procedure(Procedure_ID),
	CONSTRAINT FK_Report_Procedure_Report FOREIGN KEY (Report_ID) REFERENCES Medical_Report(Report_ID)
)
