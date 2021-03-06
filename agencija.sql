USE [agencija]
GO
/****** Object:  StoredProcedure [dbo].[vratiSledeciIdSobe]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[vratiSledeciIdSobe]
GO
/****** Object:  StoredProcedure [dbo].[vratiIdPutnika]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[vratiIdPutnika]
GO
/****** Object:  StoredProcedure [dbo].[vratiIdMesta]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[vratiIdMesta]
GO
/****** Object:  StoredProcedure [dbo].[vratiIdHotela]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[vratiIdHotela]
GO
/****** Object:  StoredProcedure [dbo].[vrati_sledeci_id_mesta]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[vrati_sledeci_id_mesta]
GO
/****** Object:  StoredProcedure [dbo].[vrati_rezervacije]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[vrati_rezervacije]
GO
/****** Object:  StoredProcedure [dbo].[unesiUMesto]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[unesiUMesto]
GO
/****** Object:  StoredProcedure [dbo].[unesiSobu]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[unesiSobu]
GO
/****** Object:  StoredProcedure [dbo].[unesiRezervaciju]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[unesiRezervaciju]
GO
/****** Object:  StoredProcedure [dbo].[unesiPutnika]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[unesiPutnika]
GO
/****** Object:  StoredProcedure [dbo].[unesiHotel]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[unesiHotel]
GO
/****** Object:  StoredProcedure [dbo].[spUnesiNoviHotel]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[spUnesiNoviHotel]
GO
/****** Object:  StoredProcedure [dbo].[spUnesiNoviGrad]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[spUnesiNoviGrad]
GO
/****** Object:  StoredProcedure [dbo].[spObrisiHotel]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[spObrisiHotel]
GO
/****** Object:  StoredProcedure [dbo].[sp_vratiGrad]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[sp_vratiGrad]
GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_sve_hotele]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[sp_vrati_sve_hotele]
GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_sobe_iz_hotela @param ]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[sp_vrati_sobe_iz_hotela @param ]
GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_sobe_iz_hotela  ]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[sp_vrati_sobe_iz_hotela  ]
GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_id_mesta]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[sp_vrati_id_mesta]
GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_hotele_iz_grada]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[sp_vrati_hotele_iz_grada]
GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_hotele_iz_drzave]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[sp_vrati_hotele_iz_drzave]
GO
/****** Object:  StoredProcedure [dbo].[sp_AzurirajHotel]    Script Date: 13/07/2016 09:35:10 ******/
DROP PROCEDURE [dbo].[sp_AzurirajHotel]
GO
ALTER TABLE [dbo].[Soba] DROP CONSTRAINT [FK_Soba_Hotel]
GO
ALTER TABLE [dbo].[Rezervacija] DROP CONSTRAINT [FK_Rezervacija_Putnik]
GO
ALTER TABLE [dbo].[Rezervacija] DROP CONSTRAINT [FK_Rezervacija_Hotel]
GO
ALTER TABLE [dbo].[Racun] DROP CONSTRAINT [FK_Racun_Soba]
GO
ALTER TABLE [dbo].[Racun] DROP CONSTRAINT [FK_Racun_Racun]
GO
ALTER TABLE [dbo].[Racun] DROP CONSTRAINT [FK_Racun_Putnik]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK_Hotel_Mesto]
GO
/****** Object:  Table [dbo].[StavkaRacuna]    Script Date: 13/07/2016 09:35:10 ******/
DROP TABLE [dbo].[StavkaRacuna]
GO
/****** Object:  Table [dbo].[Soba]    Script Date: 13/07/2016 09:35:10 ******/
DROP TABLE [dbo].[Soba]
GO
/****** Object:  Table [dbo].[Rezervacija]    Script Date: 13/07/2016 09:35:10 ******/
DROP TABLE [dbo].[Rezervacija]
GO
/****** Object:  Table [dbo].[Racun]    Script Date: 13/07/2016 09:35:10 ******/
DROP TABLE [dbo].[Racun]
GO
/****** Object:  Table [dbo].[Putnik]    Script Date: 13/07/2016 09:35:10 ******/
DROP TABLE [dbo].[Putnik]
GO
/****** Object:  Table [dbo].[Mesto]    Script Date: 13/07/2016 09:35:10 ******/
DROP TABLE [dbo].[Mesto]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 13/07/2016 09:35:10 ******/
DROP TABLE [dbo].[Hotel]
GO
USE [master]
GO
/****** Object:  Database [agencija]    Script Date: 13/07/2016 09:35:10 ******/
DROP DATABASE [agencija]
GO
/****** Object:  Database [agencija]    Script Date: 13/07/2016 09:35:10 ******/
CREATE DATABASE [agencija]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'agencija', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\agencija.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'agencija_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\agencija_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [agencija] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [agencija].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [agencija] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [agencija] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [agencija] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [agencija] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [agencija] SET ARITHABORT OFF 
GO
ALTER DATABASE [agencija] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [agencija] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [agencija] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [agencija] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [agencija] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [agencija] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [agencija] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [agencija] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [agencija] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [agencija] SET  DISABLE_BROKER 
GO
ALTER DATABASE [agencija] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [agencija] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [agencija] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [agencija] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [agencija] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [agencija] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [agencija] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [agencija] SET RECOVERY FULL 
GO
ALTER DATABASE [agencija] SET  MULTI_USER 
GO
ALTER DATABASE [agencija] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [agencija] SET DB_CHAINING OFF 
GO
ALTER DATABASE [agencija] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [agencija] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [agencija] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'agencija', N'ON'
GO
USE [agencija]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[IDHotela] [int] IDENTITY(1,1) NOT NULL,
	[nazivHotela] [nvarchar](50) NULL,
	[brSoba] [int] NULL,
	[IDMesta] [int] NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[IDHotela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mesto]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesto](
	[IDMesta] [int] IDENTITY(1,1) NOT NULL,
	[nazivMesta] [nvarchar](50) NULL,
	[drzava] [nvarchar](50) NULL,
	[region] [nvarchar](50) NULL,
 CONSTRAINT [PK_Mesto] PRIMARY KEY CLUSTERED 
(
	[IDMesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Putnik]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Putnik](
	[IDPutnika] [int] IDENTITY(1,1) NOT NULL,
	[ime] [nvarchar](50) NOT NULL,
	[prezime] [nvarchar](50) NOT NULL,
	[adresa] [nvarchar](max) NOT NULL,
	[telefon] [nvarchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[brojKartice] [nvarchar](max) NULL,
 CONSTRAINT [PK_Putnik] PRIMARY KEY CLUSTERED 
(
	[IDPutnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Racun]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Racun](
	[IDRacuna] [int] NOT NULL,
	[datum] [datetime] NOT NULL,
	[iznos] [float] NOT NULL,
	[storniran] [bit] NULL,
	[IDStavke] [int] NULL,
	[IDSobe] [int] NULL,
	[IDPutnika] [int] NULL,
 CONSTRAINT [PK_Racun] PRIMARY KEY CLUSTERED 
(
	[IDRacuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rezervacija]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervacija](
	[IDRezervacije] [int] IDENTITY(1,1) NOT NULL,
	[datumOd] [datetime] NULL,
	[datumDo] [datetime] NULL,
	[IDPutnika] [int] NULL,
	[IDHotela] [int] NULL,
	[datumRezervacije] [datetime] NULL,
	[otkazana] [bit] NULL,
 CONSTRAINT [PK_Rezervacija] PRIMARY KEY CLUSTERED 
(
	[IDRezervacije] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Soba]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soba](
	[IDSobe] [int] NOT NULL,
	[tipSobe] [nvarchar](50) NULL,
	[brKreveta] [int] NULL,
	[slobodna] [bit] NULL,
	[cena] [float] NULL,
	[IDHotela] [int] NULL,
 CONSTRAINT [PK_Soba] PRIMARY KEY CLUSTERED 
(
	[IDSobe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StavkaRacuna]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StavkaRacuna](
	[IDStavke] [int] NOT NULL,
	[nazivStavke] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StavkaRacuna] PRIMARY KEY CLUSTERED 
(
	[IDStavke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Hotel] ON 

INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1000, N'Ramada', 215, 105)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1001, N'Radisson blu', 275, 100)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1002, N'Crown Plaza', 345, 100)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1003, N'Ritz', 152, 106)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1004, N'Vila Makis', 9, 108)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1005, N'Vila Eleni', 12, 108)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1006, N'Varadero', 25, 107)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1007, N'Le Marabout', 124, 104)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1008, N'Orient Palace', 365, 104)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1009, N'Al Jazira Beach & Spa', 400, 103)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1010, N'Ibis', 104, 101)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1011, N'Hilton', 132, 101)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1012, N'Four Seasons', 125, 102)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1036, N'Era', 65, 128)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1037, N'Staro zdanje', 54, 129)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1038, N'Lozovicka cesma', 69, 130)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1049, N'Rex', 87, 100)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1055, N'Vila Makis', NULL, 108)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1056, N'Srbija', 180, 100)
INSERT [dbo].[Hotel] ([IDHotela], [nazivHotela], [brSoba], [IDMesta]) VALUES (1057, N'Vila Eleni', NULL, 148)
SET IDENTITY_INSERT [dbo].[Hotel] OFF
SET IDENTITY_INSERT [dbo].[Mesto] ON 

INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (100, N'Beograd', N'Srbija', N'Balkan')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (101, N'Pariz', N'Francuska', N'EU')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (102, N'Nica', N'Francuska', N'EU')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (103, N'Djerba', N'Tunis', N'Afrika')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (104, N'Sus', N'Tunis', N'Afrika')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (105, N'Kusadasi', N'Turska', N'Azija')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (106, N'Antalija', N'Turska', N'Azija')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (107, N'Havana', N'Kuba', N'Karibi')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (108, N'Skiatos', N'Grcka', N'EU')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (119, N'Ankara', N'Turska', N'Mediteran')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (120, N'Sarajevo', N'Bosna', N'Balkan')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (123, N'Suncev breg', N'Bugarska', N'Crno more')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (128, N'Meljak', N'Srbija', N'Balkan')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (129, N'Arandjelovac', N'Srbija', N'Balkan')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (130, N'Lozovik', N'Srbija', N'Balkan')
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (147, N'Skiatos', NULL, NULL)
INSERT [dbo].[Mesto] ([IDMesta], [nazivMesta], [drzava], [region]) VALUES (148, N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Mesto] OFF
SET IDENTITY_INSERT [dbo].[Putnik] ON 

INSERT [dbo].[Putnik] ([IDPutnika], [ime], [prezime], [adresa], [telefon], [Email], [brojKartice]) VALUES (1, N'Nikola', N'Stojicevic', N'Vidikovacki venac 14 a', N'011222333', N'nikola10913@its.edu.rs', N'789456465')
INSERT [dbo].[Putnik] ([IDPutnika], [ime], [prezime], [adresa], [telefon], [Email], [brojKartice]) VALUES (2, N'Nebojsa', N'Lazovic', N'17.oktobar 59 v', N'011456789', N'nebojsa2113@its.edu.rs', N'695847123')
INSERT [dbo].[Putnik] ([IDPutnika], [ime], [prezime], [adresa], [telefon], [Email], [brojKartice]) VALUES (4, N'Dragan', N'Pavlovic', N'Barajevo', N'65644798', N'5464979', N'98779797')
INSERT [dbo].[Putnik] ([IDPutnika], [ime], [prezime], [adresa], [telefon], [Email], [brojKartice]) VALUES (37, N'Petar', N'Petrovic', N'Petra Martinovica 27', N'0641322233', N'pera@petrovic.com', N'555666')
INSERT [dbo].[Putnik] ([IDPutnika], [ime], [prezime], [adresa], [telefon], [Email], [brojKartice]) VALUES (38, N'Jelena', N'Tanaskovic', N'Branka Sotre 1a', N'063525099', N'jelena@tanaskovic.com', N'999888')
SET IDENTITY_INSERT [dbo].[Putnik] OFF
INSERT [dbo].[Racun] ([IDRacuna], [datum], [iznos], [storniran], [IDStavke], [IDSobe], [IDPutnika]) VALUES (100, CAST(N'2016-06-25 00:00:00.000' AS DateTime), 1200, 0, 1, 8, 1)
INSERT [dbo].[Racun] ([IDRacuna], [datum], [iznos], [storniran], [IDStavke], [IDSobe], [IDPutnika]) VALUES (101, CAST(N'2016-06-25 00:00:00.000' AS DateTime), 2400, 0, 1, 18, 2)
SET IDENTITY_INSERT [dbo].[Rezervacija] ON 

