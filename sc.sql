USE [master]
GO
/****** Object:  Database [EmployeeManagment]    Script Date: 5/14/2019 7:07:47 PM ******/
CREATE DATABASE [EmployeeManagment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeManagment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EmployeeManagment.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeManagment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EmployeeManagment_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeManagment] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeManagment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeManagment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeManagment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeManagment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeManagment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeManagment] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeManagment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeManagment] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeManagment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeManagment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeManagment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeManagment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeManagment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeManagment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeManagment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeManagment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeManagment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmployeeManagment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeManagment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeManagment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeManagment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeManagment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeManagment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeManagment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeManagment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeManagment] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeManagment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeManagment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeManagment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeManagment] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EmployeeManagment]
GO
/****** Object:  Table [dbo].[Departmenti]    Script Date: 5/14/2019 7:07:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departmenti](
	[departmentiID] [int] IDENTITY(1,1) NOT NULL,
	[emri_departmentit] [varchar](50) NULL,
 CONSTRAINT [PK_Departmenti] PRIMARY KEY CLUSTERED 
(
	[departmentiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pagesa]    Script Date: 5/14/2019 7:07:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagesa](
	[pagesaID] [int] IDENTITY(1,1) NOT NULL,
	[vijueshmeria_id] [int] NULL,
	[punetori_id] [int] NULL,
	[pagesa] [float] NULL,
	[data_pageses] [date] NULL,
 CONSTRAINT [PK_Pagesa] PRIMARY KEY CLUSTERED 
(
	[pagesaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Perdoruesi]    Script Date: 5/14/2019 7:07:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perdoruesi](
	[perdoruesiID] [int] IDENTITY(1,1) NOT NULL,
	[roliID] [int] NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_Perdoruesi] PRIMARY KEY CLUSTERED 
(
	[perdoruesiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Punetori]    Script Date: 5/14/2019 7:07:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Punetori](
	[punetoriID] [int] IDENTITY(1,1) NOT NULL,
	[departmenti_id] [int] NULL,
	[telefoni_id] [int] NULL,
	[emri] [varchar](50) NULL,
	[mbiemri] [varchar](50) NULL,
	[gjinia] [char](10) NULL,
	[qyteti] [varchar](50) NULL,
	[adresa] [varchar](50) NULL,
	[data_lindjes] [date] NULL,
	[email] [varchar](50) NULL,
	[data_punesimit] [date] NULL,
 CONSTRAINT [PK_Punetori] PRIMARY KEY CLUSTERED 
(
	[punetoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pushimi]    Script Date: 5/14/2019 7:07:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pushimi](
	[pushimi_id] [int] IDENTITY(1,1) NOT NULL,
	[punetori_id] [int] NULL,
	[data_fillimit] [date] NULL,
	[data_mbarimit] [date] NULL,
	[arsyeja] [text] NULL,
 CONSTRAINT [PK_Pushimi] PRIMARY KEY CLUSTERED 
(
	[pushimi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roli]    Script Date: 5/14/2019 7:07:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roli](
	[roliID] [int] NOT NULL,
	[emertimi] [varchar](50) NULL,
 CONSTRAINT [PK_Roli] PRIMARY KEY CLUSTERED 
(
	[roliID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Telefoni]    Script Date: 5/14/2019 7:07:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Telefoni](
	[telefoniID] [int] IDENTITY(1,1) NOT NULL,
	[punetori_id] [int] NULL,
	[telefoni_1] [varchar](50) NULL,
	[telefoni_2] [varchar](50) NULL,
 CONSTRAINT [PK_Telefoni] PRIMARY KEY CLUSTERED 
(
	[telefoniID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vijueshmeria]    Script Date: 5/14/2019 7:07:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vijueshmeria](
	[vijueshmeriaID] [int] IDENTITY(1,1) NOT NULL,
	[punetori_id] [int] NULL,
	[data] [datetime] NULL,
	[koha_fillimit] [datetime] NULL,
	[koha_mbarimit] [datetime] NULL,
	[komente_shtese] [text] NULL,
 CONSTRAINT [PK_Vijueshmeria] PRIMARY KEY CLUSTERED 
(
	[vijueshmeriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Pagesa]  WITH CHECK ADD  CONSTRAINT [FK_Pagesa_Punetori] FOREIGN KEY([punetori_id])
REFERENCES [dbo].[Punetori] ([punetoriID])
GO
ALTER TABLE [dbo].[Pagesa] CHECK CONSTRAINT [FK_Pagesa_Punetori]
GO
ALTER TABLE [dbo].[Perdoruesi]  WITH CHECK ADD  CONSTRAINT [FK_Perdoruesi_Roli] FOREIGN KEY([roliID])
REFERENCES [dbo].[Roli] ([roliID])
GO
ALTER TABLE [dbo].[Perdoruesi] CHECK CONSTRAINT [FK_Perdoruesi_Roli]
GO
ALTER TABLE [dbo].[Punetori]  WITH CHECK ADD  CONSTRAINT [FK_Punetori_Departmenti] FOREIGN KEY([departmenti_id])
REFERENCES [dbo].[Departmenti] ([departmentiID])
GO
ALTER TABLE [dbo].[Punetori] CHECK CONSTRAINT [FK_Punetori_Departmenti]
GO
ALTER TABLE [dbo].[Telefoni]  WITH CHECK ADD  CONSTRAINT [FK_Telefoni_Punetori] FOREIGN KEY([punetori_id])
REFERENCES [dbo].[Punetori] ([punetoriID])
GO
ALTER TABLE [dbo].[Telefoni] CHECK CONSTRAINT [FK_Telefoni_Punetori]
GO
ALTER TABLE [dbo].[Vijueshmeria]  WITH CHECK ADD  CONSTRAINT [FK_Vijueshmeria_Punetori] FOREIGN KEY([punetori_id])
REFERENCES [dbo].[Punetori] ([punetoriID])
GO
ALTER TABLE [dbo].[Vijueshmeria] CHECK CONSTRAINT [FK_Vijueshmeria_Punetori]
GO
USE [master]
GO
ALTER DATABASE [EmployeeManagment] SET  READ_WRITE 
GO
