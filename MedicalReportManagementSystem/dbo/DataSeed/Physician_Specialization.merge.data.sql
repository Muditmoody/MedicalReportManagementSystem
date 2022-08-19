MERGE INTO Physician_Procedure AS Target
USING (VALUES
    (1, 1)
)
AS Source (
            [Physician_ID],
            [Procedure_ID]
          )

ON Source.[Physician_ID] = Target.[Physician_ID]
   AND Source.[Procedure_ID] = Target.[Procedure_ID]

WHEN NOT MATCHED BY Target THEN
INSERT ( [Physician_ID],
         [Procedure_ID]
       )
        VALUES
        (
        Source.[Physician_ID],
        Source.[Procedure_ID]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
