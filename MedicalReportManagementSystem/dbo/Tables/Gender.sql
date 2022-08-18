CREATE TABLE [dbo].[Gender]
(
    [Gender_ID]		INT NOT NULL IDENTITY(1,1),
    [Gender_Name]	VARCHAR(10),

    CONSTRAINT PK_Gender PRIMARY KEY (Gender_ID)
)
