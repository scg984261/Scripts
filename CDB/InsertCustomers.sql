USE CDB;

DELETE FROM dbo.Customer;

INSERT INTO dbo.Customer
(CompanyName, BusinessContact, EmailAddress, ContactNumber)
VALUES
('Hudson House Business Centres', 'Niall Gillen', 'enquiries@hudsonhouse.co.uk', '01314732300'),
('Regus', 'Renata Zimmerman', 'renata.zimmerman3@regus.com', '020 3839 9912'),
('UBCUK', 'Cristelle Lawry', 'sales@ubcuk.com', '01312216500'),
('Barclays Bank PLC', 'John Wilson', 'john.wilson7@barclays.com', NULL),
('Natwest Group PLC', 'Pamela Roberts', 'p.roberts@nwg.org.uk', '+44 20 984 1847 6'),
('15 Queen Street', 'Paloma Roberts', 'hello@crown-collection.uk', '0131 6037 372'),
('The Auction Rooms', 'Josiah McPherson', 'info@theauctionrooms.co.uk', '+447990199712'),
('Thistle Court', 'Steve Watkins', 'enquiries@thistlecourtbiz.co.uk', '01312202087/07747863785'),
('Capital Business Centre', 'Chelsea Davonport', 'chelsea.davonport@cbchouse.co.uk', '0131 221 1234'),
('Cubo Work', 'John Smith', 'john.smith@cubowork.co.uk', '0800 038 9797');
/*
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', ''),
('', '', '', '');

('Braylen', 'Clark'),
('Chloe', 'Mora'),
('Lillian', 'Aguire'),
('Maeve', 'Morales'),
('Kailey ', 'Guevara'),
('Beckham ', 'Galvan'),
('Wallace ', 'Hopkins'),
('Octavia ', 'Colon'),
('Micah', 'Cortes'),
('Scout', 'Rocha'),
('Kingsley', 'Gregory'),
('Lincoln', 'Choi'),
('Chelsea', 'Davonport'),
('Renata', 'Zimmerman'),
('Leonardo', 'Munoz'),
('Dakota', 'Harrison'),
('Izabella', 'Webster'),
('Solomon', 'Sutton'),
('Leonardo', 'Manning'),
('Yaretzi', 'Travis'),
('Joel', 'Smith'),
('Hideki', 'Tojo'),
('Peter', 'Frankopan'),
('Allan', 'Smith'),
('Kylie', 'Benson');
*/

EXEC dbo.SelectAllCustomers;
