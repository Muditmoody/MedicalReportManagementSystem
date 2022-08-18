MERGE INTO Gender AS Target
USING (VALUES
	(1, '')
)

AS Source (
			[Gender_ID],
			[Gender_Name]
		  )

ON Source.[Gender_ID] = Target.[Gender_ID]

WHEN MATCHED THEN
UPDATE SET [Gender_Name] = Source.[Gender_Name]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Gender_ID],
		[Gender_Name]
		)
		VALUES
		(
		Source.[Gender_ID],
		Source.[Gender_Name]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
