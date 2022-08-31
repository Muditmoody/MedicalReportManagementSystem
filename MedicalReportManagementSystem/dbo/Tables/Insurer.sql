CREATE TABLE [dbo].[Insurer]
(
    [Insurer_ID]		INT NOT NULL IDENTITY(1,1),
    [Insurer_Name]		VARCHAR(100),
    [City_ID]           INT NULL,
    [Province_ID]       INT NULL,
    [Contact]			VARCHAR(100),

    CONSTRAINT PK_Insurer PRIMARY KEY (Insurer_ID),
    CONSTRAINT FK_City_Insurer FOREIGN KEY (City_ID) REFERENCES [City](City_ID),
    CONSTRAINT FK_Province_Insurer FOREIGN KEY (Province_ID) REFERENCES [Province](Province_ID)
)
