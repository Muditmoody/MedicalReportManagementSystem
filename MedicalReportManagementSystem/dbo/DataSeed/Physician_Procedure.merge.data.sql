MERGE INTO [Physician_Specilization] AS Target
USING (VALUES
    (1, 1,'')
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
