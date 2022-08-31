MERGE INTO Hospital AS Target
USING (VALUES
    (1, 'Montreal General Hospital' , 1, 1, '+1-5149341934'),
    (2, 'Jean Talon Hospital'       , 1, 1, '+1-5144956767'),
    (3, 'Royal Victoria Hospital'   , 1, 1, '+1-5149341934'),
    (4, 'Toronto General Hospital'  , 4, 2, '+1-4163403131'),
    (5, 'Vancouver General Hospital', 5, 6, '+1-6048754111')
)
AS Source (
           [Hospital_ID],
           [Hospital_Name],
           [City_ID],
           [Province_ID],
           [Contact]
           )

ON Source.[Hospital_ID] = Target.[Hospital_ID]

WHEN MATCHED THEN
UPDATE SET [Hospital_Name] = Source.[Hospital_Name],
           [City_ID]	   = Source.[City_ID],
           [Province_ID]   = Source.[Province_ID],
           [Contact]	   = Source.[Contact]

WHEN NOT MATCHED BY Target THEN
INSERT (
        [Hospital_Name],
        [City_ID],
        [Province_ID],
        [Contact]
       )
        VALUES
        (
        Source.[Hospital_Name],
        Source.[City_ID],
        Source.[Province_ID],
        Source.[Contact]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
