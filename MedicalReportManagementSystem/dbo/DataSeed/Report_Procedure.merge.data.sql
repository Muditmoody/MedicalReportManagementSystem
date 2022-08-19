MERGE INTO [Report_Procedure] AS Target
USING (VALUES
	(1, '','')
)
AS Source (
			[Report_Procedure_ID],
			[Procedure_ID],
			[Report_ID],
			[Procedure_Date]
		  )

ON Source.[Report_Procedure_ID] = Target.[Report_Procedure_ID]

WHEN MATCHED THEN
UPDATE SET [Procedure_ID]		= Source.[Procedure_ID],
		   [Report_ID]			= Source.[Report_ID],
		   [Procedure_Date]		= Source.[Procedure_Date]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Report_Procedure_ID],
		[Procedure_ID],
		[Report_ID],
		[Procedure_Date]
		)
		VALUES
		(
		Source.[Report_Procedure_ID],
		Source.[Procedure_ID],
		Source.[Report_ID],
		Source.[Procedure_Date]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
