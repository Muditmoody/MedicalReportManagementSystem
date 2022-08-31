MERGE INTO [Physician_Specilization] AS Target
USING (VALUES
    ( 1 , 1 , 'Advanced'),
    ( 2 , 1 , 'Limited'),
    ( 3 , 1 , 'Limited'),
    ( 4 , 1 , 'Limited'),
    ( 5 , 1 , 'Advanced'),
    ( 1 , 2 , 'Advanced'),
    ( 2 , 2 , 'Advanced'),
    ( 3 , 2 , 'Limited'),
    ( 4 , 2 , 'Advanced'),
    ( 5 , 2 , 'Limited'),
    ( 1 , 3 , 'Limited'),
    ( 2 , 3 , 'Limited'),
    ( 3 , 3 , 'Limited'),
    ( 4 , 3 , 'Limited'),
    ( 5 , 3 , 'Advanced'),
    ( 1 , 4 , 'Limited'),
    ( 2 , 4 , 'Advanced'),
    ( 3 , 4 , 'Limited'),
    ( 4 , 4 , 'Advanced'),
    ( 5 , 4 , 'Limited'),
    ( 1 , 5 , 'Advanced'),
    ( 2 , 5 , 'Advanced'),
    ( 3 , 5 , 'Advanced'),
    ( 4 , 5 , 'Limited'),
    ( 5 , 5 , 'Limited')
)
AS Source (
            [Physician_ID],
            [Specialization_ID],
            [Proficiency]
          )

ON Source.[Physician_ID] = Target.[Physician_ID]
   AND Source.[Specialization_ID] = Target.[Specialization_ID]

WHEN NOT MATCHED BY Target THEN
INSERT ( [Physician_ID],
         [Specialization_ID],
         [Proficiency]
       )
        VALUES
        (
        Source.[Physician_ID],
        Source.[Specialization_ID],
        Source.[Proficiency]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
