CREATE TABLE [dbo].[Patient]
(
    [Patient_ID]        INT NOT NULL IDENTITY(1,1),
    [First_Name]        VARCHAR(100) NOT NULL,
    [Last_Name]         VARCHAR(100),
    [Date_of_birth]     DATETIME,
    [Gender]            INT,
    [City_ID]           INT,
    [Province_ID]       INT,
    [Primary_Contact]   INT,
    [Secondary_Contact] INT,

    CONSTRAINT PK_Patient PRIMARY KEY (Patient_ID),
    CONSTRAINT FK_Gender_Patient FOREIGN KEY (Gender) REFERENCES [Gender](Gender_ID),
    CONSTRAINT FK_City_Patient FOREIGN KEY (City_ID) REFERENCES [City](City_ID),
    CONSTRAINT FK_Province_Patient FOREIGN KEY (Province_ID) REFERENCES [Province](Province_ID)
)
