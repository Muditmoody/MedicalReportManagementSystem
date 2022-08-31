MERGE INTO Gender AS Target
USING (VALUES
	(1, 'Male'),
	(2, 'Female'),
	(3, 'Gay/Non-Binary'),
	(4, 'Lesbian/Non-Binary'),
	(5, 'Bisexual'),
	(6, 'Tran-sexual')
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
		[Gender_Name]
		)
		VALUES
		(
		Source.[Gender_Name]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
