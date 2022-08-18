MERGE INTO Hospital_Procedure AS Target
USING (VALUES
    (1, 1)
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
