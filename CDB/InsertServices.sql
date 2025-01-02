SELECT * FROM dbo.Service

DELETE FROM dbo.Service;

EXEC dbo.InsertService
	@Name = 'CALLSANSWERED',
	@Price = 1.25;

EXEC dbo.InsertService
	@Name = 'CALLSANSWEREDBASIC',
	@Price = 1.50;

EXEC dbo.InsertService
	@Name = 'CALLSANSWEREDPREMIUM',
	@Price = 3.00;

EXEC dbo.InsertService
	@Name = 'CALLSANSWEREDREGULAR',
	@Price = 1.75;

/*
EXEC dbo.UpdateServicePrice
	@ServiceId=4, @NewPrice=1.75;


EXEC dbo.
*/