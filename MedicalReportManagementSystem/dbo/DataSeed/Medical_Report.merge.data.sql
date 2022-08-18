MERGE INTO Medical_Report AS Target
USING (VALUES
    (1,1, '2022-Jan-1',1,1,'Y')
)
AS Source (
            [Report_ID],
            [Patient_ID],
            [Report_Date],
            [Physician_ID],
            [Hospital_ID],
            [IsValid]
           )

ON Source.[Report_ID] = Target.[Report_ID]

WHEN MATCHED THEN
UPDATE SET
            [Patient_ID]	= Source.[Patient_ID],
            [Report_Date]	= Source.[Report_Date],
            [Physician_ID]	= Source.[Physician_ID],
            [Hospital_ID]	= Source.[Hospital_ID],
            [IsValid]		= Source.[IsValid]

WHEN NOT MATCHED BY Target THEN
INSERT (
        [Report_ID],
        [Patient_ID],
        [Report_Date],
        [Physician_ID],
        [Hospital_ID],
        [IsValid]
       )
        VALUES
        (
        Source.[Report_ID],
        Source.[Patient_ID],
        Source.[Report_Date],
        Source.[Physician_ID],
        Source.[Hospital_ID],
        Source.[IsValid]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
