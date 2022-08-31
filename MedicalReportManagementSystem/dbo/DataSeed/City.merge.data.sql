MERGE INTO City AS Target
USING (VALUES
	(1, 'Montreal'),
	(2, 'Quebec City'),
	(3, 'Ottawa'),
	(4, 'Toronto'),
	(5, 'Vancouver'),
	(6, 'Calgary'),
	(7, 'London'),
	(8, 'Hamilton'),
	(9, 'Edmonton')
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
		[City_Name]
		)
		VALUES
		(
		Source.[City_Name]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
