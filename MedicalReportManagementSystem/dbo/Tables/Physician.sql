CREATE TABLE [dbo].[Physician]
(
    [Physician_ID]      INT NOT NULL IDENTITY(1,1),
    [First_Name]        VARCHAR(50),
    [Last_Name]         VARCHAR(50),
    [City_ID]           INT,
    [Province_ID]       INT,
    [Contact]           VARCHAR(50),

    CONSTRAINT PK_Physician PRIMARY KEY (Physician_ID),
    CONSTRAINT FK_City_Physician FOREIGN KEY (City_ID) REFERENCES [City](City_ID),
    CONSTRAINT FK_Province_Physician FOREIGN KEY (Province_ID) REFERENCES [Province](Province_ID)
)
