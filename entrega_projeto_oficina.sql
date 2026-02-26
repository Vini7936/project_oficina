use autoShop;

select * from clients;

select * from car;

select * from mechanic;

 select * from service;
 
 select * from serviceOrder;
 
 select * from clientCar;
 
 select * from clientOrder;
 
 -- Quais serviços tem o preço abaixo de 100?
 select * from service where price < 100;
 
 -- Quem são os clientes cadastrados? 
 select concat(Fname, ' ', Lname) as Client_name, CPF, CNPJ, Phone, Email, Address from clients;
 
 -- Quais carros tem quilometragem abaixo de 25000?
 select model, numberPlate, fabricação, color, mileage from car having mileage <= 25000 ;
  
 
  -- Quem são os mecânicos e quais são suas especialidades?
  select concat(Fname, ' ', Lname) as Mechanic_name, speciality from mechanic;
  
   -- Quem é o mecânico especialista em elétrica automotiva?
  select concat(Fname, ' ', Lname) as Mechanic_name, speciality from mechanic where speciality = 'Elétrica automotiva';
  
  -- Quais são os carros cadastrados? Ordenar por quilometragem, do menor para o maior. 
  select * from car order by mileage asc;
  
  -- Relação entre as ordens de serviço e seus respectivos clientes:
  select concat(Fname, ' ', Lname) as Client_name, idServiceOrder, startDate, endDate, statusOrder, totalValue, nameService
  from clients inner join clientOrder on idClient = idClientOrder 
  inner join serviceOrder on idServiceOrder = idCServiceOrder inner join service on idService = idServiceProvided order by price;
  
  -- Relação entre os carros e clientes:
select concat(Fname, ' ', Lname) as Client_name, address, Phone, c.model as Model, c.numberPlate, c.fabricação, c.color as Color, c.mileage as Mileage
from car c inner join clientCar d  on  c.idCar = d.idCar 
inner join clients on idClient = d.idClientCar;
