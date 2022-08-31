MERGE INTO [Report_Procedure] AS Target
USING (VALUES
	(1 , 1 , 1	, '10-Jul-2021'),
	(2 , 2 , 3	, '02-Mar-2019'),
	(3 , 2 , 4	, '16-Dec-2012'),
	(4 , 3 , 10	, '10-Apr-2020'),
	(5 , 4 , 11	, '06-Jun-2016'),
	(6 , 5 , 7	, '29-Oct-2019'),
	(7 , 2 , 8	, '12-Sep-2015'),
	(8 , 3 , 15	, '09-Oct-2020')
)
AS Source (
			[Report_Procedure_ID],
			[Procedure_ID],
			[Report_ID],
			[Procedure_Date]
		  )

ON Source.[Report_Procedure_ID] = Target.[Report_Procedure_ID]

WHEN MATCHED THEN
UPDATE SET [Procedure_ID]		= Source.[Procedure_ID],
		   [Report_ID]			= Source.[Report_ID],
		   [Procedure_Date]		= Source.[Procedure_Date]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Procedure_ID],
		[Report_ID],
		[Procedure_Date]
		)
		VALUES
		(
		Source.[Procedure_ID],
		Source.[Report_ID],
		Source.[Procedure_Date]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
