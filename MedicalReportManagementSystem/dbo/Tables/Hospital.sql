CREATE TABLE [dbo].[Hospital]
(
    [Hospital_ID]		INT NOT NULL IDENTITY(1,1),
    [Hospital_Name]		VARCHAR(100),
    [City_ID]			INT,
    [Province_ID]		INT,
    [Contact]			VARCHAR(50),

    CONSTRAINT PK_Hospital PRIMARY KEY (Hospital_ID),
    CONSTRAINT FK_City_Hospital FOREIGN KEY (City_ID) REFERENCES [City](City_ID),
    CONSTRAINT FK_Province_Hospital FOREIGN KEY (Province_ID) REFERENCES [Province](Province_ID)
)
