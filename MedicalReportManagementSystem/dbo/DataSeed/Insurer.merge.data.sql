MERGE INTO Insurer AS Target
USING (VALUES
    (1, '',1,1,'')
)
AS Source (
           [Insurer_ID],
           [Insurer_Name],
           [City_ID],
           [Province_ID],
           [Contact]
           )

ON Source.[Insurer_ID] = Target.[Insurer_ID]

WHEN MATCHED THEN
UPDATE SET [Insurer_Name]	= Source.[Insurer_Name],
           [City_ID]        = Source.[City_ID],
           [Province_ID]    = Source.[Province_ID],
           [Contact]		= Source.[Contact]

WHEN NOT MATCHED BY Target THEN
INSERT (
        [Insurer_ID],
        [Insurer_Name],
        [City_ID],
        [Province_ID],
        [Contact]
       )
        VALUES
        (
        Source.[Hospital_ID],
        Source.[Insurer_Name],
        Source.[City_ID],
        Source.[Province_ID],
        Source.[Contact]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
