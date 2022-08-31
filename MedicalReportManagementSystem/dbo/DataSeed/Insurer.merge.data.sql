MERGE INTO Insurer AS Target
USING (VALUES
    (1, 'Blue Cross Canada'         , 3, 9, '+1-8236784365'),
    (2, 'Sun Life Assurance Company', 7, 2, '+1-6474588732'),
    (3, 'Green Shield Canada'       , 4, 1, '+1-2873778658'),
    (4, 'Manulife'                  , 6, 3, '+1-3873674653'),
    (5, 'Group Medical Services'    , 8, 2, '+1-8738647293')
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
        [Insurer_Name],
        [City_ID],
        [Province_ID],
        [Contact]
       )
        VALUES
        (
        Source.[Insurer_Name],
        Source.[City_ID],
        Source.[Province_ID],
        Source.[Contact]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
