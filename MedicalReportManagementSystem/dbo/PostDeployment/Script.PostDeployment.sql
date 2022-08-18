/*
Post-Deployment Script Template
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.
 Use SQLCMD syntax to include a file in the post-deployment script.
 Example:      :r .\myfile.sql
 Use SQLCMD syntax to reference a variable in the post-deployment script.
 Example:      :setvar TableName MyTable
               SELECT * FROM [$(TableName)]
--------------------------------------------------------------------------------------
*/

:r "..\DataSeed\Patient.merge.data.sql"
GO
:r "..\DataSeed\City.merge.data.sql"
GO
:r "..\DataSeed\Gender.merge.data.sql"
GO
:r "..\DataSeed\Hospital.merge.data.sql"
GO
:r "..\DataSeed\Hospital_Physician.merge.data.sql"
GO
:r "..\DataSeed\Hospital_Procedure.merge.data.sql"
GO
:r "..\DataSeed\Insurance_Policy.merge.data.sql"
GO
:r "..\DataSeed\Insurer.merge.data.sql"
GO
:r "..\DataSeed\Medical_Procedure.merge.data.sql"
GO
:r "..\DataSeed\Medical_Report.merge.data.sql"
GO
:r "..\DataSeed\Medicine.merge.data.sql"
GO