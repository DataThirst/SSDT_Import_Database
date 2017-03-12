
CREATE PROCEDURE Customer.GetAll
AS

SELECT CustomerID, CustomerName, EmailAddress
FROM Customer.Account