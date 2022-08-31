MERGE INTO Medicine AS Target
USING (VALUES
(1 , 'Paracip'			, 'Paracetamol/ Acetaminophen'													,2  ,'Skin rash or dermatitis', 'Shake well before use.'					  ,4  , 500.00),
(2 , 'Digene'			, 'Dries Aluminium Hydroxide, Magnesium Aluminium Silicate Hydrate, Simethicone',5  ,'Dizziness'			  , 'Keep out of childrens reach'				  ,1  , 880.00),
(3 , 'Voliniused'		, 'Diclofenac diethylamine BP, Linseed Oil BP (Oleum Lini), methyl salicylate'	,4  ,'Headache'				  , '1 tablet for children. 2 tablets for adults.',5  , 233.60),
(4 , 'Vomikind'			, 'Ondansetron'																	,1  ,'Insomnia'				  , 'Don’t consume if allergic to nuts'			  ,3  , 129.90),
(5 , 'Albuterol Sulfate', 'Anisodamine'																	,5  ,'Nausea'				  , 'Shake well before use.'					  ,2  , 45.00 )
)
AS Source (
			[Medicine_ID],
			[Medicine_Name],
			[Composition],
			[Potency],
			[Side_Effects],
			[Comments],
			[MedicalCondition_ID],
			[Med_Price]
		  )

ON Source.[Medicine_ID] = Target.[Medicine_ID]

WHEN MATCHED THEN
UPDATE SET [Medicine_Name]			= Source.[Medicine_Name],
		   [Composition]			= Source.[Composition],
		   [Potency]				= Source.[Potency],
		   [Side_Effects]			= Source.[Side_Effects],
		   [Comments]				= Source.[Comments],
		   [MedicalCondition_ID]	= Source.[MedicalCondition_ID],
		   [Med_Price]				= Source.[Med_Price]

WHEN NOT MATCHED BY Target THEN
INSERT (
		[Medicine_Name],
		[Composition],
		[Potency],
		[Side_Effects],
		[Comments],
		[MedicalCondition_ID],
		[Med_Price]
		)

		VALUES
		(
		Source.[Medicine_Name],
		Source.[Composition],
		Source.[Potency],
		Source.[Side_Effects],
		Source.[Comments],
		Source.[MedicalCondition_ID],
		Source.[Med_Price]
		)

WHEN NOT MATCHED BY Source THEN
DELETE;
