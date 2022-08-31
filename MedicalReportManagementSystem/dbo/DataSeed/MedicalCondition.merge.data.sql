MERGE INTO MedicalCondition AS Target
USING (VALUES
	(1, N'Hepatitis A'),
	(2, N'Hepatitis B'),
	(3, N'Hepatitis C'),
	(4, N'Liver Cancer'),
	(5, N'Cirrhosis')
)
AS Source (
			[MedicalCondition_ID],
			[Condition_Name]
		  )

ON Source.[MedicalCondition_ID] = Target.[MedicalCondition_ID]

WHEN MATCHED THEN
UPDATE SET [Condition_Name]	= Source.[Condition_Name]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Condition_Name]
		)
		VALUES
		(
		Source.[Condition_Name]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
