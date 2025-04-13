DECLARE @CustomerId INT = 1198;

EXEC dbo.UpdateCustomer
	@CustomerId = @CustomerId,
	@CompanyName = 'Barclays UK 123456',
	@BusinessContact='Scott Cameron Gillen',
	@EmailAddress='scottgillen@hotmail.com',
	@ContactNumber='09421956478',
	@IsActive=1;
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

	EXEC dbo.SelectCustomerById @CustomerId = @CustomerId;
END;


DROP PROCEDURE IF EXISTS dbo.SelectCustomerById;
GO

CREATE PROCEDURE dbo.SelectCustomerById
(
	@CustomerId INT
)
AS
BEGIN;
	SELECT Id, CompanyName, BusinessContact, EmailAddress, ContactNumber, IsActive, CreatedDateTime, LastUpdateDateTime
	FROM dbo.Customer
	WHERE Id = @CustomerId;
END;

GO

DROP TRIGGER IF EXISTS dbo.CustomerAfterUpdateTrigger;
GO

CREATE TRIGGER dbo.CustomerAfterUpdateTrigger
ON dbo.Customer
AFTER UPDATE
AS
BEGIN;
	-- DECLARE @CurrentDateTime DATETIME = GETDATE();

	UPDATE cust
	SET EmailAddress = 'TestEmail@Address.com'
	FROM dbo.Customer cust, inserted ins
	WHERE cust.Id = ins.Id;
END;

GO