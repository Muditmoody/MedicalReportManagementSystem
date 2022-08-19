MERGE INTO Prescription AS Target
USING (VALUES
	(1,1,1,'','2022-Jan-1','2022-Dec-31','')
)
AS Source (
			[Prescription_ID],
			[Report_ID],
			[Medicine_ID],
			[Dosage],
			[Prescription_Start_Date],
			[Prescription_End_Date],
			[Comments]
		  )

ON Source.[Physician_ID] = Target.[Physician_ID]

WHEN MATCHED THEN
UPDATE SET  [Report_ID]					= Source.[Report_ID],
		    [Medicine_ID]				= Source.[Medicine_ID],
		    [Dosage]					= Source.[Dosage],
		    [Prescription_Start_Date]	= Source.[Prescription_Start_Date],
		    [Prescription_End_Date]		= Source.[Prescription_End_Date],
			[Comments]					= Source.[Comments]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Prescription_ID],
		[Report_ID],
		[Medicine_ID],
		[Dosage],
		[Prescription_Start_Date],
		[Prescription_End_Date],
		[Comments]
		)

		VALUES
		(
		Source.[Prescription_ID],
		Source.[Report_ID],
		Source.[Medicine_ID],
		Source.[Dosage],
		Source.[Prescription_Start_Date],
		Source.[Prescription_End_Date],
		Source.[Comments]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
