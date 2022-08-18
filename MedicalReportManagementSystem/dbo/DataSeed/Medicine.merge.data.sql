MERGE INTO Medicine AS Target
USING (VALUES
	(1, '','','','','')
)
AS Source (
			[Medicine_ID],
			[Medicine_Name],
			[Composition],
			[Potency],
			[Side_Effects],
			[Comments]
		  )

ON Source.[Medicine_ID] = Target.[Medicine_ID]

WHEN MATCHED THEN
UPDATE SET [Medicine_Name]	= Source.[Medicine_Name],
		   [Composition]	= Source.[Composition],
		   [Potency]		= Source.[Potency],
		   [Side_Effects]	= Source.[Side_Effects],
		   [Comments]		= Source.[Comments]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Medicine_ID],
		[Medicine_Name],
		[Composition],
		[Potency],
		[Side_Effects],
		[Comments]
		)

		VALUES
		(
		Source.[Medicine_ID],
		Source.[Medicine_Name],
		Source.[Composition],
		Source.[Potency],
		Source.[Side_Effects],
		Source.[Comments]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
