USE [master]
GO
/****** Object:  Database [AusthirCars]    Script Date: 2/19/2022 7:15:41 PM ******/
CREATE DATABASE [AusthirCars]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AusthirCars', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AusthirCars.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AusthirCars_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\AusthirCars_log.ldf' , SIZE = 2368KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AusthirCars] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AusthirCars].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AusthirCars] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AusthirCars] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AusthirCars] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AusthirCars] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AusthirCars] SET ARITHABORT OFF 
GO
ALTER DATABASE [AusthirCars] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AusthirCars] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AusthirCars] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AusthirCars] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AusthirCars] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AusthirCars] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AusthirCars] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AusthirCars] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AusthirCars] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AusthirCars] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AusthirCars] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AusthirCars] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AusthirCars] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AusthirCars] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AusthirCars] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AusthirCars] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AusthirCars] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AusthirCars] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AusthirCars] SET  MULTI_USER 
GO
ALTER DATABASE [AusthirCars] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AusthirCars] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AusthirCars] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AusthirCars] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AusthirCars] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AusthirCars] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AusthirCars] SET QUERY_STORE = OFF
GO
USE [AusthirCars]
GO
/****** Object:  Table [dbo].[adminInfo]    Script Date: 2/19/2022 7:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminInfo](
	[adminId] [varchar](50) NOT NULL,
	[adminName] [varchar](50) NOT NULL,
	[adminPassword] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[adminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[afterSalesService]    Script Date: 2/19/2022 7:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[afterSalesService](
	[tokenId] [int] IDENTITY(10001,1) NOT NULL,
	[TID] [varchar](50) NOT NULL,
	[userEmail] [varchar](100) NOT NULL,
	[plateNumber] [varchar](50) NOT NULL,
	[problemDescription] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cars]    Script Date: 2/19/2022 7:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cars](
	[carId] [varchar](50) NOT NULL,
	[carBrand] [varchar](50) NOT NULL,
	[carModel] [varchar](255) NOT NULL,
	[carPrice] [varchar](50) NOT NULL,
	[carEMI] [varchar](50) NULL,
	[carGenre] [varchar](50) NOT NULL,
	[carReleaseDate] [varchar](50) NOT NULL,
	[carSeats] [int] NOT NULL,
	[images] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[carId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[engineDetails]    Script Date: 2/19/2022 7:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[engineDetails](
	[engineId] [int] IDENTITY(1,1) NOT NULL,
	[carId] [varchar](50) NOT NULL,
	[engineType] [varchar](50) NOT NULL,
	[engineDisplacement] [varchar](50) NOT NULL,
	[noOfCylinder] [int] NOT NULL,
	[maxPower] [varchar](50) NULL,
	[transmission] [varchar](50) NULL,
	[maxTorque] [varchar](50) NULL,
	[valvePerCylinder] [varchar](50) NULL,
	[turboCharger] [varchar](50) NULL,
	[superCharger] [varchar](50) NULL,
	[transmissionType] [varchar](50) NULL,
	[gearBox] [varchar](50) NULL,
	[hybrid] [varchar](50) NULL,
	[driveType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[engineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fuelPerformanceDetails]    Script Date: 2/19/2022 7:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fuelPerformanceDetails](
	[carId] [varchar](50) NOT NULL,
	[fuelType] [varchar](50) NOT NULL,
	[mileage] [varchar](50) NOT NULL,
	[fuelTank] [varchar](50) NOT NULL,
	[topSpeed] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[installmentDetails]    Script Date: 2/19/2022 7:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[installmentDetails](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[userEmail] [varchar](100) NOT NULL,
	[TID] [varchar](50) NOT NULL,
	[totalInsatallment] [int] NOT NULL,
	[paidInstallment] [int] NOT NULL,
	[paidAmount] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modification]    Script Date: 2/19/2022 7:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modification](
	[modId] [varchar](50) NOT NULL,
	[modType] [varchar](50) NOT NULL,
	[modModel] [varchar](50) NOT NULL,
	[modPrice] [varchar](50) NOT NULL,
	[carModel] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[modId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transactionLog]    Script Date: 2/19/2022 7:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transactionLog](
	[purchaseId] [int] IDENTITY(1,1) NOT NULL,
	[TID] [varchar](50) NOT NULL,
	[userEmail] [varchar](100) NOT NULL,
	[productId] [varchar](50) NOT NULL,
	[transactionType] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[purchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userInfo]    Script Date: 2/19/2022 7:15:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userInfo](
	[userEmail] [varchar](100) NOT NULL,
	[userPassword] [varchar](50) NOT NULL,
	[userName] [varchar](50) NOT NULL,
	[userAddress] [varchar](100) NOT NULL,
	[userMobile] [varchar](20) NOT NULL,
	[userNID] [varchar](50) NOT NULL,
	[userPassport] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[userEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'AD0012', N'Audi', N'A7', N'5000000', NULL, N'Hatchback', N'2020', 5, N'audia7.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'AD0015', N'Audi ', N'A4 Avant', N'8500000', NULL, N'Wagon', N'2021', 5, N'audia4avant.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'AD0018', N'Audi ', N'e-tron', N'15000000', NULL, N'SUV', N'2018', 6, N'audietron.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'AD004', N'Audi', N'A4', N'7000000', NULL, N'Sedan', N'2020', 4, N'audia4.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'AD006', N'Audi', N'A8', N'15000000', NULL, N'Sedan', N'2021', 4, N'audia8.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'B009', N'Bentley', N'Mulsanne', N'3500000', NULL, N'Sedan', N'2017', 4, N'bentleymulsanne.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'BMW001', N'BMW', N'8-Serie', N'24000000', NULL, N'Coupe', N'2021', 2, N'bmw8serie.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'BMW0013', N'BMW', N'4-serie', N'5305000', NULL, N'Hatchback', N'2021', 4, N'bmw4serie.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'BMW0016', N'BMW', N'X7', N'5400000', NULL, N'SUV', N'2021', 6, N'bmwx7.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'C0010', N'Cadillac', N'CT6', N'9000000', NULL, N'Sedan', N'2021', 4, N'cadillacct6.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'F005', N'Ferrari', N'LaFerrari', N'200000000', NULL, N'Coupe', N'2021', 2, N'ferarilaferari.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'FR007', N'Ford', N'Mustang', N'12000000', NULL, N'Coupe', N'2018', 2, N'formustang.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'MB0014', N'Mercedes-Benz', N'E-class', N'9500000', NULL, N'Wagon', N'2018', 5, N'mbeclass.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'MB0017', N'Mercedes-Benz', N'S-class', N'20400000', NULL, N'Sedan', N'2018', 4, N'mbsclass.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'MB002', N'Mercedes-Benz', N'AMG GT', N'5000000', NULL, N'Coupe', N'2020', 2, N'mbamggt.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'MB008', N'Mercedes-Benz', N'EQC', N'3500000', NULL, N'SUV', N'2019', 5, N'mbeqc.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'PC0011', N'Porsche', N'Panamera', N'20000000', NULL, N'Hatchback', N'2021', 4, N'pcoanamera.jpg')
INSERT [dbo].[cars] ([carId], [carBrand], [carModel], [carPrice], [carEMI], [carGenre], [carReleaseDate], [carSeats], [images]) VALUES (N'PC003', N'Porsche', N'Macan', N'4000000', NULL, N'SUV', N'2018', 5, N'pcmacan.jpg')
GO
ALTER TABLE [dbo].[afterSalesService]  WITH CHECK ADD FOREIGN KEY([userEmail])
REFERENCES [dbo].[userInfo] ([userEmail])
GO
ALTER TABLE [dbo].[engineDetails]  WITH CHECK ADD FOREIGN KEY([carId])
REFERENCES [dbo].[cars] ([carId])
GO
ALTER TABLE [dbo].[fuelPerformanceDetails]  WITH CHECK ADD FOREIGN KEY([carId])
REFERENCES [dbo].[cars] ([carId])
GO
ALTER TABLE [dbo].[installmentDetails]  WITH CHECK ADD FOREIGN KEY([userEmail])
REFERENCES [dbo].[userInfo] ([userEmail])
GO
ALTER TABLE [dbo].[transactionLog]  WITH CHECK ADD FOREIGN KEY([userEmail])
REFERENCES [dbo].[userInfo] ([userEmail])
GO
USE [master]
GO
ALTER DATABASE [AusthirCars] SET  READ_WRITE 
GO
