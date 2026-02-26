use autoShop;


insert into clients  (Fname, Lname, CPF, Phone, Email, Address) 
values ('João', 'Silva', '12345678902', '11955223344', 'joao@email.com', 'Rua central, 123 - Piracanjuba'),
	   ('Maria', 'Oliveira', '58923647210', '21988771100', 'maria@email.com', 'Rua principal, 1000 - Bela Vista'),
       ('Felipe', 'Machado', '45784196310', '21977448822', 'felipe@email.com', 'Rua principal, 500 - Bela Vista'),
       ('Pedro', 'Ramos', '28154189922', '12944552110', 'pedro@email.com', 'Avenida do Sul, 300 - Piracanjuba');
       
     insert into clients (Fname, Lname, CNPJ, Phone, Email, Address) 
     values  ('Locadora', 'Do Bairro', '109874563212345', '11988771100', 'locadora@email.com', 'Rua central, 250 - Piracanjuba');
select * from clients;

insert into car (model, numberPlate, fabricação, color, mileage) 
values ('Corsa', '123AB45', '2008-03-20', 'Preto', 22000),
	   ('Palio', '455CD16', '2005-11-05', 'Cinza', 30000),
       ('Uno', '789HD20', '2000-12-15', 'Branco', 45000),
       ('Ka', '521DA89', '2009-05-20', 'Cinza', 15000),
       ('Celta', '874EF15', '2010-04-08', 'Preto', 25000);
select * from car;

insert into mechanic (Fname, Lname, speciality) 
values ('Paulo', 'Santos', 'Ar-condicionado'), 
	   ('Marcos', 'Souza', 'Elétrica automotiva'), 
       ('José', 'Dantas', 'Suspenção e freios'), 
       ('Eliseu', 'Santos', 'Motor'), 
       ('Isaque', 'Fernandes', 'Veículos de Diesel ');
       select * from mechanic;
       
insert into service (nameService, descriptionService, price) 
		values ('Troca de óleo', 'Troca do óleo do carro', 120),
			   ('Limpeza ar-condicionado', 'Ar-condicionado será limpo', 80),
               ('Reparo iluminação', 'troca de lâmpadas', 150),
               ('Revisão', 'revisão geral do carro', 100 ),
               ('Reparos do motor', 'resolver problemas do motor', 200);
       select * from service;

insert into serviceOrder (startDate, endDate, statusOrder, totalValue, idServiceProvided)
		values ('2025-01-15', '2025-01-15', 'Finalizado', 120, 1),
			   ('2025-01-20', '2025-01-25', 'Em andamento', 150, 3),
               ('2025-01-10', '2025-01-28', 'Iniciado', 200, 5),
               ('2025-01-18', '2025-01-18', 'Finalizado', 100, 4),
               ('2025-01-21', '2025-01-21', 'Finalizado', 80, 2);
select * from serviceOrder;

insert into clientCar (idClientCar, idCar) 
values (1,5),	
	   (2,3),
       (3,2),
       (4,1),
       (5,4);
select * from clientCar;

insert into clientOrder (idClientOrder, idCServiceOrder) 
		values (1,3),
			   (2,5),
               (3,2),
               (4,1),
               (5,4);
select * from clientOrder;
		


