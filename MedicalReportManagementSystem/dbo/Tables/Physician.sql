CREATE TABLE [dbo].[Physician]
(
    [Physician_ID]  INT NOT NULL,
    [First_Name]    VARCHAR(50),
    [Last_Name]     VARCHAR(50),
    [Address_ID]    INT,
    [Contact]       VARCHAR(50),
    CONSTRAINT PK_Physician PRIMARY KEY (Physician_ID),
    CONSTRAINT FK_Address_Physician FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID)
)
