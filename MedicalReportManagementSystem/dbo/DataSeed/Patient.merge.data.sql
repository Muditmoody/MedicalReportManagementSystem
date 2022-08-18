MERGE INTO Patient AS Target
USING (VALUES
	(1, '','','','',1,1,'','')
)
AS Source (
			[Patient_ID],
			[First_Name],
			[Last_Name],
			[Date_of_birth],
			[Gender],
			[City_ID],
			[Province_ID],
			[Primary_Contact],
			[Secondary_Contact]
		  )

ON Source.[Patient_ID] = Target.[Patient_ID]

WHEN MATCHED THEN
UPDATE SET [First_Name]			= Source.[First_Name],
		   [Last_Name]			= Source.[Last_Name],
		   [Date_of_birth]		= Source.[Date_of_birth],
		   [Gender]				= Source.[Gender],
		   [City_ID]			= Source.[City_ID],
		   [Province_ID]		= Source.[Province_ID],
		   [Primary_Contact]	= Source.[Primary_Contact],
		   [Secondary_Contact]	= Source.[Secondary_Contact]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Patient_ID],
		[First_Name],
		[Last_Name],
		[Date_of_birth],
		[Gender],
		[City_ID],
		[Province_ID],
		[Primary_Contact],
		[Secondary_Contact]
		)

		VALUES
		(
		Source.[First_Name],
		Source.[Last_Name],
		Source.[Date_of_birth],
		Source.[Gender],
		Source.[City_ID],
		Source.[Province_ID],
		Source.[Primary_Contact],
		Source.[Secondary_Contact]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
