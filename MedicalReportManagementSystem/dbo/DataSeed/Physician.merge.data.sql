MERGE INTO Physician AS Target
USING (VALUES
	(1, 'Mario'	   , 'Dupont'	, 1, 1, '+1-4385550182'),
	(2, 'Gabriel'  , 'Ong'		, 5, 6, '+1-6045100193'),
	(3, 'Linnea'   , 'Yalong'	, 1, 1, '+1-5140397741'),
	(4, 'Srudhi'   , 'Kumar'	, 4, 2, '+1-4160586308'),
	(5, 'Karim'    , 'Ahmed'	, 1, 1, '+1-4387709322')
)
AS Source (
			[Physician_ID],
			[First_Name],
			[Last_Name],
			[City_ID],
			[Province_ID],
			[Contact]
		  )

ON Source.[Physician_ID] = Target.[Physician_ID]

WHEN MATCHED THEN
UPDATE SET  [First_Name]         = Source.[First_Name],
		    [Last_Name]          = Source.[Last_Name],
		    [City_ID]            = Source.[City_ID],
		    [Province_ID]        = Source.[Province_ID],
		    [Contact]            = Source.[Contact]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[First_Name],
		[Last_Name],
		[City_ID],
		[Province_ID],
		[Contact]
		)

		VALUES
		(
		Source.[First_Name],
		Source.[Last_Name],
		Source.[City_ID],
		Source.[Province_ID],
		Source.[Contact]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
