MERGE INTO Province AS Target
USING (VALUES
    (1, 'Quebec'),
    (2, 'Ontario'),
    (3, 'Nova Scotia'),
    (4, 'New Brunswick'),
    (5, 'Manitoba'),
    (6, 'British Columbia'),
    (7, 'Prince Edward Island'),
    (8, 'Saskatchewan'),
    (9, 'Alberta'),
    (10, 'Newfoundland and Labrador')
)
AS Source (
            [Province_ID],
            [Province_Name]
          )

ON Source.[Province_ID] = Target.[Province_ID]

WHEN MATCHED THEN
UPDATE SET [Province_Name] = Source.[Province_Name]

WHEN NOT MATCHED BY Target THEN
INSERT (
        [Province_Name]
        )
        VALUES
        (
        Source.[Province_Name]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
