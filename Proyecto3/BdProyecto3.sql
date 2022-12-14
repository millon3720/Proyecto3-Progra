USE [master]
GO
/****** Object:  Database [Proyecto_3]    Script Date: 13/12/2022 10:41:27 ******/
CREATE DATABASE [Proyecto_3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto_3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Proyecto_3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto_3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Proyecto_3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Proyecto_3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto_3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto_3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto_3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto_3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto_3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto_3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto_3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto_3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto_3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto_3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto_3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto_3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto_3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto_3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto_3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto_3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto_3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto_3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto_3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto_3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto_3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto_3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto_3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto_3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto_3] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto_3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto_3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto_3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto_3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto_3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Proyecto_3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Proyecto_3] SET QUERY_STORE = OFF
GO
USE [Proyecto_3]
GO
/****** Object:  Table [dbo].[TbCanton]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCanton](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Canton] [varchar](50) NOT NULL,
	[CodigoProvincia] [int] NULL,
 CONSTRAINT [PK_TbCanton] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbClientes]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbClientes](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbClientes] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCorreos]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCorreos](
	[CodigoUsuario] [int] NULL,
	[Correo] [varchar](50) NOT NULL,
	[Clave] [varchar](50) NOT NULL,
	[Acceso] [bit] NULL,
 CONSTRAINT [PK_Correos] PRIMARY KEY CLUSTERED 
(
	[Correo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDetalleFactura]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDetalleFactura](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[NumeroFactura] [int] NOT NULL,
	[CodigoProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[Total] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TbDetalleFactura] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDirecciones]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDirecciones](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Codigocliente] [int] NOT NULL,
	[CodigoProvincia] [int] NOT NULL,
	[CodigoCanton] [int] NOT NULL,
	[CodigoDistrito] [int] NOT NULL,
 CONSTRAINT [PK_TbDirecciones] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDistrito]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDistrito](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Distrito] [varchar](50) NOT NULL,
	[CodigoCanton] [int] NOT NULL,
 CONSTRAINT [PK_TbDistrito] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbFactura]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbFactura](
	[NumeroFactura] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[CodigoCliente] [int] NOT NULL,
 CONSTRAINT [PK_TbFactura] PRIMARY KEY CLUSTERED 
(
	[NumeroFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbProducto]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbProducto](
	[CodigoProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbProducto] PRIMARY KEY CLUSTERED 
(
	[CodigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbProvincia]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbProvincia](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Provincia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbProvincia] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbRutinas]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbRutinas](
	[CodigoCliente] [int] NOT NULL,
	[Ejercicio] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TbCanton]  WITH CHECK ADD  CONSTRAINT [FK_TbCanton_TbProvincia] FOREIGN KEY([CodigoProvincia])
REFERENCES [dbo].[TbProvincia] ([Codigo])
GO
ALTER TABLE [dbo].[TbCanton] CHECK CONSTRAINT [FK_TbCanton_TbProvincia]
GO
ALTER TABLE [dbo].[TbCorreos]  WITH CHECK ADD  CONSTRAINT [FK_TbCorreos_TbClientes] FOREIGN KEY([CodigoUsuario])
REFERENCES [dbo].[TbClientes] ([Codigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TbCorreos] CHECK CONSTRAINT [FK_TbCorreos_TbClientes]
GO
ALTER TABLE [dbo].[TbDetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_TbDetalleFactura_TbFactura] FOREIGN KEY([NumeroFactura])
REFERENCES [dbo].[TbFactura] ([NumeroFactura])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TbDetalleFactura] CHECK CONSTRAINT [FK_TbDetalleFactura_TbFactura]
GO
ALTER TABLE [dbo].[TbDetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_TbDetalleFactura_TbProducto] FOREIGN KEY([CodigoProducto])
REFERENCES [dbo].[TbProducto] ([CodigoProducto])
GO
ALTER TABLE [dbo].[TbDetalleFactura] CHECK CONSTRAINT [FK_TbDetalleFactura_TbProducto]
GO
ALTER TABLE [dbo].[TbDirecciones]  WITH CHECK ADD  CONSTRAINT [FK_TbDirecciones_TbCanton] FOREIGN KEY([CodigoCanton])
REFERENCES [dbo].[TbCanton] ([Codigo])
GO
ALTER TABLE [dbo].[TbDirecciones] CHECK CONSTRAINT [FK_TbDirecciones_TbCanton]
GO
ALTER TABLE [dbo].[TbDirecciones]  WITH CHECK ADD  CONSTRAINT [FK_TbDirecciones_TbClientes] FOREIGN KEY([Codigocliente])
REFERENCES [dbo].[TbClientes] ([Codigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TbDirecciones] CHECK CONSTRAINT [FK_TbDirecciones_TbClientes]
GO
ALTER TABLE [dbo].[TbDirecciones]  WITH CHECK ADD  CONSTRAINT [FK_TbDirecciones_TbDistrito] FOREIGN KEY([CodigoDistrito])
REFERENCES [dbo].[TbDistrito] ([Codigo])
GO
ALTER TABLE [dbo].[TbDirecciones] CHECK CONSTRAINT [FK_TbDirecciones_TbDistrito]
GO
ALTER TABLE [dbo].[TbDirecciones]  WITH CHECK ADD  CONSTRAINT [FK_TbDirecciones_TbProvincia] FOREIGN KEY([CodigoProvincia])
REFERENCES [dbo].[TbProvincia] ([Codigo])
GO
ALTER TABLE [dbo].[TbDirecciones] CHECK CONSTRAINT [FK_TbDirecciones_TbProvincia]
GO
ALTER TABLE [dbo].[TbDistrito]  WITH CHECK ADD  CONSTRAINT [FK_TbDistrito_TbCanton] FOREIGN KEY([CodigoCanton])
REFERENCES [dbo].[TbCanton] ([Codigo])
GO
ALTER TABLE [dbo].[TbDistrito] CHECK CONSTRAINT [FK_TbDistrito_TbCanton]
GO
ALTER TABLE [dbo].[TbFactura]  WITH CHECK ADD  CONSTRAINT [FK_TbFactura_TbClientes] FOREIGN KEY([CodigoCliente])
REFERENCES [dbo].[TbClientes] ([Codigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TbFactura] CHECK CONSTRAINT [FK_TbFactura_TbClientes]
GO
ALTER TABLE [dbo].[TbRutinas]  WITH CHECK ADD  CONSTRAINT [FK_TbRutinas_TbClientes] FOREIGN KEY([CodigoCliente])
REFERENCES [dbo].[TbClientes] ([Codigo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TbRutinas] CHECK CONSTRAINT [FK_TbRutinas_TbClientes]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCanton]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ActualizarCanton]
	
	@Codigo int,
	@Nombre varchar(50),
	@CodigoProvincia int
AS
BEGIN

update TbCanton set Canton=@Nombre, CodigoProvincia=@CodigoProvincia where Codigo=@Codigo
 
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCliente]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ActualizarCliente]
	
	@Codigo int,
	@Nombre varchar(50),
	@Apellido varchar(50),
	@Telefono int
AS
BEGIN

update TbClientes set Nombre=@Nombre,Apellido=@Apellido,Telefono=@Telefono where Codigo=@Codigo
 
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCorreos]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ActualizarCorreos]
	
	@CodigoUsuario int,
	@Correo varchar(50),
	@Calve varchar(50),
	@Acceso bit
AS
BEGIN

update TbCorreos set CodigoUsuario=@CodigoUsuario,Correo=@Correo,Clave=@Calve,Acceso=@Acceso where CodigoUsuario=@CodigoUsuario
 
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarDireccion]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ActualizarDireccion]
	
	@CodigoCliente int,
	@CodigoProvincia int,
	@CodigoCanton int,
	@CodigoDistrito int
AS
BEGIN

update TbDirecciones set CodigoProvincia=@CodigoProvincia,CodigoCanton=@CodigoCanton,CodigoDistrito=@CodigoDistrito where Codigocliente=@CodigoCliente
 
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarDistrito]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ActualizarDistrito]
	
	@Codigo int,
	@Nombre varchar(50),
	@CodigoCanton int
AS
BEGIN

update TbDistrito set Distrito=@Nombre, CodigoCanton=@CodigoCanton where Codigo=@Codigo
 
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEjercicio]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ActualizarEjercicio]
	@CodigoCliente int,
	@Ejercicio varchar(50),
	@EjercicioNuevo varchar(50)
	
	
AS
BEGIN

update TbRutinas set Ejercicio=@EjercicioNuevo where CodigoCliente=@CodigoCliente and Ejercicio=@Ejercicio
 
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarFactura]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ActualizarFactura]

	@NumeroFactura int,
	@Fecha date,
	@CodigoCliente int
AS
BEGIN

update TbFactura set Fecha=@Fecha,CodigoCliente=@CodigoCliente where NumeroFactura=@NumeroFactura
 
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarFacturaDetalle]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ActualizarFacturaDetalle]
	
	@CodigoFactura int,
	@NumeroFactura int,
	@CodigoProducto int,
	@Cantidad int,
	@PrecioUnitario money,
	@Total money
AS
BEGIN

update TbDetalleFactura set NumeroFactura=@NumeroFactura,CodigoProducto=@CodigoProducto,Cantidad=@Cantidad,PrecioUnitario=@PrecioUnitario,Total=@Total where Codigo=@CodigoFactura
 
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarProducto]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ActualizarProducto]
	
	@CodigoProducto int,
	@NombreProducto varchar(50)
	
AS
BEGIN

update TbProducto set Nombre=@NombreProducto where CodigoProducto=@CodigoProducto
 
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarProvincia]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarProvincia]
	
	@Codigo int,
	@Nombre varchar(50)
AS
BEGIN

update TbProvincia set Provincia=@Nombre where Codigo=@Codigo
 
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarCanton]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BorrarCanton]
	
	@Codigo int
AS
BEGIN

delete from TbCanton where Codigo= @Codigo
 
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarCliente]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BorrarCliente]
	
	@Codigo int
AS
BEGIN
delete TbClientes where Codigo=@Codigo
 
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarCorreos]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarCorreos]
	
	@CodigoUsuario int
AS
BEGIN

delete TbCorreos where CodigoUsuario=@CodigoUsuario
 
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarDireccion]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BorrarDireccion]
	
	@CodigoDireccion int
AS
BEGIN

delete TbDirecciones where Codigo=@CodigoDireccion
 
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarDistrito]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BorrarDistrito]
	
	@Codigo int
AS
BEGIN

delete TbDistrito where Codigo=@Codigo
 
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarEjercicio]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BorrarEjercicio]
	@CodigoCliente int,
	@Ejercicio varchar(50)
	
AS
BEGIN

delete TbRutinas where CodigoCliente=@CodigoCliente and Ejercicio=@Ejercicio
 
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarFactura]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BorrarFactura]
	
	@NumeroFactura int
AS
BEGIN

delete TbFactura where NumeroFactura=@NumeroFactura
 
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarFacturaDetalle]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BorrarFacturaDetalle]
	
	@CodigoUsuario int
AS
BEGIN

delete TbDetalleFactura where Codigo=@CodigoUsuario
 
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarProducto]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarProducto]
	
	@CodigoProducto int
AS
BEGIN

delete TbProducto where CodigoProducto=@CodigoProducto
 
END
GO
/****** Object:  StoredProcedure [dbo].[BorrarProvincia]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BorrarProvincia]
	
	@Codigo int
AS
BEGIN

delete TbProvincia where Codigo=@Codigo
 
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarCanton]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GuardarCanton]
	@Nombre int,
	@CodigoProvincia int
AS
BEGIN
	
	insert into TbCanton(Canton,CodigoProvincia) values(@Nombre,@CodigoProvincia)
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarCliente]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GuardarCliente]

	@Nombre varchar(50),
	@Apellido varchar(50),
	@Telefono int
AS
BEGIN

insert into TbClientes(Nombre,Apellido,Telefono) values(@Nombre,@Apellido,@Telefono)
 
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarCorreos]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GuardarCorreos]
	
	@CodigoUsuario int,
	@Correo varchar(50),
	@Calve varchar(50),
	@Acceso bit
AS
BEGIN

insert into TbCorreos(CodigoUsuario,Correo,Clave,Acceso) values(@CodigoUsuario,@Correo,@Calve,@Acceso)
 
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarDireccion]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GuardarDireccion]
	
	@CodigoCliente int,
	@CodigoProvincia int,
	@CodigoCanton int,
	@CodigoDistrito int,
	@Comentarios varchar(50)
AS
BEGIN

insert into TbDirecciones(Codigocliente,CodigoProvincia,CodigoCanton,CodigoDistrito,Comentarios) values(@CodigoCliente,@CodigoProvincia,@CodigoCanton,@CodigoDistrito, @Comentarios )
 
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarDistrito]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GuardarDistrito]
	@Nombre int,
	@CodigoCanton int
AS
BEGIN
	
	insert into TbDistrito(Distrito,CodigoCanton) values(@Nombre,@CodigoCanton)
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarEjercicio]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GuardarEjercicio]
	@CodigoCliente int,
	@Ejercicio varchar(50)
	

AS
BEGIN

insert into TbRutinas(CodigoCliente,Ejercicio) values(@CodigoCliente,@Ejercicio)
 
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarFactura]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GuardarFactura]
	
	@Fecha date,
	@CodigoCliente int
AS
BEGIN

insert into TbFactura(Fecha,CodigoCliente) values(@Fecha,@CodigoCliente )
 
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarFacturaDetalle]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GuardarFacturaDetalle]
	
	@NumeroFactura int,
	@CodigoProducto int,
	@Cantidad int,
	@PrecioUnitario money,
	@Total money
AS
BEGIN

insert into TbDetalleFactura(NumeroFactura,CodigoProducto,Cantidad,PrecioUnitario,Total) values(@NumeroFactura,@CodigoProducto,	@Cantidad,	@PrecioUnitario, @Total )
 
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarProducto]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GuardarProducto]
	
	@NombreProducto varchar(50)

AS
BEGIN

insert into TbProducto(Nombre) values(@NombreProducto)
 
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarProvincia]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GuardarProvincia]
	@Nombre int
AS
BEGIN
	
	insert into TbProvincia(Provincia) values(@Nombre)
END
GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login]
	@Correo varchar(50),  
	@Clave varchar(50)
AS
BEGIN
	
	SELECT * from TbCorreos where TbCorreos.Correo= @Correo AND TbCorreos.Clave= @Clave
END
GO
/****** Object:  StoredProcedure [dbo].[Rutinas]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Rutinas]
@CodigoCliente int
AS
BEGIN
	
	SELECT * from TbRutinas where CodigoCliente = @CodigoCliente
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarCanton]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SeleccionarCanton]
	@CodigoProvincia int
AS
BEGIN
	
	SELECT        dbo.TbCanton.Codigo, dbo.TbCanton.Canton
FROM            dbo.TbCanton INNER JOIN
                         dbo.TbDistrito ON dbo.TbCanton.Codigo = dbo.TbDistrito.Codigo INNER JOIN
                         dbo.TbProvincia ON dbo.TbCanton.Codigo = dbo.TbProvincia.Codigo where TbCanton.CodigoProvincia=@CodigoProvincia
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarClientes]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeleccionarClientes]
	
AS
BEGIN
SELECT        dbo.TbClientes.Codigo AS CodigoCliente,dbo.TbClientes.Nombre, dbo.TbClientes.Apellido, dbo.TbClientes.Telefono, dbo.TbCorreos.Correo, dbo.TbCorreos.Clave, dbo.TbCorreos.Acceso
FROM            dbo.TbClientes INNER JOIN
                         dbo.TbCorreos ON dbo.TbClientes.Codigo = dbo.TbCorreos.CodigoUsuario					 
						 
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarCorreos]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SeleccionarCorreos]
	
AS
BEGIN
	select * from TbCorreos
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarDistrito]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SeleccionarDistrito]
	@CodigoCanton int
AS
BEGIN
	
	SELECT        dbo.TbDistrito.Codigo, dbo.TbDistrito.Distrito
FROM            dbo.TbCanton INNER JOIN
                         dbo.TbDistrito ON dbo.TbCanton.Codigo = dbo.TbDistrito.Codigo INNER JOIN
                         dbo.TbProvincia ON dbo.TbCanton.Codigo = dbo.TbProvincia.Codigo where TbDistrito.CodigoCanton=@CodigoCanton
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarEjercicios]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SeleccionarEjercicios]
	@CodigoCliente int
AS
BEGIN
	select * from TbRutinas where CodigoCliente=@CodigoCliente
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarFactura]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SeleccionarFactura]
	
AS
BEGIN

SELECT        dbo.TbFactura.NumeroFactura, dbo.TbFactura.Fecha, dbo.TbClientes.Nombre, dbo.TbClientes.Apellido
FROM            dbo.TbFactura INNER JOIN
                         dbo.TbDetalleFactura ON dbo.TbFactura.NumeroFactura = dbo.TbDetalleFactura.NumeroFactura INNER JOIN
                         dbo.TbClientes ON dbo.TbFactura.CodigoCliente = dbo.TbClientes.Codigo
 
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarFacturaDetalle]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SeleccionarFacturaDetalle]
	
	@CodigoFactura int
AS
BEGIN

SELECT        dbo.TbFactura.NumeroFactura, dbo.TbFactura.Fecha, dbo.TbClientes.Nombre, dbo.TbClientes.Apellido, dbo.TbProducto.Nombre AS Expr1, dbo.TbDetalleFactura.Cantidad, dbo.TbDetalleFactura.Total, 
                         dbo.TbDetalleFactura.PrecioUnitario
FROM            dbo.TbFactura INNER JOIN
                         dbo.TbDetalleFactura ON dbo.TbFactura.NumeroFactura = dbo.TbDetalleFactura.NumeroFactura INNER JOIN
                         dbo.TbClientes ON dbo.TbFactura.CodigoCliente = dbo.TbClientes.Codigo INNER JOIN
                         dbo.TbProducto ON dbo.TbDetalleFactura.CodigoProducto = dbo.TbProducto.CodigoProducto where TbFactura.NumeroFactura=@CodigoFactura
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarFacturaPorFecha]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SeleccionarFacturaPorFecha]
	
	@Fecha date
AS
BEGIN

SELECT        dbo.TbFactura.NumeroFactura, dbo.TbFactura.Fecha, dbo.TbClientes.Nombre, dbo.TbClientes.Apellido
FROM            dbo.TbFactura INNER JOIN
                         dbo.TbDetalleFactura ON dbo.TbFactura.NumeroFactura = dbo.TbDetalleFactura.NumeroFactura INNER JOIN
                         dbo.TbClientes ON dbo.TbFactura.CodigoCliente = dbo.TbClientes.Codigo where Fecha=@Fecha
 
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarProducto]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SeleccionarProducto]
	
AS
BEGIN
	select * from TbProducto
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarProvincia]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SeleccionarProvincia]
AS
BEGIN
SELECT        Codigo AS Expr1, Provincia
FROM            dbo.TbProvincia
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarUltimoCliente]    Script Date: 13/12/2022 10:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SeleccionarUltimoCliente]
AS
BEGIN
SELECT TOP 1 * FROM TbClientes ORDER BY Codigo DESC
END
GO
USE [master]
GO
ALTER DATABASE [Proyecto_3] SET  READ_WRITE 
GO
