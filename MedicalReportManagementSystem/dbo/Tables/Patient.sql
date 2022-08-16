CREATE TABLE [dbo].[Patient]
(
	[Patient_ID] INT NOT NULL ,
    [Patient_Name] VARCHAR(100) NULL,
    [Date_of_birth] DATETIME NULL,
    [Gender] CHAR(1) NULL,
    [Primary_Contact] INT NULL,
    [Secondary_Contact] INT NULL,
    [Address_ID] INT,
    CONSTRAINT PK_Patient PRIMARY KEY (Patient_Id),
    CONSTRAINT FK_Address_Patient FOREIGN KEY ([Address_ID]) REFERENCES [Address]([Address_ID])
)
