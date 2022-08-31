MERGE INTO Insurance_Policy AS Target
USING (VALUES
       (1	,'D267488' ,4	,1 , '2016-Mar-03' , '2024-Mar-03' , NULL),
       (2	,'F555422' ,7	,5 , '2000-Sep-14' , '2009-Sep-14' , NULL),
       (3	,'G874979' ,5	,4 , '2015-Jun-04' , '2021-Jun-04' , NULL),
       (4	,'A348389' ,6	,2 , '2017-Sep-07' , '2021-Sep-07' , NULL),
       (5	,'D277878' ,2	,5 , '2012-Oct-06' , '2020-Apr-07' , NULL),
       (6	,'D349719' ,9	,3 , '2010-Oct-06' , '2016-Oct-06' , NULL),
       (7	,'A978723' ,1	,3 , '2000-Aug-09' , '2013-Nov-21' , NULL),
       (8	,'A984376' ,8	,1 , '2015-Feb-15' , '2022-Feb-15' , NULL),
       (9	,'F989768' ,10	,4 , '2013-Sep-17' , '2018-Sep-17' , NULL),
       (10  ,'F399928' ,3	,1 , '2018-Dec-12' , '2023-Dec-12' , NULL)
)
AS Source (
           [Policy_ID],
           [Policy_Reference_Number],
           [Patient_ID],
           [Insurer_ID],
           [Policy_Start_Date],
           [Policy_End_Date],
           [Comments]
           )

ON Source.[Policy_ID] = Target.[Policy_ID]

WHEN MATCHED THEN
UPDATE SET [Policy_Reference_Number] = Source.[Policy_Reference_Number],
           [Patient_ID]				 = Source.[Patient_ID],
           [Insurer_ID]				 = Source.[Insurer_ID],
           [Policy_Start_Date]		 = Source.[Policy_Start_Date],
           [Policy_End_Date]		 = Source.[Policy_End_Date],
           [Comments]				 = Source.[Comments]

WHEN NOT MATCHED BY Target THEN
INSERT (
        [Policy_Reference_Number],
        [Patient_ID],
        [Insurer_ID],
        [Policy_Start_Date],
        [Policy_End_Date],
        [Comments]
       )
        VALUES
        (
        Source.[Policy_Reference_Number],
        Source.[Patient_ID],
        Source.[Insurer_ID],
        Source.[Policy_Start_Date],
        Source.[Policy_End_Date],
        Source.[Comments]
        )

WHEN NOT MATCHED BY Source THEN
DELETE;
