CREATE TABLE [dbo].[City]
(
    [City_ID]		INT NOT NULL IDENTITY(1,1),
    [City_Name]		VARCHAR(50),

    CONSTRAINT PK_City PRIMARY KEY(City_ID)
)
