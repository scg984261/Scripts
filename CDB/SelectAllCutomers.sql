USE CDB;
EXEC dbo.SelectAllCustomers;
EXEC dbo.SelectAllServices;


EXEC dbo.SelectSubscriptionsForCustomer @CustomerId = 16;

SET IDENTITY_INSERT dbo.Service OFF;

INSERT INTO dbo.Service
(Id, Name, Price, IsRecurring)
VALUES
(1, 'Test Service', 0.99, 1);

INSERT INTO dbo.Customer
(Id, CompanyName, BusinessContact, ContactNumber, EmailAddress)
VALUES 
(1000, 'Test Company Name', 'Test Business contact', '01234567899', 'TestEmailAddress@Provider.com')

EXEC dbo.InsertSubscription @CustomerId=1, @ServiceId=8

DELETE FROM dbo.Customer WHERE Id=1000

SELECT * FROM dbo.Customer
ORDER BY Id asc;

EXEC dbo.SelectServiceById @ServiceId=22;

EXEC dbo.SelectCustomerById @CustomerId=1;

SELECT *
FROM dbo.Subscription
WHERE CustomerId=16;

SELECT *
FROM dbo.Service
WHERE Id IN
(
	5,
	6,
	7
)

EXEC dbo.SelectSubscriptionById @SubscriptionId = 7

DELETE 
FROM dbo.Customer
WHERE Id > 25
-- ORDER BY CreatedDateTime DESC

GO

EXEC dbo.InsertService @Name='TEST_SERVICE4', @Price=6944231.958, @IsRecurring=1;

INSERT INTO dbo.Service

DROP PROCEDURE IF EXISTS dbo.UpdateCustomer;
GO

/*
UPDATE dbo.Customer
SET SageRef = 'BARCL'
WHERE Id = 18;
*/

CREATE PROCEDURE dbo.UpdateCustomer
(
	@CustomerId      INT,
	@CompanyName     NVARCHAR(256),
	@BusinessContact NVARCHAR(256),
	@EmailAddress    NVARCHAR(128),
	@ContactNumber   NVARCHAR(32),
	@IsActive        BIT
)
AS
BEGIN;
	UPDATE dbo.Customer
	SET CompanyName = @CompanyName,
	BusinessContact = @BusinessContact,
	EmailAddress = @EmailAddress,
	ContactNumber = @ContactNumber,
	IsActive = @IsActive
	WHERE Id = @CustomerId;
END;

 EXEC dbo.UpdateCustomer
	@CustomerId = 15,
	@CompanyName = 'Albany House Business Centres',
	@BusinessContact = 'Andy Gillen',
	@EmailAddress = 'AndyG@theanswercenter.co.uk',
	@ContactNumber = '07919367388',
	@IsActive = 1;

