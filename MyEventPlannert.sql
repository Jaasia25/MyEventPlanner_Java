USE [master]
GO
/****** Object:  Database [MyEventPlanner]    Script Date: 09/11/2022 17:59:20 ******/
CREATE DATABASE [MyEventPlanner] ON  PRIMARY 
( NAME = N'My Event Planner', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\My_Event_Planner.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'My Event Planner_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\My_Event_Planner_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MyEventPlanner] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyEventPlanner].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyEventPlanner] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MyEventPlanner] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MyEventPlanner] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MyEventPlanner] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MyEventPlanner] SET ARITHABORT OFF
GO
ALTER DATABASE [MyEventPlanner] SET AUTO_CLOSE ON
GO
ALTER DATABASE [MyEventPlanner] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MyEventPlanner] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MyEventPlanner] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MyEventPlanner] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MyEventPlanner] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MyEventPlanner] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MyEventPlanner] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MyEventPlanner] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MyEventPlanner] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MyEventPlanner] SET  DISABLE_BROKER
GO
ALTER DATABASE [MyEventPlanner] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MyEventPlanner] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MyEventPlanner] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MyEventPlanner] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MyEventPlanner] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MyEventPlanner] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MyEventPlanner] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [MyEventPlanner] SET  READ_WRITE
GO
ALTER DATABASE [MyEventPlanner] SET RECOVERY SIMPLE
GO
ALTER DATABASE [MyEventPlanner] SET  MULTI_USER
GO
ALTER DATABASE [MyEventPlanner] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MyEventPlanner] SET DB_CHAINING OFF
GO
USE [MyEventPlanner]
GO
/****** Object:  Table [dbo].[Photographer]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Photographer](
	[Photographer_ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Photo_expense] [int] NOT NULL,
	[Phone] [varchar](14) NOT NULL,
	[Experience] [int] NULL,
 CONSTRAINT [PK_Photographer] PRIMARY KEY CLUSTERED 
(
	[Photographer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Photographer] ON [dbo].[Photographer] 
(
	[Photographer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Photographer] ([Photographer_ID], [Name], [Price], [Photo_expense], [Phone], [Experience]) VALUES (1, N'himu', 500, 400, N'01754466100', NULL)
INSERT [dbo].[Photographer] ([Photographer_ID], [Name], [Price], [Photo_expense], [Phone], [Experience]) VALUES (2, N'hira', 1000, 800, N'01754466111', NULL)
/****** Object:  Table [dbo].[PaidAmount]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaidAmount](
	[PaidID] [int] NOT NULL,
	[PaymentID] [int] NOT NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musician]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Musician](
	[Musician_ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PhoneNo] [varchar](14) NOT NULL,
	[Price] [int] NOT NULL,
	[Mus_Expense] [int] NOT NULL,
 CONSTRAINT [PK_Musician] PRIMARY KEY CLUSTERED 
(
	[Musician_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Musician] ON [dbo].[Musician] 
(
	[Musician_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Musician] ([Musician_ID], [Name], [PhoneNo], [Price], [Mus_Expense]) VALUES (1, N'Tahsan', N'+8801919191919', 100000, 80000)
INSERT [dbo].[Musician] ([Musician_ID], [Name], [PhoneNo], [Price], [Mus_Expense]) VALUES (2, N'arnob', N'99999999999999', 500000, 400000)
/****** Object:  Table [dbo].[Menu]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [int] NOT NULL,
	[Price] [int] NULL,
	[Cuisine] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Menu] ([MenuID], [Price], [Cuisine], [Description]) VALUES (1, 350, N'Chinese', N'sd')
INSERT [dbo].[Menu] ([MenuID], [Price], [Cuisine], [Description]) VALUES (2, 500, N'italian', N'ez')
/****** Object:  Table [dbo].[Event]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [varchar](100) NOT NULL,
	[Date] [date] NOT NULL,
	[ThemeID] [int] NOT NULL,
	[PhotographerID] [int] NULL,
	[TypeID] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
	[DecoratorID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[MusicianID] [int] NULL,
	[GuestNumber] [int] NOT NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_Event_1] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Event] ON [dbo].[Event] 
(
	[EventID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Event] ON
INSERT [dbo].[Event] ([EventID], [EventName], [Date], [ThemeID], [PhotographerID], [TypeID], [MenuID], [DecoratorID], [CustomerID], [MusicianID], [GuestNumber], [Description]) VALUES (3, N'new', CAST(0x58440B00 AS Date), 1, 1, 1, 1, 1, 2, NULL, 600, N'sdf')
INSERT [dbo].[Event] ([EventID], [EventName], [Date], [ThemeID], [PhotographerID], [TypeID], [MenuID], [DecoratorID], [CustomerID], [MusicianID], [GuestNumber], [Description]) VALUES (4, N'new', CAST(0x58440B00 AS Date), 1, NULL, 1, 1, 1, 2, NULL, 600, N'fff')
INSERT [dbo].[Event] ([EventID], [EventName], [Date], [ThemeID], [PhotographerID], [TypeID], [MenuID], [DecoratorID], [CustomerID], [MusicianID], [GuestNumber], [Description]) VALUES (5, N'second', CAST(0x49440B00 AS Date), 1, NULL, 1, 1, 1, 2, 1, 33, N'aaa')
INSERT [dbo].[Event] ([EventID], [EventName], [Date], [ThemeID], [PhotographerID], [TypeID], [MenuID], [DecoratorID], [CustomerID], [MusicianID], [GuestNumber], [Description]) VALUES (6, N'second', CAST(0x49440B00 AS Date), 1, 1, 1, 1, 1, 2, 1, 33, N'sss')
INSERT [dbo].[Event] ([EventID], [EventName], [Date], [ThemeID], [PhotographerID], [TypeID], [MenuID], [DecoratorID], [CustomerID], [MusicianID], [GuestNumber], [Description]) VALUES (9, N'samin birthday', CAST(0x6D440B00 AS Date), 1, 2, 2, 2, 1, 7, 1, 5, N'vvv')
INSERT [dbo].[Event] ([EventID], [EventName], [Date], [ThemeID], [PhotographerID], [TypeID], [MenuID], [DecoratorID], [CustomerID], [MusicianID], [GuestNumber], [Description]) VALUES (10, N'seminar', CAST(0xC3450B00 AS Date), 1, 1, 3, 2, 1, 10, 1, 69, N'ttt')
INSERT [dbo].[Event] ([EventID], [EventName], [Date], [ThemeID], [PhotographerID], [TypeID], [MenuID], [DecoratorID], [CustomerID], [MusicianID], [GuestNumber], [Description]) VALUES (11, N'new test', CAST(0xC3450B00 AS Date), 2, NULL, 3, 2, 2, 4, 2, 6969, N'changed')
INSERT [dbo].[Event] ([EventID], [EventName], [Date], [ThemeID], [PhotographerID], [TypeID], [MenuID], [DecoratorID], [CustomerID], [MusicianID], [GuestNumber], [Description]) VALUES (12, N'bal', CAST(0x5D440B00 AS Date), 2, 2, 1, 2, 2, 10, 1, 25, N'baal na bhalo')
INSERT [dbo].[Event] ([EventID], [EventName], [Date], [ThemeID], [PhotographerID], [TypeID], [MenuID], [DecoratorID], [CustomerID], [MusicianID], [GuestNumber], [Description]) VALUES (13, N'asd', CAST(0x5D440B00 AS Date), 1, NULL, 1, 1, 1, 2, 1, 55, N'')
INSERT [dbo].[Event] ([EventID], [EventName], [Date], [ThemeID], [PhotographerID], [TypeID], [MenuID], [DecoratorID], [CustomerID], [MusicianID], [GuestNumber], [Description]) VALUES (14, N'asd', CAST(0x68440B00 AS Date), 1, 1, 1, 2, 1, 2, 1, 88, N'657')
SET IDENTITY_INSERT [dbo].[Event] OFF
/****** Object:  Table [dbo].[DueAmount]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DueAmount](
	[DueID] [int] NOT NULL,
	[PaymentID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_DueAmount] PRIMARY KEY CLUSTERED 
(
	[DueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Decorator]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Decorator](
	[Decorator_ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PhoneNo] [varchar](14) NOT NULL,
	[Price] [int] NOT NULL,
	[Deco_Expense] [int] NOT NULL,
 CONSTRAINT [PK_Decorator] PRIMARY KEY CLUSTERED 
(
	[Decorator_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Decorator] ON [dbo].[Decorator] 
(
	[Decorator_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Decorator] ([Decorator_ID], [Name], [PhoneNo], [Price], [Deco_Expense]) VALUES (1, N'NafisDeco', N'88888888', 50000, 45000)
INSERT [dbo].[Decorator] ([Decorator_ID], [Name], [PhoneNo], [Price], [Deco_Expense]) VALUES (2, N'AtiqDeco', N'99999999', 45000, 40000)
/****** Object:  Table [dbo].[Customer]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Name] [varchar](100) NOT NULL,
	[Cus_ID] [int] NOT NULL,
	[Phone] [varchar](14) NOT NULL,
	[Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Cus_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Customer] ON [dbo].[Customer] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([Name], [Cus_ID], [Phone], [Address]) VALUES (N'ahnaf', 2, N'3523', N'asd')
INSERT [dbo].[Customer] ([Name], [Cus_ID], [Phone], [Address]) VALUES (N'oyshe', 3, N'0176552323', N'lalalal')
INSERT [dbo].[Customer] ([Name], [Cus_ID], [Phone], [Address]) VALUES (N'Jaasia', 4, N'015555555', N'asdasd')
INSERT [dbo].[Customer] ([Name], [Cus_ID], [Phone], [Address]) VALUES (N'Maria', 7, N'01761283761823', N'asdasd')
INSERT [dbo].[Customer] ([Name], [Cus_ID], [Phone], [Address]) VALUES (N'hanjala', 10, N'12301293', N'asdasd')
/****** Object:  Table [dbo].[Bill]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillNumber] [int] NOT NULL,
	[PaidID] [int] NOT NULL,
	[DueID] [int] NOT NULL,
	[EventID] [int] NOT NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[BillNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Address] [varchar](100) NULL,
	[Phone] [varchar](14) NOT NULL,
	[NID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_User] ON [dbo].[User] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Type](
	[TypeID] [int] NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (1, N'Wedding')
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (2, N'Birthday')
INSERT [dbo].[Type] ([TypeID], [TypeName]) VALUES (3, N'Prank')
/****** Object:  Table [dbo].[TotalPayment]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalPayment](
	[PaymentID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_TotalPayment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theme]    Script Date: 09/11/2022 17:59:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Theme](
	[ThemeID] [int] NOT NULL,
	[Stage] [image] NULL,
	[ThemeName] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Color] [varchar](50) NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_Theme] PRIMARY KEY CLUSTERED 
(
	[ThemeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Theme] ([ThemeID], [Stage], [ThemeName], [Price], [Color], [TypeId]) VALUES (1, NULL, N'weddingy', 65000, N'White', 1)
INSERT [dbo].[Theme] ([ThemeID], [Stage], [ThemeName], [Price], [Color], [TypeId]) VALUES (2, NULL, N'Horror', 10000, N'Black', 2)
/****** Object:  ForeignKey [FK_Event_Event]    Script Date: 09/11/2022 17:59:20 ******/
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Event] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Event]
GO
/****** Object:  ForeignKey [FK_Event_Event1]    Script Date: 09/11/2022 17:59:20 ******/
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Event1] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Event1]
GO
/****** Object:  ForeignKey [FK_Event_Event2]    Script Date: 09/11/2022 17:59:20 ******/
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Event2] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Event2]
GO
/****** Object:  ForeignKey [FK_Event_Event3]    Script Date: 09/11/2022 17:59:20 ******/
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Event3] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Event3]
GO
/****** Object:  ForeignKey [FK_Event_Event4]    Script Date: 09/11/2022 17:59:20 ******/
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Event4] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Event4]
GO
/****** Object:  ForeignKey [FK_Event_Event5]    Script Date: 09/11/2022 17:59:20 ******/
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Event5] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Event5]
GO
/****** Object:  ForeignKey [FK_Event_Event6]    Script Date: 09/11/2022 17:59:20 ******/
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Event6] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Event6]
GO
/****** Object:  ForeignKey [FK_Theme_Type]    Script Date: 09/11/2022 17:59:20 ******/
ALTER TABLE [dbo].[Theme]  WITH CHECK ADD  CONSTRAINT [FK_Theme_Type] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Type] ([TypeID])
GO
ALTER TABLE [dbo].[Theme] CHECK CONSTRAINT [FK_Theme_Type]
GO
