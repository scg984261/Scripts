DECLARE @CustomerId INT = 1226;

DELETE
FROM dbo.Customer
WHERE Id > @CustomerId;

DECLARE @ServiceId INT = 22;

DELETE
FROM dbo.Service
WHERE Id > @ServiceId;
