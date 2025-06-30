
-- We create a view of the transformed data and select all the data from the VIEW to ensure our data is ready for testing.

CREATE VIEW CleanRetailSales AS
SELECT *
FROM [dbo].[Retail Sales Dataset csv]
GO

SELECT *
FROM CleanRetailSales