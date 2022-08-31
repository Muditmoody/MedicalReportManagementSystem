MERGE INTO Medical_Procedure AS Target
USING (VALUES
	(1, 'Transplant'		, CAST(10000.00  AS Decimal(10, 2))),
	(2, 'Chemotherapy'		, CAST(67000.00  AS Decimal(10, 2))),
	(3, 'Radiation'			, CAST(77000.00  AS Decimal(10, 2))),
	(4, 'Cryoablation'		, CAST(112000.00 AS Decimal(10, 2))),
	(5, 'Hormone Therapy'	, CAST(90000.00  AS Decimal(10, 2)))
)
AS Source (
			[Procedure_ID],
		    [Procedure_Name],
			[Procedure_Cost]
		  )

ON Source.[Procedure_ID] = Target.[Procedure_ID]

WHEN MATCHED THEN
UPDATE SET [Procedure_Name] = Source.[Procedure_Name],
		   [Procedure_Cost] = Source.[Procedure_Cost]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Procedure_Name],
		[Procedure_Cost]
		)
		VALUES
		(
		Source.[Procedure_Name],
		Source.[Procedure_Cost]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;