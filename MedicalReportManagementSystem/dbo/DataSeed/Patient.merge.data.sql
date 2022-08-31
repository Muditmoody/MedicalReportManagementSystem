MERGE INTO Patient AS Target
USING (VALUES
    (1,'Michael'	,'Scott'	 ,'1-Jan-1960', 1 , 3 , 8 , '+1-5123838733' , '+1-3783746284'),
    (2,'Rachel'	,'Green'	 ,'1-Jan-1965', 2 , 5 , 2 , '+1-2172187349' , '+1-8736746789'),
    (3,'Jim'	    ,'Halpert'	 ,'1-Jan-1983', 1 , 8 , 1 , '+1-9374623522' , '+1-7641827367'),
    (4,'Joseph'	,'Tribbiani' ,'1-Jan-1973', 1 , 4 , 5 , '+1-2367245625' , '+1-7637571299'),
    (5,'Sheldon'	,'Cooper'	 ,'1-Jan-1970', 1 , 1 , 3 , '+1-2685945979' , '+1-7863527384'),
    (6,'William'	,'Watson'	 ,'1-Jan-1979', 1 , 7 , 7 , '+1-2828637451' , '+1-7386957466'),
    (7,'Betty'	,'Wallaker'	 ,'1-Jan-1961', 2 , 8 , 2 , '+1-8738263548' , '+1-7762535647'),
    (8,'Monica'	,'Geller'	 ,'1-Jan-1982', 2 , 3 , 3 , '+1-8759984376' , '+1-1873847874'),
    (9,'Ryan'		,'Hoffman'	 ,'1-Jan-1979', 1 , 8 , 7 , '+1-6565235351' , '+1-6236794579'),
    (10,'David'	,'West'		 ,'1-Jan-1982', 1 , 6 , 6 , '+1-2388659865' , '+1-3242767568')
)
AS Source (
            [Patient_ID],
            [First_Name],
            [Last_Name],
            [Date_of_birth],
            [Gender],
            [City_ID],
            [Province_ID],
            [Primary_Contact],
            [Secondary_Contact]
          )

ON Source.[Patient_ID] = Target.[Patient_ID]

WHEN MATCHED THEN
UPDATE SET [First_Name]			= Source.[First_Name],
           [Last_Name]			= Source.[Last_Name],
           [Date_of_birth]		= Source.[Date_of_birth],
           [Gender]				= Source.[Gender],
           [City_ID]			= Source.[City_ID],
           [Province_ID]		= Source.[Province_ID],
           [Primary_Contact]	= Source.[Primary_Contact],
           [Secondary_Contact]	= Source.[Secondary_Contact]

WHEN NOT MATCHED BY Target THEN
INSERT (
        [First_Name],
        [Last_Name],
        [Date_of_birth],
        [Gender],
        [City_ID],
        [Province_ID],
        [Primary_Contact],
        [Secondary_Contact]
        )

        VALUES
        (
        Source.[First_Name],
        Source.[Last_Name],
        Source.[Date_of_birth],
        Source.[Gender],
        Source.[City_ID],
        Source.[Province_ID],
        Source.[Primary_Contact],
        Source.[Secondary_Contact]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
