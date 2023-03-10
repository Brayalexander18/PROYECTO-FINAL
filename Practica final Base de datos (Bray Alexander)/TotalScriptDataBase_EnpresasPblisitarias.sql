USE [master]
GO
/****** Object:  Database [publisidadindustrial]    Script Date: 14/12/2022 11:54:01 p. m. ******/
CREATE DATABASE [publisidadindustrial]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'publisidadindustrial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\publisidadindustrial.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'publisidadindustrial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\publisidadindustrial_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [publisidadindustrial] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [publisidadindustrial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [publisidadindustrial] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [publisidadindustrial] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [publisidadindustrial] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [publisidadindustrial] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [publisidadindustrial] SET ARITHABORT OFF 
GO
ALTER DATABASE [publisidadindustrial] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [publisidadindustrial] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [publisidadindustrial] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [publisidadindustrial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [publisidadindustrial] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [publisidadindustrial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [publisidadindustrial] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [publisidadindustrial] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [publisidadindustrial] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [publisidadindustrial] SET  ENABLE_BROKER 
GO
ALTER DATABASE [publisidadindustrial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [publisidadindustrial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [publisidadindustrial] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [publisidadindustrial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [publisidadindustrial] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [publisidadindustrial] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [publisidadindustrial] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [publisidadindustrial] SET RECOVERY FULL 
GO
ALTER DATABASE [publisidadindustrial] SET  MULTI_USER 
GO
ALTER DATABASE [publisidadindustrial] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [publisidadindustrial] SET DB_CHAINING OFF 
GO
ALTER DATABASE [publisidadindustrial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [publisidadindustrial] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [publisidadindustrial] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [publisidadindustrial] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'publisidadindustrial', N'ON'
GO
ALTER DATABASE [publisidadindustrial] SET QUERY_STORE = OFF
GO
USE [publisidadindustrial]
GO
/****** Object:  Table [dbo].[Clientess]    Script Date: 14/12/2022 11:54:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientess](
	[ClienteID] [int] NOT NULL,
	[NombreCliente] [varchar](50) NOT NULL,
	[DeudaCliente] [int] NULL,
	[PedidoCliente] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 14/12/2022 11:54:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[nit_empresa] [int] NOT NULL,
	[nombre_empresa] [varchar](50) NOT NULL,
	[estilo_de_la_empresa] [varchar](100) NOT NULL,
	[deuda_de_la_empresa] [varchar](200) NOT NULL,
	[direccion] [varchar](100) NULL,
	[correo_electronico] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[nit_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enpleado]    Script Date: 14/12/2022 11:54:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enpleado](
	[EmpleadoID] [int] NOT NULL,
	[Nombre Empleado] [varchar](50) NOT NULL,
	[Puesto Empleado] [varchar](50) NOT NULL,
	[Sueldo Empleado] [int] NULL,
	[IDRegistroDeCliente] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpleadoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insumos]    Script Date: 14/12/2022 11:54:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insumos](
	[nit_Insumo] [int] NOT NULL,
	[nombre_Insumo] [varchar](50) NOT NULL,
	[Donde_Venden_el_insumo] [varchar](100) NOT NULL,
	[Precio_del_insumo] [int] NOT NULL,
	[Correo_del_Establecimineto] [varchar](50) NOT NULL,
	[Localizacion_del_local] [varchar](200) NOT NULL,
	[Deuda_que_tenemos_con_el_local] [varchar](200) NULL,
	[Cantidad_del_insumo_que_tenemos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[nit_Insumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 14/12/2022 11:54:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoID] [int] NOT NULL,
	[NombreProducto] [varchar](50) NOT NULL,
	[PasilloProducto] [varchar](50) NOT NULL,
	[PrecioProducto] [int] NULL,
	[IDRegistro insumo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[enpleado]  WITH CHECK ADD  CONSTRAINT [FK_enpleado_Clientess] FOREIGN KEY([IDRegistroDeCliente])
REFERENCES [dbo].[Clientess] ([ClienteID])
GO
ALTER TABLE [dbo].[enpleado] CHECK CONSTRAINT [FK_enpleado_Clientess]
GO
ALTER TABLE [dbo].[enpleado]  WITH CHECK ADD  CONSTRAINT [FK_enpleado_Empresas] FOREIGN KEY([IDRegistroDeCliente])
REFERENCES [dbo].[Empresas] ([nit_empresa])
GO
ALTER TABLE [dbo].[enpleado] CHECK CONSTRAINT [FK_enpleado_Empresas]
GO
ALTER TABLE [dbo].[enpleado]  WITH CHECK ADD  CONSTRAINT [FK_enpleado_Insumos] FOREIGN KEY([IDRegistroDeCliente])
REFERENCES [dbo].[Insumos] ([nit_Insumo])
GO
ALTER TABLE [dbo].[enpleado] CHECK CONSTRAINT [FK_enpleado_Insumos]
GO
ALTER TABLE [dbo].[enpleado]  WITH CHECK ADD  CONSTRAINT [FK_enpleado_Producto] FOREIGN KEY([IDRegistroDeCliente])
REFERENCES [dbo].[Producto] ([ProductoID])
GO
ALTER TABLE [dbo].[enpleado] CHECK CONSTRAINT [FK_enpleado_Producto]
GO
USE [master]
GO
ALTER DATABASE [publisidadindustrial] SET  READ_WRITE 
GO
