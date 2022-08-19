MERGE INTO Specialization AS Target
USING (VALUES
	(1, '','')
)
AS Source (
			[Specialization_ID],
			[Name],
			[Department]
		  )

ON Source.[Specialization_ID] = Target.[Specialization_ID]

WHEN MATCHED THEN
UPDATE SET [Name]		= Source.[Name],
		   [Department]	= Source.[Department]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Specialization_ID],
		[Name],
		[Department]
		)
		VALUES
		(
		Source.[Specialization_ID],
		Source.[Name],
		Source.[Department]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
