MERGE INTO Hospital AS Target
USING (VALUES
    (1, '',1,1,'')
)
AS Source ([Hospital_ID],
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
INSERT ([Hospital_ID],
        [Hospital_Name],
        [City_ID],
        [Province_ID],
        [Contact]
       )
        VALUES
        (Source.[Hospital_ID],
        Source.[Hospital_Name],
        Source.[City_ID],
        Source.[Province_ID],
        Source.[Contact]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
