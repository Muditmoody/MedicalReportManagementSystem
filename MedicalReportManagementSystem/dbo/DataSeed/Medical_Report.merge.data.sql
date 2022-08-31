MERGE INTO Medical_Report AS Target
USING (VALUES
    ( 1,   '12-Dec-2006'	,1	,1	,3	,3	,1	),
    ( 2,   '06-Aug-2014'	,1	,2	,5	,4	,2	),
    ( 3,   '01-May-2022'	,1	,3	,2	,5	,1	),
    ( 4,   '04-Apr-2019'	,1	,4	,2	,1	,1	),
    ( 5,   '02-Mar-2019'	,0	,4	,2	,1	,5	),
    ( 6,   '05-Sep-2018'	,1	,5	,4	,5	,4	),
    ( 7,   '09-Mar-2020'	,1	,6	,3	,4	,2	),
    ( 8,   '04-Aug-2018'	,1	,6	,4	,1	,3	),
    ( 9,   '09-May-2020'	,0	,6	,1	,1	,4	),
    ( 10,  '05-Feb-2019'	,1	,7	,1	,5	,1	),
    ( 11,  '02-Mar-2017'	,1	,8	,3	,3	,5	),
    ( 12,  '12-Jun-2005'	,1	,9	,2	,3	,2	),
    ( 13,  '11-May-2015'	,1	,10	,1	,3	,5	),
    ( 14,  '10-Apr-2014'	,1	,10	,3	,2	,3	),
    ( 15,  '03-Jul-2014'	,1	,10	,3	,2	,1	)
)
AS Source (
            [Report_ID],
            [Report_Date],
            [IsValid],
            [Patient_ID],
            [MedicalCondition_ID],
            [Physician_ID],
            [Hospital_ID]
           )

ON Source.[Report_ID] = Target.[Report_ID]

WHEN MATCHED THEN
UPDATE SET
            [Patient_ID]	        = Source.[Patient_ID],
            [Report_Date]	        = Source.[Report_Date],
            [Physician_ID]	        = Source.[Physician_ID],
            [MedicalCondition_ID]	= Source.[MedicalCondition_ID],
            [Hospital_ID]	        = Source.[Hospital_ID],
            [IsValid]		        = Source.[IsValid]

WHEN NOT MATCHED BY Target THEN
INSERT (
        [Patient_ID],
        [Report_Date],
        [Physician_ID],
        [Hospital_ID],
        [MedicalCondition_ID],
        [IsValid]
       )
        VALUES
        (
        Source.[Patient_ID],
        Source.[Report_Date],
        Source.[Physician_ID],
        Source.[Hospital_ID],
        Source.[MedicalCondition_ID],
        Source.[IsValid]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
