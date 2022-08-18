MERGE INTO Insurance_Policy AS Target
USING (VALUES
    (1, '',1,1,'2022-Jan-1','2022-Dec-31','')
)
AS Source (
           [Policy_ID],
           [Policy_Reference_Number],
           [Patient_ID],
           [Insurer_ID],
           [Policy_Start_Date],
           [Policy_End_Date],
           [Comments]
           )

ON Source.[Policy_ID] = Target.[Policy_ID]

WHEN MATCHED THEN
UPDATE SET [Policy_Reference_Number] = Source.[Policy_Reference_Number],
           [Patient_ID]				 = Source.[Patient_ID],
           [Insurer_ID]				 = Source.[Insurer_ID],
           [Policy_Start_Date]		 = Source.[Policy_Start_Date],
           [Policy_End_Date]		 = Source.[Policy_End_Date],
           [Comments]				 = Source.[Comments]

WHEN NOT MATCHED BY Target THEN
INSERT (
        [Policy_ID],
        [Policy_Reference_Number],
        [Patient_ID],
        [Insurer_ID],
        [Policy_Start_Date],
        [Policy_End_Date],
        [Comments]
       )
        VALUES
        (
        Source.[Policy_ID],
        Source.[Policy_Reference_Number],
        Source.[Patient_ID],
        Source.[Insurer_ID],
        Source.[Policy_Start_Date],
        Source.[Policy_End_Date],
        Source.[Comments]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
