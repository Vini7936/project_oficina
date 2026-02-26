create database autoShop;

use autoShop;

create table clients (
	idClient int auto_increment primary key,
    FName varchar(15) not null,
    LName varchar(15) not null,
    CPF char(11),
    CNPJ char(15),
    Phone char(11) not null,
    Email varchar(50) not null,
    Address varchar(100),
    constraint unique_cpf_client unique (CPF),
	constraint unique_cpnj_client unique (CNPJ),
    CONSTRAINT CHK_Documento_Obrigatorio 
    CHECK (
        (CPF IS NOT NULL AND CNPJ IS NULL) OR 
        (CPF IS NULL AND CNPJ IS NOT NULL)
    )
);

create table car (
	idCar int auto_increment primary key,
    model varchar(45),
    numberPlate char(7),
    fabricação date,
    color varchar(45),
    mileage float,
    constraint unique_number_plate_car unique(numberPlate)
);

create table mechanic(
	idMechanic int auto_increment primary key,
    Fname varchar(20),
    Lname varchar(20),
    speciality varchar(45)
);

create table service (
	idService int auto_increment primary key,
    nameService varchar(45),
    descriptionService varchar(255),
    price float
);

create table serviceOrder(
	idServiceOrder int auto_increment primary key,
    startDate date,
    endDate date,
    statusOrder enum('Iniciado', 'Em andamento', 'Finalizado'),
    totalValue float
);

alter table serviceOrder add idServiceProvided int;

create table clientCar (
	idClientCar int primary key,
    idCar int,
    constraint fk_client_car foreign key (idClientCar) references clients(idClient),
	constraint fk_car foreign key (idCar) references Car(idCar)
    );
    

create table clientOrder(
	idClientOrder int primary key,
    idCServiceOrder int,
    constraint fk_client_order foreign key (idClientOrder) references clients(idClient),
    constraint fk_service_order foreign key (idCServiceOrder) references serviceOrder(idServiceOrder)
);

show tables;





