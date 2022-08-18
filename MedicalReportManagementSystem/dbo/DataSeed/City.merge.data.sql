MERGE INTO City AS Target
USING (VALUES
	(1, '')
)
AS Source (
			[City_ID],
		    [City_Name]
		  )

ON Source.[City_ID] = Target.[City_ID]

WHEN MATCHED THEN
UPDATE SET [City_Name] = Source.[City_Name]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[City_ID],
		[City_Name]
		)
		VALUES
		(
		Source.[City_ID],
		Source.[City_Name]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
