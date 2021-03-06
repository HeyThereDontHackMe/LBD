USE [Practica4]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Orden]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Proveedor]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Categoria]
GO
ALTER TABLE [dbo].[Orden] DROP CONSTRAINT [FK_Orden_Empleado]
GO
ALTER TABLE [dbo].[Orden] DROP CONSTRAINT [FK_Orden_Cliente]
GO
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Orden]
GO
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Empleado]
GO
ALTER TABLE [dbo].[Factura] DROP CONSTRAINT [FK_Factura_Cliente]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_Empleado_Cargo]
GO
ALTER TABLE [dbo].[DetallesOrden] DROP CONSTRAINT [FK_DetallesOrden_Producto]
GO
ALTER TABLE [dbo].[DetallesOrden] DROP CONSTRAINT [FK_DetallesOrden_Orden]
GO
/****** Object:  Index [PK_Proveedor]    Script Date: 16/03/2019 07:44:18 p. m. ******/
ALTER TABLE [dbo].[Proveedor] DROP CONSTRAINT [PK_Proveedor]
GO
/****** Object:  Index [PK_Producto]    Script Date: 16/03/2019 07:44:18 p. m. ******/
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [PK_Producto]
GO
/****** Object:  Index [PK_Empleado]    Script Date: 16/03/2019 07:44:18 p. m. ******/
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [PK_Empleado]
GO
/****** Object:  Index [PK_Cliente]    Script Date: 16/03/2019 07:44:18 p. m. ******/
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [PK_Cliente]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Index [ClusteredIndex-20190316-143236]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP INDEX [ClusteredIndex-20190316-143236] ON [dbo].[Proveedor] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Index [ClusteredIndex-20190316-143301]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP INDEX [ClusteredIndex-20190316-143301] ON [dbo].[Producto] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP TABLE [dbo].[Orden]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP TABLE [dbo].[Factura]
GO
/****** Object:  Index [ClusteredIndex-20190316-143124]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP INDEX [ClusteredIndex-20190316-143124] ON [dbo].[Empleado] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Index [ClusteredIndex-20190316-143619]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP INDEX [ClusteredIndex-20190316-143619] ON [dbo].[DetallesOrden] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[DetallesOrden]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP TABLE [dbo].[DetallesOrden]
GO
/****** Object:  Index [ClusteredIndex-20190316-144753]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP INDEX [ClusteredIndex-20190316-144753] ON [dbo].[Cliente] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP TABLE [dbo].[Cargo]
GO
USE [master]
GO
/****** Object:  Database [Practica4]    Script Date: 16/03/2019 07:44:18 p. m. ******/
DROP DATABASE [Practica4]
GO
/****** Object:  Database [Practica4]    Script Date: 16/03/2019 07:44:18 p. m. ******/
CREATE DATABASE [Practica4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practica4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Practica4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Practica4] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Practica4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica4] SET RECOVERY FULL 
GO
ALTER DATABASE [Practica4] SET  MULTI_USER 
GO
ALTER DATABASE [Practica4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practica4] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practica4', N'ON'
GO
ALTER DATABASE [Practica4] SET QUERY_STORE = OFF
GO
USE [Practica4]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 16/03/2019 07:44:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[idCargo] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Horario] [time](7) NOT NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[idCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 16/03/2019 07:44:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [uniqueidentifier] NOT NULL,
	[NomCat] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/03/2019 07:44:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [uniqueidentifier] NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[CodigoPostal] [varchar](15) NOT NULL,
	[Telefono] [int] NOT NULL,
	[DireCP]  AS (([Direccion]+' ')+[CodigoPostal]) PERSISTED NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cliente] SET (LOCK_ESCALATION = AUTO)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ClusteredIndex-20190316-144753]    Script Date: 16/03/2019 07:44:19 p. m. ******/
