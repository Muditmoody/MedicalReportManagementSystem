MERGE INTO Prescription AS Target
USING (VALUES
	(1 ,4 , 5 ,50.0000     , '2021-Jan-02' , '2023-Jul-30' , 'None'										),
	(2 ,5 , 5 ,1000.0000   , '2022-Mar-31' , '2023-Sep-01' , '3 times a day post meals.'				),
	(3 ,2 , 5 ,100.0000    , '2020-Apr-04' , '2025-Aug-22' , 'Twice per day'							),
	(4 ,1 , 1 ,500.0000    , '2021-Dec-15' , '2022-Oct-17' , 'Administer 2 hrs before eating'			),
	(5 ,3 , 4 ,50.0000     , '2019-Nov-24' , '2027-Jul-06' , 'Consume after meal. One tablet every day' )
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

ON Source.[Prescription_ID] = Target.[Prescription_ID]

WHEN MATCHED THEN
UPDATE SET  [Report_ID]					= Source.[Report_ID],
		    [Medicine_ID]				= Source.[Medicine_ID],
		    [Dosage]					= Source.[Dosage],
		    [Prescription_Start_Date]	= Source.[Prescription_Start_Date],
		    [Prescription_End_Date]		= Source.[Prescription_End_Date],
			[Comments]					= Source.[Comments]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Report_ID],
		[Medicine_ID],
		[Dosage],
		[Prescription_Start_Date],
		[Prescription_End_Date],
		[Comments]
		)

		VALUES
		(
		Source.[Report_ID],
		Source.[Medicine_ID],
		Source.[Dosage],
		Source.[Prescription_Start_Date],
		Source.[Prescription_End_Date],
		Source.[Comments]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
