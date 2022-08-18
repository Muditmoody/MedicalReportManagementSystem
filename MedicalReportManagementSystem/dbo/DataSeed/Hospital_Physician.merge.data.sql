﻿MERGE INTO Hospital_Physician AS Target
USING (VALUES
    (1, 1,'2022-Jan-10')
)
AS Source ([Hospital_ID],
           [Physician_ID],
           [Employment_Start_Date]
          )

ON Source.[Hospital_ID] = Target.[Hospital_ID]
   AND Source.[Physician_ID] = Target.[Physician_ID]

WHEN MATCHED THEN
UPDATE SET [Employment_Start_Date] = Source.[Employment_Start_Date]

WHEN NOT MATCHED BY Target THEN
INSERT ( [Hospital_ID],
         [Physician_ID],
         [Employment_Start_Date]
       )
        VALUES
        (
        Source.[Hospital_ID],
        Source.[Physician_ID],
        Source.[Employment_Start_Date]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
