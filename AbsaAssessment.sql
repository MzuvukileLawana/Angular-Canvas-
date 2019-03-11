USE [master]
GO
/****** Object:  Database [ABSA-Assessment-DB]    Script Date: 2019/03/11 11:18:02 AM ******/
CREATE DATABASE [ABSA-Assessment-DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ABSA-Assessment-DB', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ABSA-Assessment-DB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ABSA-Assessment-DB_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ABSA-Assessment-DB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ABSA-Assessment-DB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ABSA-Assessment-DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ABSA-Assessment-DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET  MULTI_USER 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ABSA-Assessment-DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ABSA-Assessment-DB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ABSA-Assessment-DB]
GO
/****** Object:  Table [dbo].[BookFlight]    Script Date: 2019/03/11 11:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookFlight](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[From] [varchar](50) NOT NULL,
	[To] [varchar](50) NOT NULL,
	[DepartureDate] [date] NOT NULL,
	[ReturnDate] [date] NOT NULL,
	[Adults] [varchar](50) NOT NULL,
	[Children] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BookFlight] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookFlight] ON 

INSERT [dbo].[BookFlight] ([Id], [From], [To], [DepartureDate], [ReturnDate], [Adults], [Children]) VALUES (2, N'Cape Town', N'Johannesburg', CAST(N'2019-07-03' AS Date), CAST(N'2019-07-03' AS Date), N'2', N'0')
INSERT [dbo].[BookFlight] ([Id], [From], [To], [DepartureDate], [ReturnDate], [Adults], [Children]) VALUES (3, N'Johannesburg', N'Durban', CAST(N'2019-08-03' AS Date), CAST(N'2019-08-03' AS Date), N'1', N'1')
INSERT [dbo].[BookFlight] ([Id], [From], [To], [DepartureDate], [ReturnDate], [Adults], [Children]) VALUES (1002, N'Durban', N'Johannesburg', CAST(N'2019-07-03' AS Date), CAST(N'2019-07-03' AS Date), N'1', N'1')
INSERT [dbo].[BookFlight] ([Id], [From], [To], [DepartureDate], [ReturnDate], [Adults], [Children]) VALUES (1003, N'Durban', N'Cape Town', CAST(N'2019-07-03' AS Date), CAST(N'2019-07-03' AS Date), N'3', N'1')
INSERT [dbo].[BookFlight] ([Id], [From], [To], [DepartureDate], [ReturnDate], [Adults], [Children]) VALUES (1004, N'Durban', N'Cape Town', CAST(N'2019-07-03' AS Date), CAST(N'2019-07-03' AS Date), N'3', N'3')
INSERT [dbo].[BookFlight] ([Id], [From], [To], [DepartureDate], [ReturnDate], [Adults], [Children]) VALUES (1005, N'Port-Elizabeth', N'Durban', CAST(N'2019-03-18' AS Date), CAST(N'2019-03-10' AS Date), N'2', N'3')
SET IDENTITY_INSERT [dbo].[BookFlight] OFF
USE [master]
GO
ALTER DATABASE [ABSA-Assessment-DB] SET  READ_WRITE 
GO
