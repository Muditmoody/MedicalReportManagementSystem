MERGE INTO Medical_Procedure AS Target
USING (VALUES
	(1, '')
)
AS Source (
			[Procedure_ID],
		    [Procedure_Name]
		  )

ON Source.[Procedure_ID] = Target.[Procedure_ID]

WHEN MATCHED THEN
UPDATE SET [Procedure_Name] = Source.[Procedure_Name]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Procedure_ID],
		[Procedure_Name]
		)
		VALUES
		(
		Source.[Procedure_ID],
		Source.[Procedure_Name]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;