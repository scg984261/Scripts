USE CDB;

EXEC dbo.SelectAllCustomers;

GO

DROP PROCEDURE IF EXISTS dbo.UpdateCustomer;
GO

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

EXEC dbo.SelectCustomerById @CustomerId=20;