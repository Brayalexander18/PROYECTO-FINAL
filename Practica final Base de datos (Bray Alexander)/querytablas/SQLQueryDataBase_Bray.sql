use publisidadindustrial

create table dbo.Insumos(
nit_Insumo int primary key not null,
nombre_Insumo varchar (50) not null,
Donde_Venden_el_insumo varchar (100) not null,
Precio_del_insumo int not null,
Correo_del_Establecimineto varchar (50) not null,
Localizacion_del_local varchar (200) not null,
Deuda_que_tenemos_con_el_local varchar (200) null,
Cantidad_del_insumo_que_tenemos int null
)

select * from dbo.Producto
select * from [dbo].[Insumos]

insert into dbo.Insumos values(996,'Tinta Plastisol Purpura ','SerigrafiaRodrigues', 893, 'SerigrafiaRodrigues@gmail.com','Los Rios', 'NO deuda por este articulo', 489)


alter table dbo.Empresas
alter column [deuda_de_la_empresa] varchar (200) not null
