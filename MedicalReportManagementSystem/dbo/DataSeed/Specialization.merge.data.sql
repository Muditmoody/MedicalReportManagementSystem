MERGE INTO Specialization AS Target
USING (VALUES
	(1, 'Oncology'		,'5'),
	(2, 'Dermatology' 	,'2'),
	(3, 'Opthalmology'  ,'3'),
	(4, 'Cardiology'	,'9'),
	(5, 'Neurology'		,'6')
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
		[Name],
		[Department]
		)
		VALUES
		(
		Source.[Name],
		Source.[Department]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
