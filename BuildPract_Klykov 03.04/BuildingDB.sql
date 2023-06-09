
CREATE DATABASE Trade_Is33_klykov2
USE [Trade_Is33_klykov2]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 04.04.2023 11:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [nvarchar](max) NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPointID] [int] NOT NULL,
	[UserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 04.04.2023 11:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 04.04.2023 11:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Index] [int] NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 04.04.2023 11:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategory] [nvarchar](max) NOT NULL,
	[ProductPhoto] [image] NULL,
	[ProductManufacturer] [nvarchar](max) NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 04.04.2023 11:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04.04.2023 11:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [UserID]) VALUES (1, N'Завершен', CAST(N'2022-05-21T00:00:00.000' AS DateTime), 18, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [UserID]) VALUES (2, N'Новый ', CAST(N'2022-05-22T00:00:00.000' AS DateTime), 14, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [UserID]) VALUES (3, N'Завершен', CAST(N'2022-05-23T00:00:00.000' AS DateTime), 22, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [UserID]) VALUES (4, N'Новый ', CAST(N'2022-05-23T00:00:00.000' AS DateTime), 22, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [UserID]) VALUES (5, N'Завершен', CAST(N'2022-05-25T00:00:00.000' AS DateTime), 26, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [UserID]) VALUES (6, N'Новый ', CAST(N'2022-05-26T00:00:00.000' AS DateTime), 28, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [UserID]) VALUES (7, N'Завершен', CAST(N'2022-05-28T00:00:00.000' AS DateTime), 28, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [UserID]) VALUES (8, N'Новый ', CAST(N'2022-05-28T00:00:00.000' AS DateTime), 32, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [UserID]) VALUES (9, N'Завершен', CAST(N'2022-05-29T00:00:00.000' AS DateTime), 36, NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPointID], [UserID]) VALUES (10, N'Завершен', CAST(N'2022-05-30T00:00:00.000' AS DateTime), 36, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[PickupPoint] ON 

INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (1, 344288, N' г. Сыктывкар', N' ул. Чехова 1')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (2, 614164, N' г.Сыктывкар', N'  ул. Степная 30')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (3, 394242, N' г. Сыктывкар', N' ул. Коммунистическая 43')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (4, 660540, N' г. Сыктывкар', N' ул. Солнечная 25')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (5, 125837, N' г. Сыктывкар', N' ул. Шоссейная 40 ')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (6, 125703, N' г. Сыктывкар', N' ул. Партизанская 49')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (7, 625283, N' г. Сыктывкар', N' ул. Победы 46')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (8, 614611, N' г. Сыктывкар', N' ул. Молодежная 50')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (9, 454311, N' г.Сыктывкар', N' ул. Новая 19')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (10, 660007, N' г.Сыктывкар', N' ул. Октябрьская 19')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (11, 603036, N' г. Сыктывкар', N' ул. Садовая 4')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (12, 450983, N' г.Сыктывкар', N' ул. Комсомольская 26')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (13, 394782, N' г. Сыктывкар', N' ул. Чехова 3')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (14, 603002, N' г. Сыктывкар', N' ул. Дзержинского 28')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (15, 450558, N' г. Сыктывкар', N' ул. Набережная 30')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (16, 394060, N' г.Сыктывкар', N' ул. Фрунзе 43')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (17, 410661, N' г. Сыктывкар', N' ул. Школьная 50')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (18, 625590, N' г. Сыктывкар', N' ул. Коммунистическая 20')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (19, 625683, N' г. Сыктывкар', N' ул. 8 Марта 8')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (20, 400562, N' г. Сыктывкар', N' ул. Зеленая 32')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (21, 614510, N' г. Сыктывкар', N' ул. Маяковского 47')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (22, 410542, N' г. Сыктывкар', N' ул. Светлая 46')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (23, 620839, N' г. Сыктывкар', N' ул. Цветочная 8')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (24, 443890, N' г. Сыктывкар', N' ул. Коммунистическая 1')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (25, 603379, N' г. Сыктывкар', N' ул. Спортивная 46')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (26, 603721, N' г. Сыктывкар', N' ул. Гоголя 41')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (27, 410172, N' г. Сыктывкар', N' ул. Северная 13')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (28, 420151, N' г. Сыктывкар', N' ул. Вишневая 32')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (29, 125061, N' г. Сыктывкар', N' ул. Подгорная 8')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (30, 630370, N' г. Сыктывкар', N' ул. Шоссейная 24')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (31, 614753, N' г. Сыктывкар', N' ул. Полевая 35')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (32, 426030, N' г. Сыктывкар', N' ул. Маяковского 44')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (33, 450375, N' г. Сыктывкар ', N'ул. Клубная 44')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (34, 625560, N' г. Сыктывкар', N' ул. Некрасова 12')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (35, 630201, N' г. Сыктывкар', N' ул. Комсомольская 17')
INSERT [dbo].[PickupPoint] ([ID], [Index], [City], [Street]) VALUES (36, 190949, N' г. Сыктывкар', N' ул. Мичурина 26')
SET IDENTITY_INSERT [dbo].[PickupPoint] OFF
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'0YGHZ7', N'Очки защитные ', N'Очки защитные Husqvarna Clear (5449638-01) открытые с прозрачными линзами', N'Защита лица, глаз, головы', NULL, N'Husqvarna', CAST(700.0000 AS Decimal(19, 4)), 9, 36)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'2G3280', N'Угол наружный', N'Угол наружный Vinylon 3050 мм серо-голубой', N'Стеновые и фасадные материалы', NULL, N'Vinylon', CAST(795.0000 AS Decimal(19, 4)), 9, 20)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'3L7RCZ', N'Газобетон', N'Газобетон ЛСР 100х250х625 мм D400', N'Стеновые и фасадные материалы', NULL, N'ЛСР', CAST(7400.0000 AS Decimal(19, 4)), 2, 20)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'3XBOTN', N'Керамзит фракция', N'Керамзит фракция 10-20 мм 0,05 куб.м', N'Общестроительные материалы', NULL, N'MixMaster', CAST(110.0000 AS Decimal(19, 4)), 5, 21)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'4JR1HN', N'Шпатель', N'Шпатель малярный 100 мм с пластиковой ручкой', N'Ручной инструмент', NULL, N'Hesler', CAST(26.0000 AS Decimal(19, 4)), 6, 7)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'4WZEOT', N'Лезвие для ножа ', N'Лезвие для ножа Armero 18 мм прямое (10 шт.)', N'Ручной инструмент', NULL, N'Armero', CAST(110.0000 AS Decimal(19, 4)), 6, 17)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'61PGH3', N'Очки защитные', N'Очки защитные Delta Plus KILIMANDJARO (KILIMGRIN) открытые с прозрачными линзами', N'Защита лица, глаз, головы', NULL, N'KILIMGRIN', CAST(184.0000 AS Decimal(19, 4)), 6, 25)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'81F1WG', N'Каска защитная', N'Каска защитная Delta Plus BASEBALL DIAMOND V UP (DIAM5UPBCFLBS) белая', N'Защита лица, глаз, головы', NULL, N'Delta', CAST(1500.0000 AS Decimal(19, 4)), 2, 13)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'83M5ME', N'Кисть', N'Кисть плоская смешанная щетина 100х12 мм для красок и антисептиков на водной основе', N'Ручной инструмент', NULL, N'Armero', CAST(122.0000 AS Decimal(19, 4)), 9, 26)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'ASPXSG', N'Ровнитель', N'Ровнитель (наливной пол) финишный Weber.vetonit 4100 самовыравнивающийся высокопрочный 20 кг', N'Сухие строительные смеси и гидроизоляция', NULL, N'Weber', CAST(711.0000 AS Decimal(19, 4)), 10, 20)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'BPV4MM', N'Пленка техническая', N'Пленка техническая полиэтиленовая Изостронг 60 мк 3 м рукав 1,5 м, пог.м', N'Общестроительные материалы', NULL, N'Изостронг', CAST(8.0000 AS Decimal(19, 4)), 8, 2)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'EQ6RKO', N'Подшлемник', N'Подшлемник для каски одноразовый', N'Защита лица, глаз, головы', NULL, N'Husqvarna', CAST(36.0000 AS Decimal(19, 4)), 3, 22)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'F895RB', N'Песок строительный', N'Песок строительный 50 кг', N'Общестроительные материалы', NULL, N'Knauf', CAST(102.0000 AS Decimal(19, 4)), 6, 7)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'GN6ICZ', N'Каска защитная ', N'Каска защитная Исток (КАС001О) оранжевая', N'Защита лица, глаз, головы', NULL, N'Исток', CAST(154.0000 AS Decimal(19, 4)), 6, 8)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'I6MH89', N'Валик', N'Валик Wenzo Roma полиакрил 250 мм ворс 18 мм для красок грунтов и антисептиков на водной основе с рукояткой', N'Ручной инструмент', NULL, N'Wenzo Roma', CAST(326.0000 AS Decimal(19, 4)), 6, 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'JVL42J', N'Пленка техническая', N'Пленка техническая полиэтиленовая Изостронг 100 мк 3 м рукав 1,5 м, пог.м', N'Общестроительные материалы', NULL, N'Изостронг', CAST(13.0000 AS Decimal(19, 4)), 4, 34)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'K0YACK', N'Смесь цементно-песчаная', N'Смесь цементно-песчаная (ЦПС) 300 по ТУ MixMaster Универсал 25 кг', N'Сухие строительные смеси и гидроизоляция', NULL, N'MixMaster', CAST(160.0000 AS Decimal(19, 4)), 8, 19)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'LPDDM4', N'Штукатурка гипсовая', N'Штукатурка гипсовая Knauf Ротбанд 30 кг', N'Сухие строительные смеси и гидроизоляция', NULL, N'Knauf', CAST(500.0000 AS Decimal(19, 4)), 6, 38)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'LQ48MW', N'Штукатурка гипсовая', N'Штукатурка гипсовая Knauf МП-75 машинная 30 кг', N'Сухие строительные смеси и гидроизоляция', NULL, N'Weber', CAST(462.0000 AS Decimal(19, 4)), 6, 33)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'M26EXW', N'Клей для плитки, керамогранита и камня', N'Клей для плитки, керамогранита и камня Крепс Усиленный серый (класс С1) 25 кг', N'Сухие строительные смеси и гидроизоляция', NULL, N'Knauf', CAST(340.0000 AS Decimal(19, 4)), 8, 2)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'MIO8YV', N'Кирпич', N'Кирпич рядовой Боровичи полнотелый М150 250х120х65 мм 1NF', N'Стеновые и фасадные материалы', NULL, N'ВОЛМА', CAST(30.0000 AS Decimal(19, 4)), 9, 31)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'O43COU', N'Шпаклевка', N'Шпаклевка полимерная Weber.vetonit LR + для сухих помещений белая 20 кг', N'Сухие строительные смеси и гидроизоляция', NULL, N'ВОЛМА', CAST(750.0000 AS Decimal(19, 4)), 1, 16)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'PMEZMH', N'Цемент', N'Цемент Евроцемент М500 Д0 ЦЕМ I 42,5 50 кг', N'Общестроительные материалы', NULL, N'М500', CAST(440.0000 AS Decimal(19, 4)), 8, 34)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'QHNOKR', N'Маска защитная', N'Маска защитная Исток (ЩИТ001) ударопрочная и термостойкая', N'Защита лица, глаз, головы', NULL, N'Исток', CAST(251.0000 AS Decimal(19, 4)), 2, 22)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'S72AM3', N'Пазогребневая плита ', N'Пазогребневая плита ВОЛМА Гидро 667х500х80 мм полнотелая', N'Стеновые и фасадные материалы', NULL, N'ВОЛМА', CAST(500.0000 AS Decimal(19, 4)), 5, 35)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'UER2QD', N'Скоба для пазогребневой плиты', N'Скоба для пазогребневой плиты Knauf С1 120х100 мм', N'Стеновые и фасадные материалы', NULL, N'Knauf', CAST(25.0000 AS Decimal(19, 4)), 8, 27)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'Z3LO0U', N'Очки защитные ', N'Очки защитные Delta Plus RUIZ (RUIZ1VI) закрытые с прозрачными линзами', N'Защита лица, глаз, головы', NULL, N'RUIZ', CAST(228.0000 AS Decimal(19, 4)), 9, 11)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'Z3XFSP', N'Нож строительный ', N'Нож строительный Hesler 18 мм с ломающимся лезвием пластиковый корпус', N'Ручной инструмент', NULL, N'Hesler', CAST(63.0000 AS Decimal(19, 4)), 8, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'ZKQ5FF', N'Лезвие для ножа ', N'Лезвие для ножа Hesler 18 мм прямое (10 шт.)', N'Ручной инструмент', NULL, N'Hesler', CAST(65.0000 AS Decimal(19, 4)), 6, 6)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategory], [ProductPhoto], [ProductManufacturer], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock]) VALUES (N'ZR70B4', N'Кирпич', N'Кирпич рядовой силикатный Павловский завод полнотелый М200 250х120х65 мм 1NF', N'Стеновые и фасадные материалы', NULL, N'Павловский завод ', CAST(16.0000 AS Decimal(19, 4)), 3, 26)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Басова', N'Амина', N'Кирилловна', N'klh7pi4rcbtz@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Михайлов', N'Андрей', N'Денисович', N'gn0354mbiork@outlook.com', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Сидоров', N'Егор', N'Александрович', N'1o4l05k8dwpv@yahoo.com', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Аксенова', N'Ульяна', N'Ивановна', N'hsqixl2vebuz@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (15, N'Васильева', N'Камила', N'Ивановна', N'towkse0hf26b@outlook.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (16, N'Ильин', N'Артём', N'Родионович', N'khx0ncdwz4uj@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (17, N'Васильева', N'Василиса', N'Фёдоровна', N'01zji3wfuq7h@outlook.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (18, N'Кудрявцева', N'Василиса', N'Матвеевна', N'am65k18q7bwp@mail.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (19, N'Кириллова', N'Николь', N'Святославовна', N'wt9q8i6ypx47@outlook.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (20, N'Андреева', N'Полина', N'Артёмовна', N'4o72gufv3xlz@tutanota.com', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderPickupPointID])
REFERENCES [dbo].[PickupPoint] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