INSERT [dbo].[Rezervacija] ([IDRezervacije], [datumOd], [datumDo], [IDPutnika], [IDHotela], [datumRezervacije], [otkazana]) VALUES (1000001, CAST(N'2016-07-10 00:00:00.000' AS DateTime), CAST(N'2016-07-14 00:00:00.000' AS DateTime), 1, 1009, NULL, NULL)
INSERT [dbo].[Rezervacija] ([IDRezervacije], [datumOd], [datumDo], [IDPutnika], [IDHotela], [datumRezervacije], [otkazana]) VALUES (1000002, CAST(N'2016-08-04 00:00:00.000' AS DateTime), CAST(N'2016-08-29 00:00:00.000' AS DateTime), 2, 1006, NULL, NULL)
INSERT [dbo].[Rezervacija] ([IDRezervacije], [datumOd], [datumDo], [IDPutnika], [IDHotela], [datumRezervacije], [otkazana]) VALUES (1000034, CAST(N'2016-07-20 00:00:00.000' AS DateTime), CAST(N'2016-07-27 00:00:00.000' AS DateTime), 37, 1004, NULL, NULL)
INSERT [dbo].[Rezervacija] ([IDRezervacije], [datumOd], [datumDo], [IDPutnika], [IDHotela], [datumRezervacije], [otkazana]) VALUES (1000035, CAST(N'2016-09-16 00:00:00.000' AS DateTime), CAST(N'2016-09-23 00:00:00.000' AS DateTime), 38, 1005, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Rezervacija] OFF
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (1, N'jednokrevetna', 1, 1, 20, 1005)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (2, N'jednokrevetna', 1, 1, 20, 1000)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (3, N'dvokrevetna', 2, 1, 35, 1004)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (4, N'jednokrevetna', 1, 1, 15, 1004)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (5, N'trokrevetna', 3, 1, 60, 1003)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (6, N'apartman', 5, 1, 150, 1005)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (7, N'dvokrevetna', 2, 1, 40, 1008)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (8, N'trokrevetna', 3, 1, 60, 1009)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (9, N'dvokrevetna', 2, 1, 18, 1010)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (10, N'cetvorokrevetna', 4, 1, 100, 1011)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (11, N'dvokrevetna', 2, 1, 40, 1012)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (12, N'trokrevetna', 3, 1, 60, 1003)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (13, N'jednokrevetna', 1, 1, 20, 1005)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (14, N'cetvorokrevetna', 4, 1, 100, 1000)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (15, N'dvokrevetna', 2, 1, 40, 1007)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (16, N'trokrevetna', 3, 1, 60, 1007)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (17, N'jednokrevetna', 1, 1, 20, 1001)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (18, N'trokrevetna', 3, 1, 60, 1006)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (19, N'cetvorokrevetna', 4, 1, 80, 1002)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (20, N'dvokrevetna', 2, 1, 40, 1006)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (21, N'jednokrevetna', 1, 1, 20, 1006)
INSERT [dbo].[Soba] ([IDSobe], [tipSobe], [brKreveta], [slobodna], [cena], [IDHotela]) VALUES (22, N'jednokrevetna', NULL, NULL, NULL, 1007)
INSERT [dbo].[StavkaRacuna] ([IDStavke], [nazivStavke]) VALUES (1, N'nocenje')
INSERT [dbo].[StavkaRacuna] ([IDStavke], [nazivStavke]) VALUES (2, N'polupansion')
INSERT [dbo].[StavkaRacuna] ([IDStavke], [nazivStavke]) VALUES (3, N'pansion')
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Mesto] FOREIGN KEY([IDMesta])
REFERENCES [dbo].[Mesto] ([IDMesta])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Mesto]
GO
ALTER TABLE [dbo].[Racun]  WITH CHECK ADD  CONSTRAINT [FK_Racun_Putnik] FOREIGN KEY([IDPutnika])
REFERENCES [dbo].[Putnik] ([IDPutnika])
GO
ALTER TABLE [dbo].[Racun] CHECK CONSTRAINT [FK_Racun_Putnik]
GO
ALTER TABLE [dbo].[Racun]  WITH CHECK ADD  CONSTRAINT [FK_Racun_Racun] FOREIGN KEY([IDStavke])
REFERENCES [dbo].[StavkaRacuna] ([IDStavke])
GO
ALTER TABLE [dbo].[Racun] CHECK CONSTRAINT [FK_Racun_Racun]
GO
ALTER TABLE [dbo].[Racun]  WITH CHECK ADD  CONSTRAINT [FK_Racun_Soba] FOREIGN KEY([IDSobe])
REFERENCES [dbo].[Soba] ([IDSobe])
GO
ALTER TABLE [dbo].[Racun] CHECK CONSTRAINT [FK_Racun_Soba]
GO
ALTER TABLE [dbo].[Rezervacija]  WITH CHECK ADD  CONSTRAINT [FK_Rezervacija_Hotel] FOREIGN KEY([IDHotela])
REFERENCES [dbo].[Hotel] ([IDHotela])
GO
ALTER TABLE [dbo].[Rezervacija] CHECK CONSTRAINT [FK_Rezervacija_Hotel]
GO
ALTER TABLE [dbo].[Rezervacija]  WITH CHECK ADD  CONSTRAINT [FK_Rezervacija_Putnik] FOREIGN KEY([IDPutnika])
REFERENCES [dbo].[Putnik] ([IDPutnika])
GO
ALTER TABLE [dbo].[Rezervacija] CHECK CONSTRAINT [FK_Rezervacija_Putnik]
GO
ALTER TABLE [dbo].[Soba]  WITH CHECK ADD  CONSTRAINT [FK_Soba_Hotel] FOREIGN KEY([IDHotela])
REFERENCES [dbo].[Hotel] ([IDHotela])
GO
ALTER TABLE [dbo].[Soba] CHECK CONSTRAINT [FK_Soba_Hotel]
GO
/****** Object:  StoredProcedure [dbo].[sp_AzurirajHotel]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_AzurirajHotel] 

(
@naziv nvarchar(50),
@brSoba int 
)
as 
begin transaction
UPDATE  Hotel set brSoba=@brSoba WHERE nazivHotela=@naziv;
commit



GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_hotele_iz_drzave]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_vrati_hotele_iz_drzave] 
	-- Add the parameters for the stored procedure here
	@drzava nvarchar(50) = 'Srbija'
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Hotel JOIN Mesto on Hotel.IDMesta=Mesto.IDMesta WHERE Mesto.nazivMesta = @drzava 
END





GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_hotele_iz_grada]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_vrati_hotele_iz_grada] 
	-- Add the parameters for the stored procedure here
	@grad nvarchar(50) = 'Beograd'
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Hotel JOIN Mesto on Hotel.IDMesta=Mesto.IDMesta WHERE Mesto.nazivMesta = @grad 
END




GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_id_mesta]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_vrati_id_mesta] 
	-- Add the parameters for the stored procedure here
	@mesto nvarchar(50)
	 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IDMesta FROM Mesto WHERE nazivMesta = @mesto
END





GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_sobe_iz_hotela  ]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_vrati_sobe_iz_hotela  ] 
	-- Add the parameters for the stored procedure here
	 @param nvarchar(50)= null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT s.tipSobe 
	FROM Soba s
	join Hotel h
	 on s.IdHotela= h.IDHotela
	 where nazivHotela=@param
END




GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_sobe_iz_hotela @param ]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_vrati_sobe_iz_hotela @param ] 
	-- Add the parameters for the stored procedure here
	 @param nvarchar(50)= null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT s.tipSobe 
	FROM Sobe s
	join Hotel h
	 on s.IdHotela= h.IDHotela
	 where nazivHotela=@param
END




GO
/****** Object:  StoredProcedure [dbo].[sp_vrati_sve_hotele]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_vrati_sve_hotele] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from Hotel 
END




GO
/****** Object:  StoredProcedure [dbo].[sp_vratiGrad]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_vratiGrad] 
	-- Add the parameters for the stored procedure here
	@grad nvarchar(50)
	
AS
BEGIN

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT IDMesta
	FROM Mesto 
	where nazivMesta = @grad

END




GO
/****** Object:  StoredProcedure [dbo].[spObrisiHotel]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure [dbo].[spObrisiHotel]
(
@ID int 
)
as 
begin
delete from Hotel where IDHotela=@ID
end



GO
/****** Object:  StoredProcedure [dbo].[spUnesiNoviGrad]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUnesiNoviGrad]

(

@drzava nvarchar(50),
@mesto nvarchar(50),
@region nvarchar(50)
)
as 
begin 
INSERT INTO   Mesto (drzava,nazivMesta,region) values (@drzava,@mesto,@region);
end



GO
/****** Object:  StoredProcedure [dbo].[spUnesiNoviHotel]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUnesiNoviHotel]

(
@naziv nvarchar(50),
@brSoba int ,
@idMesta int
)
as 
begin
INSERT INTO  Hotel (nazivHotela, brSoba,IDMesta) values (@naziv,@brSoba,@idMesta);
end



GO
/****** Object:  StoredProcedure [dbo].[unesiHotel]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[unesiHotel]
	-- Add the parameters for the stored procedure here
@IDMesta int,
@nazivHotela nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Hotel (IDMesta,nazivHotela) values (@IDMesta,@nazivHotela)
END




GO
/****** Object:  StoredProcedure [dbo].[unesiPutnika]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[unesiPutnika]
	-- Add the parameters for the stored procedure here
@ime nvarchar(50),
@prezime nvarchar(50),
@brojKartice nvarchar(50),
@adresa nvarchar(50),
@email nvarchar(50),
@telefon nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into putnik(ime,prezime,adresa,telefon,Email,brojKartice) VALUES (@ime,@prezime,@adresa,@telefon,@email,@brojKartice)
END




GO
/****** Object:  StoredProcedure [dbo].[unesiRezervaciju]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[unesiRezervaciju]
	-- Add the parameters for the stored procedure here
@od datetime,
@do datetime,
@IDHotela int,
@IDPutnika int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Rezervacija (datumOd,datumDo,IDHotela,IDPutnika) VALUES (@od,@do,@IDHotela,@IDPutnika)
END




GO
/****** Object:  StoredProcedure [dbo].[unesiSobu]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[unesiSobu]
	-- Add the parameters for the stored procedure here
@IDsobe int,
@TipSobe nvarchar(50),
@IDHotela int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Soba (IDSobe,tipSobe,IDHotela) Values(@IDSobe,@TipSobe,@IDHotela)
END




GO
/****** Object:  StoredProcedure [dbo].[unesiUMesto]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[unesiUMesto]
	-- Add the parameters for the stored procedure here
@naziv nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT into Mesto (nazivMesta) values (@naziv)
END




GO
/****** Object:  StoredProcedure [dbo].[vrati_rezervacije]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vrati_rezervacije] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT nazivHotela,tipSobe,nazivMesta,datumOd,datumDo,ime,prezime,adresa,brojKartice,telefon,Email
	From Hotel h join Soba s on h.IDHotela=s.IDHotela join Mesto m on m.IDMesta = h.IDMesta join Rezervacija r on r.IDHotela = h.IDHotela join Putnik p on p.IDPutnika = r.IDPutnika
END




GO
/****** Object:  StoredProcedure [dbo].[vrati_sledeci_id_mesta]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vrati_sledeci_id_mesta]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT MAX(IDMesta) 
	FROM Mesto
	
END




GO
/****** Object:  StoredProcedure [dbo].[vratiIdHotela]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vratiIdHotela]
	-- Add the parameters for the stored procedure here
@nazivHotela nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  IDHotela
	FROM Hotel
	WHERE nazivHotela = @nazivHotela 
END




GO
/****** Object:  StoredProcedure [dbo].[vratiIdMesta]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vratiIdMesta]
	-- Add the parameters for the stored procedure here
@nazivMesta nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT IDMesta
FROM Mesto
WHERE nazivMesta = @nazivMesta
END




GO
/****** Object:  StoredProcedure [dbo].[vratiIdPutnika]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vratiIdPutnika]
	-- Add the parameters for the stored procedure here
@imePutnika nvarchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT IDPutnika
FROM Putnik
WHERE ime = @imePutnika
END




GO
/****** Object:  StoredProcedure [dbo].[vratiSledeciIdSobe]    Script Date: 13/07/2016 09:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[vratiSledeciIdSobe]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT MAX(IDSobe)
	FROM Soba
END

GO
USE [master]
GO
ALTER DATABASE [agencija] SET  READ_WRITE 
GO