CREATE CLUSTERED INDEX [ClusteredIndex-20190316-144753] ON [dbo].[Cliente]
(
	[Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesOrden]    Script Date: 16/03/2019 07:44:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesOrden](
	[idOrden] [uniqueidentifier] NOT NULL,
	[idProducto] [uniqueidentifier] NOT NULL,
	[Precio] [money] NOT NULL,
	[Cantidad] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [ClusteredIndex-20190316-143619]    Script Date: 16/03/2019 07:44:19 p. m. ******/
CREATE CLUSTERED INDEX [ClusteredIndex-20190316-143619] ON [dbo].[DetallesOrden]
(
	[idOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 16/03/2019 07:44:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [uniqueidentifier] NOT NULL,
	[idCargo] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[FechaNac] [date] NOT NULL,
	[FechaCont] [date] NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[CodigoPostal] [varchar](15) NOT NULL,
	[Ciudad] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (([Nombre]+' ')+[Apellidos]) PERSISTED NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [ClusteredIndex-20190316-143124]    Script Date: 16/03/2019 07:44:19 p. m. ******/
CREATE CLUSTERED INDEX [ClusteredIndex-20190316-143124] ON [dbo].[Empleado]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 16/03/2019 07:44:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[NoFactura] [uniqueidentifier] NOT NULL,
	[idOrden] [uniqueidentifier] NOT NULL,
	[idCliente] [uniqueidentifier] NOT NULL,
	[idEmpleado] [uniqueidentifier] NOT NULL,
	[FacturaFecha] [date] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[NoFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 16/03/2019 07:44:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden](
	[idOrden] [uniqueidentifier] NOT NULL,
	[idCliente] [uniqueidentifier] NOT NULL,
	[idEmpleado] [uniqueidentifier] NOT NULL,
	[OrdenFecha] [date] NOT NULL,
 CONSTRAINT [PK_Orden] PRIMARY KEY CLUSTERED 
(
	[idOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 16/03/2019 07:44:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [uniqueidentifier] NOT NULL,
	[NombreProd] [varchar](50) NOT NULL,
	[idCategoria] [uniqueidentifier] NOT NULL,
	[Existencia] [int] NOT NULL,
	[UnidadesOrden] [int] NOT NULL,
	[Precio] [money] NOT NULL,
	[idProvedor] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ClusteredIndex-20190316-143301]    Script Date: 16/03/2019 07:44:19 p. m. ******/
CREATE CLUSTERED INDEX [ClusteredIndex-20190316-143301] ON [dbo].[Producto]
(
	[NombreProd] ASC,
	[Existencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 16/03/2019 07:44:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[idProvedor] [uniqueidentifier] NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[CodigoPostal] [varchar](15) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[DireCP]  AS (([Direccion]+' ')+[CodigoPostal]) PERSISTED NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ClusteredIndex-20190316-143236]    Script Date: 16/03/2019 07:44:19 p. m. ******/
CREATE CLUSTERED INDEX [ClusteredIndex-20190316-143236] ON [dbo].[Proveedor]
(
	[Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 16/03/2019 07:44:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[idTicket] [uniqueidentifier] NOT NULL,
	[idOrden] [uniqueidentifier] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Sucursal] [tinyint] NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[idTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [PK_Cliente]    Script Date: 16/03/2019 07:44:19 p. m. ******/
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [PK_Cliente] PRIMARY KEY NONCLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Empleado]    Script Date: 16/03/2019 07:44:19 p. m. ******/
ALTER TABLE [dbo].[Empleado] ADD  CONSTRAINT [PK_Empleado] PRIMARY KEY NONCLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Producto]    Script Date: 16/03/2019 07:44:19 p. m. ******/
ALTER TABLE [dbo].[Producto] ADD  CONSTRAINT [PK_Producto] PRIMARY KEY NONCLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Proveedor]    Script Date: 16/03/2019 07:44:19 p. m. ******/
ALTER TABLE [dbo].[Proveedor] ADD  CONSTRAINT [PK_Proveedor] PRIMARY KEY NONCLUSTERED 
(
	[idProvedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetallesOrden]  WITH CHECK ADD  CONSTRAINT [FK_DetallesOrden_Orden] FOREIGN KEY([idOrden])
REFERENCES [dbo].[Orden] ([idOrden])
GO
ALTER TABLE [dbo].[DetallesOrden] CHECK CONSTRAINT [FK_DetallesOrden_Orden]
GO
ALTER TABLE [dbo].[DetallesOrden]  WITH CHECK ADD  CONSTRAINT [FK_DetallesOrden_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[DetallesOrden] CHECK CONSTRAINT [FK_DetallesOrden_Producto]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Cargo] FOREIGN KEY([idCargo])
REFERENCES [dbo].[Cargo] ([idCargo])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Cargo]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Empleado]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Orden] FOREIGN KEY([idOrden])
REFERENCES [dbo].[Orden] ([idOrden])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Orden]
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD  CONSTRAINT [FK_Orden_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idCliente])
GO
ALTER TABLE [dbo].[Orden] CHECK CONSTRAINT [FK_Orden_Cliente]
GO
ALTER TABLE [dbo].[Orden]  WITH CHECK ADD  CONSTRAINT [FK_Orden_Empleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[Orden] CHECK CONSTRAINT [FK_Orden_Empleado]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Proveedor] FOREIGN KEY([idProvedor])
REFERENCES [dbo].[Proveedor] ([idProvedor])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Proveedor]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Orden] FOREIGN KEY([idOrden])
REFERENCES [dbo].[Orden] ([idOrden])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Orden]
GO
USE [master]
GO
ALTER DATABASE [Practica4] SET  READ_WRITE 
GO
