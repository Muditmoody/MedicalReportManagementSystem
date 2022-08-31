MERGE INTO Hospital_Procedure AS Target
USING (VALUES
    (1,	1),
    (2,	1),
    (3,	1),
    (4,	1),
    (5,	1),
    (1,	2),
    (2,	2),
    (3,	2),
    (4,	2),
    (5,	2),
    (1,	3),
    (2,	3),
    (3,	3),
    (4,	3),
    (5,	3),
    (1,	4),
    (2,	4),
    (3,	4),
    (4,	4),
    (5,	4),
    (1,	5),
    (2,	5),
    (3,	5),
    (4,	5),
    (5,	5)
)
AS Source (
            [Hospital_ID],
            [Procedure_ID]
          )

ON Source.[Hospital_ID] = Target.[Hospital_ID]
   AND Source.[Procedure_ID] = Target.[Procedure_ID]

WHEN NOT MATCHED BY Target THEN
INSERT ( [Hospital_ID],
         [Procedure_ID]
       )
        VALUES
        (
        Source.[Hospital_ID],
        Source.[Procedure_ID]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
