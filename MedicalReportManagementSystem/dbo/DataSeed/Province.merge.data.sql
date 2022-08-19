MERGE INTO Province AS Target
USING (VALUES
	(1, '')
)
AS Source (
			[Province_ID],
		    [Province_Name]
		  )

ON Source.[Province_ID] = Target.[Province_ID]

WHEN MATCHED THEN
UPDATE SET [Province_Name] = Source.[Province_Name]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Province_ID],
		[Province_Name]
		)
		VALUES
		(
		Source.[Province_ID],
		Source.[Province_Name]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
