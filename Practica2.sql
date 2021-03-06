USE [Practica02]
GO
ALTER TABLE [dbo].[Vulka] DROP CONSTRAINT [DF__Vulka__MarcaAuto__182C9B23]
GO
/****** Object:  Table [dbo].[Vulka]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[Vulka]
GO
/****** Object:  Table [dbo].[TorenoGoku]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[TorenoGoku]
GO
/****** Object:  Table [dbo].[TorenoFut]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[TorenoFut]
GO
/****** Object:  Table [dbo].[TigresFut]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[TigresFut]
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[Tienda]
GO
/****** Object:  Table [dbo].[Maestros]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[Maestros]
GO
/****** Object:  Table [dbo].[LBD]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[LBD]
GO
/****** Object:  Table [dbo].[LaCafe]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[LaCafe]
GO
/****** Object:  Table [dbo].[Ciber]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[Ciber]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[Alumnos]
GO
/****** Object:  Table [dbo].[Alumnoos]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP TABLE [dbo].[Alumnoos]
GO
USE [master]
GO
/****** Object:  Database [Practica02]    Script Date: 02/03/2019 11:21:26 a.m. ******/
DROP DATABASE [Practica02]
GO
/****** Object:  Database [Practica02]    Script Date: 02/03/2019 11:21:26 a.m. ******/
CREATE DATABASE [Practica02]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practica02', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Practica02.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Practica02_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Practica02_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Practica02] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practica02].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practica02] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practica02] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practica02] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practica02] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practica02] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practica02] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Practica02] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Practica02] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practica02] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practica02] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practica02] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practica02] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practica02] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practica02] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practica02] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practica02] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Practica02] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practica02] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practica02] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practica02] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practica02] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practica02] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practica02] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practica02] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Practica02] SET  MULTI_USER 
GO
ALTER DATABASE [Practica02] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practica02] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practica02] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practica02] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Practica02]
GO
/****** Object:  Table [dbo].[Alumnoos]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnoos](
	[Matricula] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[DatosAlumnos]  AS (([Nombre]+'')+[Matricula]),
PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Matricula] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciber]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciber](
	[HoraEntrada] [datetime] NOT NULL,
	[HoraSalida] [datetime] NOT NULL,
	[NumMaquina] [varchar](50) NOT NULL,
	[CostoRenta] [money] NOT NULL,
	[MarcaMaquina] [varchar](50) NOT NULL,
	[DetallesMaquina]  AS (([NumMaquina]+'')+[MarcaMaquina]),
PRIMARY KEY CLUSTERED 
(
	[HoraEntrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LaCafe]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LaCafe](
	[PlatilloCafe] [varchar](50) NOT NULL,
	[PrecioPlatillos] [money] NOT NULL,
	[NumeroPedido] [varchar](50) NOT NULL,
	[NumClientes] [varchar](50) NOT NULL,
	[Descuentos] [money] NOT NULL,
	[Platillos]  AS (([PlatilloCafe]+'')+[PrecioPlatillos]),
PRIMARY KEY CLUSTERED 
(
	[PlatilloCafe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LBD]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LBD](
	[NumeroEstudiantes] [varchar](50) NOT NULL,
	[MatriculaEstudiantes] [varchar](50) NOT NULL,
	[HoraClase] [datetime] NOT NULL,
	[AsisEstudiantes] [varchar](50) NOT NULL,
	[TareasClase] [varchar](50) NOT NULL,
	[DatosEstudiantes]  AS (([TareasClase]+'')+[MatriculaEstudiantes]),
PRIMARY KEY CLUSTERED 
(
	[NumeroEstudiantes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Maestros]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Maestros](
	[NumeroEmpleado] [varchar](50) NOT NULL,
	[Salario] [varchar](50) NOT NULL,
	[HoraEntrada] [datetime] NOT NULL,
	[HoraSalida] [datetime] NOT NULL,
	[Apodo] [varchar](50) NOT NULL,
	[DatosMaestros]  AS (([Apodo]+'')+[NumeroEmpleado]),
PRIMARY KEY CLUSTERED 
(
	[NumeroEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tienda](
	[NumeroProducto] [varchar](50) NOT NULL,
	[IdProducto] [varchar](50) NOT NULL,
	[PrecioProducto] [money] NOT NULL,
	[CantidadProducto] [varchar](50) NOT NULL,
	[NombreProducto] [varchar](50) NOT NULL,
	[DetallesProducto]  AS (([NombreProducto]+'')+[IdProducto]),
PRIMARY KEY CLUSTERED 
(
	[NumeroProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TigresFut]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TigresFut](
	[NomJugador] [varchar](50) NOT NULL,
	[NumJugador] [varchar](50) NOT NULL,
	[GolesJugador] [varchar](50) NOT NULL,
	[AsisJugador] [varchar](50) NOT NULL,
	[PartidosJugados] [varchar](50) NOT NULL,
	[DatosJugadores]  AS (([NomJugador]+'')+[NumJugador]),
PRIMARY KEY CLUSTERED 
(
	[NomJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TorenoFut]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TorenoFut](
	[NumeroEquipo] [varchar](50) NOT NULL,
	[NombreEquipo] [varchar](50) NOT NULL,
	[PartidosG] [varchar](50) NOT NULL,
	[PartidosP] [varchar](50) NOT NULL,
	[PartidosE] [varchar](50) NOT NULL,
	[DetallesTorneo]  AS (([NombreEquipo]+'')+[NumeroEquipo]),
PRIMARY KEY CLUSTERED 
(
	[NumeroEquipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TorenoGoku]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TorenoGoku](
	[Ki] [varchar](50) NOT NULL,
	[NomPeleador] [varchar](50) NOT NULL,
	[PeleasG] [varchar](50) NOT NULL,
	[PeleasP] [varchar](50) NOT NULL,
	[RazaG] [uniqueidentifier] NOT NULL,
	[Participantes]  AS (([NomPeleador]+'')+[ki]),
PRIMARY KEY CLUSTERED 
(
	[Ki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vulka]    Script Date: 02/03/2019 11:21:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vulka](
	[MarcaAuto] [uniqueidentifier] NOT NULL,
	[PrecioPedido] [money] NOT NULL,
	[EmpleadoAtendio] [varchar](50) NOT NULL,
	[DescuentosPedido] [money] NOT NULL,
	[FechaEntrega] [date] NOT NULL,
	[DetallesAuto]  AS (([PrecioPedido]+'')+[PrecioPedido]),
PRIMARY KEY CLUSTERED 
(
	[MarcaAuto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Vulka] ADD  DEFAULT (newid()) FOR [MarcaAuto]
GO
USE [master]
GO
ALTER DATABASE [Practica02] SET  READ_WRITE 
GO
