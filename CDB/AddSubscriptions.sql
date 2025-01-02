SELECT * FROM dbo.Customer
SELECT * FROM dbo.Service
SELECT * FROM dbo.Subscription;

EXEC dbo.InsertSubscription
	@CustomerId = 20,
	@ServiceId = 8;

SELECT * FROM dbo.Subscription;

DECLARE @CustomerId INT = 18;

EXEC dbo.SelectCustomerById @CustomerId = @CustomerId;

SELECT sub.Id AS 'SubscriptionId', cust.CompanyName, cust.BusinessContact, serv.Name AS 'ServiceName', serv.Price, sub.CreatedDateTime
FROM dbo.Subscription sub
JOIN dbo.Customer cust
ON cust.Id = sub.CustomerId
JOIN dbo.Service serv
ON serv.Id = sub.ServiceId
WHERE sub.CustomerId = @CustomerId;