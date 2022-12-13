USE [Proyecto_3]
GO
/****** Object:  Table [dbo].[TbCanton]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  Table [dbo].[TbClientes]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  Table [dbo].[TbCorreos]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  Table [dbo].[TbDetalleFactura]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  Table [dbo].[TbDirecciones]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  Table [dbo].[TbDistrito]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  Table [dbo].[TbFactura]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  Table [dbo].[TbProducto]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  Table [dbo].[TbProvincia]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  Table [dbo].[TbRutinas]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarCanton]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarCliente]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarCorreos]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarDireccion]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarDistrito]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarEjercicio]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarFactura]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarFacturaDetalle]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarProducto]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[ActualizarProvincia]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[BorrarCanton]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[BorrarCliente]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[BorrarCorreos]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[BorrarDireccion]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[BorrarDistrito]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[BorrarEjercicio]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[BorrarFactura]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[BorrarFacturaDetalle]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[BorrarProducto]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[BorrarProvincia]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GuardarCanton]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GuardarCliente]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GuardarCorreos]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GuardarDireccion]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GuardarDistrito]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GuardarEjercicio]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GuardarFactura]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GuardarFacturaDetalle]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GuardarProducto]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[GuardarProvincia]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[Rutinas]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[SeleccionarCanton]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[SeleccionarClientes]    Script Date: 13/12/2022 10:09:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeleccionarClientes]
	
AS
BEGIN
	SELECT        dbo.TbClientes.*, dbo.TbCorreos.Correo, dbo.TbCorreos.Clave, dbo.TbProvincia.Provincia, dbo.TbCanton.Canton, dbo.TbDistrito.Distrito, dbo.TbCorreos.Acceso
FROM            dbo.TbDistrito INNER JOIN
                         dbo.TbCanton ON dbo.TbDistrito.CodigoCanton = dbo.TbCanton.Codigo INNER JOIN
                         dbo.TbProvincia ON dbo.TbCanton.CodigoProvincia = dbo.TbProvincia.Codigo INNER JOIN
                         dbo.TbDirecciones AS TbDirecciones_1 ON dbo.TbDistrito.Codigo = TbDirecciones_1.CodigoDistrito AND dbo.TbCanton.Codigo = TbDirecciones_1.CodigoCanton AND 
                         dbo.TbProvincia.Codigo = TbDirecciones_1.CodigoProvincia INNER JOIN
                         dbo.TbCorreos INNER JOIN
                         dbo.TbClientes ON dbo.TbCorreos.CodigoUsuario = dbo.TbClientes.Codigo ON TbDirecciones_1.Codigocliente = dbo.TbClientes.Codigo
END
GO
/****** Object:  StoredProcedure [dbo].[SeleccionarCorreos]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[SeleccionarDistrito]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[SeleccionarEjercicios]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[SeleccionarFactura]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[SeleccionarFacturaDetalle]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[SeleccionarFacturaPorFecha]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[SeleccionarProducto]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[SeleccionarProvincia]    Script Date: 13/12/2022 10:09:10 ******/
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
/****** Object:  StoredProcedure [dbo].[SeleccionarUltimoCliente]    Script Date: 13/12/2022 10:09:10 ******/
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
