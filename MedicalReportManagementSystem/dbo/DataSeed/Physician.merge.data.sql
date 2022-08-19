MERGE INTO Physician AS Target
USING (VALUES
	(1, '','',1,1,'')
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
		[Physician_ID],
		[First_Name],
		[Last_Name],
		[City_ID],
		[Province_ID],
		[Contact]
		)

		VALUES
		(
		Source.[Physician_ID],
		Source.[First_Name],
		Source.[Last_Name],
		Source.[City_ID],
		Source.[Province_ID],
		Source.[Contact]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
