create database ProvincesVN
go
use ProvincesVN
go

create table Provinces(
	idProvinces int identity(1,1) primary key,
	name nvarchar(255),
);
go

create table Districts(
	idDistricts int identity(1,1) primary key,
	name nvarchar(255),
	idProvinces int,
	foreign key (idProvinces) references Provinces(idProvinces)
);
go

create table Wards(
	idWards int identity(1,1) primary key,
	name nvarchar(255),
	idDistricts int,
	foreign key (idDistricts) references Districts(idDistricts)
);
go

select * from Wards