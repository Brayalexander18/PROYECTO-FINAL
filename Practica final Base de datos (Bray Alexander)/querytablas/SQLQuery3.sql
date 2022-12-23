create table dbo.enpleado(
EmpleadoID int primary key not null,
NombreEmpleado varchar (50)not null,
PuestoEmpleado varchar (50)not null,
SueldoEmpleado int null)

go

create table dbo.Producto(
ProductoID int primary key not null,
NombreProducto varchar (50)not null,
PasilloProducto varchar(50)not null,
PrecioProducto int null)
g
go

create table dbo.Clientess(
ClienteID int primary key not null,
NombreCliente  varchar (50)not null,
DeudaCliente   int  null,
PedidoCliente  varchar (100) not null)

select * from dbo.enpleado
insert dbo.enpleado (EmpleadoID, NombreEmpleado, PuestoEmpleado, SueldoEmpleado) values (362, 'Gerson germoso','Ayudante publisitario', 15000)
insert dbo.enpleado (EmpleadoID, NombreEmpleado, PuestoEmpleado, SueldoEmpleado) values (351, 'pablo perez ','Ayudante publisitario', 15000)
insert dbo.enpleado (EmpleadoID, NombreEmpleado, PuestoEmpleado, SueldoEmpleado) values (396, 'mario romero','Ayudante publisitario', 15000)
insert dbo.enpleado (EmpleadoID, NombreEmpleado, PuestoEmpleado, SueldoEmpleado) values (374, 'carlos germoso','diseñadol grafico', 20000)
insert dbo.enpleado (EmpleadoID, NombreEmpleado, PuestoEmpleado, SueldoEmpleado) values (341, 'Ayendi Garcia ','Diseñadol Grafico ', 18000)
insert dbo.enpleado (EmpleadoID, NombreEmpleado, PuestoEmpleado, SueldoEmpleado) values (323, 'Pablo Amador  ','Serigrafo', 18000)
insert dbo.enpleado (EmpleadoID, NombreEmpleado, PuestoEmpleado, SueldoEmpleado) values (378, 'Maria villega ','Contable', 25000)
insert dbo.enpleado (EmpleadoID, NombreEmpleado, PuestoEmpleado, SueldoEmpleado) values (300, 'Dorian german','Gerente', 40000)
insert dbo.enpleado (EmpleadoID, NombreEmpleado, PuestoEmpleado, SueldoEmpleado) values (310, 'Perla perez','REseccionista',15000)


select * from dbo.Producto

insert dbo.Producto (ProductoID, NombreProducto, PasilloProducto, PrecioProducto) values (200, 'Pancarta mediana','pasillo 2', 5000)
insert dbo.Producto (ProductoID, NombreProducto, PasilloProducto, PrecioProducto) values (224, 'Pancarta Grande','pasillo 2', 7000)
insert dbo.Producto (ProductoID, NombreProducto, PasilloProducto, PrecioProducto) values (225, 'Pancarta Pequeñá','pasillo 2', 3000)
insert dbo.Producto (ProductoID, NombreProducto, PasilloProducto, PrecioProducto) values (211, 'Tcher con cuello','pasillo 1', 400) 
insert dbo.Producto (ProductoID, NombreProducto, PasilloProducto, PrecioProducto) values (212, 't-cher sin cuello','pasillo 1',375)
insert dbo.Producto (ProductoID, NombreProducto, PasilloProducto, PrecioProducto) values (240, 'Abrigos Con Capucha', 'Pasillo 1',600)
insert dbo.Producto (ProductoID, NombreProducto, PasilloProducto, PrecioProducto) values (250, 'Abrigos sin Capucha', 'Pasillo 1',500)
insert dbo.Producto (ProductoID, NombreProducto, PasilloProducto, PrecioProducto) values (254, 'tasas personalisadas','pasillo 1',200)
insert dbo.Producto (ProductoID, NombreProducto, PasilloProducto, PrecioProducto) values (245, 'Poster PUblisitarios','Pasillo 2',150)
insert dbo.Producto (ProductoID, NombreProducto, PasilloProducto, PrecioProducto) values (288, 'Anusios para redes ', 'Reseccion',1000)

select * from dbo.Clientess

insert dbo.Clientess(ClienteID, NombreCliente, DeudaCliente, PedidoCliente) values (133, 'Yacna Villega',0,'30 poloches sin cuello por colavoracion')
insert dbo.Clientess(ClienteID, NombreCliente, DeudaCliente, PedidoCliente) values (135, 'Pedro varon',12000,'30 poloches con cuello')
insert dbo.Clientess(ClienteID, NombreCliente, DeudaCliente, PedidoCliente) values (187, 'Benancio leo',30000,'30 ploches con cuello y 30 abrigos con capucha')
insert dbo.Clientess(ClienteID, NombreCliente, DeudaCliente, PedidoCliente) values (137, 'Maria Paulina',23000,'60 poster y 2 pancartas grandes')
insert dbo.Clientess(ClienteID, NombreCliente, DeudaCliente, PedidoCliente) values (134, 'Rosamna villega',0,'Anucio Para redes sociales por colavoracin')