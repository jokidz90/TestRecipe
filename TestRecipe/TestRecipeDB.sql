/****** Object:  Table [dbo].[Item]    Script Date: 2020-08-19 12:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemNo] [varchar](50) NOT NULL,
	[ItemName] [nvarchar](160) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
	[RetailPrice] [money] NOT NULL,
	[FactoryPrice] [money] NOT NULL,
	[UOM] [nvarchar](50) NULL,
 CONSTRAINT [PK_Item_1] PRIMARY KEY CLUSTERED 
(
	[ItemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeDetail]    Script Date: 2020-08-19 12:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeDetail](
	[RecipeDetailID] [varchar](64) NOT NULL,
	[RecipeHeaderID] [varchar](64) NOT NULL,
	[ItemNo] [varchar](50) NOT NULL,
	[Qty] [float] NOT NULL,
	[UOM] [nvarchar](50) NULL,
 CONSTRAINT [PK_RecipeDetail] PRIMARY KEY CLUSTERED 
(
	[RecipeDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeHeader]    Script Date: 2020-08-19 12:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeHeader](
	[RecipeHeaderID] [varchar](64) NOT NULL,
	[RecipeName] [varchar](150) NOT NULL,
	[ItemNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RecipeHeader] PRIMARY KEY CLUSTERED 
(
	[RecipeHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UOMConversion]    Script Date: 2020-08-19 12:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UOMConversion](
	[UOMConversionID] [int] NOT NULL,
	[ItemNo] [varchar](50) NOT NULL,
	[FromUOM] [nvarchar](50) NOT NULL,
	[ToUOM] [nvarchar](50) NOT NULL,
	[ConversionRate] [float] NOT NULL,
 CONSTRAINT [PK_UOMConversionDet] PRIMARY KEY CLUSTERED 
(
	[UOMConversionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018000002', N'Roasted Curry Chicken leg', N'Ingredients', 15.6700, 13.0600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018000003', N'Roasted Curry Vegetables', N'Ingredients', 6.8200, 5.6800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018000004', N'Multi Grain Mixed (Ten Grain Rice)', N'Ingredients', 11.2800, 9.4000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018000006', N'Cooked Soya Bean', N'Ingredients', 6.7200, 5.6000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018000012', N'Raspberry Yoghurt', N'Ingredients', 22.8000, 19.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018000013', N'Mango Yoghurt', N'Ingredients', 13.6100, 11.3400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010008', N'Marinated Pork (Common Use)', N'Ingredients', 12.6700, 10.5600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010010', N'Nanban Sauce', N'Ingredients', 23.3000, 19.4200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010015', N'Baked Marinated Salmon', N'Ingredients', 7.0200, 5.8500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010018', N'Tartare Sauce (With Egg)', N'Ingredients', 19.8000, 16.5000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010020', N'Salted Koji', N'Ingredients', 15.4300, 12.8600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010022', N'Dashi Stock', N'Ingredients', 18.3400, 15.2800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010025', N'Tofu Burger Patty', N'Ingredients', 0.3500, 0.0000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010027', N'Marinated Chicken Leg (Common Use)', N'Ingredients', 1.2000, 1.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010038', N'Curry Miso Dried Chilli Mayo', N'Ingredients', 23.9300, 19.9400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010054', N'Nori Furikake', N'Ingredients', 17.6600, 14.7200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010057', N'Roasted Cauliflower', N'Ingredients', 1.6800, 1.4000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010059', N'Buri Fish Daikon Portion', N'Ingredients', 5.8800, 4.9000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010060', N'Fried Ginger Julliene', N'Ingredients', 15.8600, 13.2200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010091', N'Stock For Salmon Papillote', N'Ingredients', 2.4000, 2.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010093', N'Meatball in Cherry Tomato Cauliflower Stew', N'Product', 6.2800, 0.0000, N'pkt/14por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010100', N'Spinach Blanched (Sliced)', N'Ingredients', 17.5900, 14.6600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010129', N'Seared Aust. Eggplant (JW)', N'Ingredients', 3.1800, 2.6500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010130', N'Seared Yellow Zucchini (JW)', N'Ingredients', 3.2400, 2.7000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010131', N'Seared Green Zucchini (JW)', N'Ingredients', 2.8800, 2.4000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010132', N'Ginger Leek Oil (JW)', N'Ingredients', 25.1800, 20.9800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010133', N'Braised Shoyu Root Vegetables (JW)', N'Ingredients', 3.1800, 2.6500, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010135', N'Seared Homemade Beef and Pork Patty (JW)', N'Ingredients', 2.4000, 2.0000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010136', N'Dried Shiitake Mushroom Sauce (JW)', N'Ingredients', 23.0900, 19.2400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010137', N'Baked Shiitake Mushroom (JW)', N'Ingredients', 20.7600, 17.3000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010138', N'Baked Shimeiji Mushroom (JW)', N'Ingredients', 9.5800, 7.9800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010139', N'Truffle, Roasted Shiitake and Shimeiji (JW)', N'Ingredients', 12.8300, 0.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010142', N'Baked Sage Chicken (JW)', N'Ingredients', 2.2200, 1.8500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010143', N'Roma Tomato Confit (JW)', N'Ingredients', 6.1800, 5.1500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010144', N'Tomato Broth (JW)', N'Ingredients', 2.5900, 2.1600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010145', N'Green Pea Cooked (JW)', N'Ingredients', 8.6200, 7.1800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010147', N'Seared Seabass (JW)', N'Ingredients', 4.0200, 3.3500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010148', N'Dashi Butter Vegetable (JW)', N'Ingredients', 17.9800, 14.9800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010149', N'Celery Pesto (JW)', N'Ingredients', 4.6300, 3.8600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010151', N'Maple Swede', N'Ingredients', 14.5400, 12.1200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010152', N'Sauteed Mushroom Bacon ', N'Ingredients', 13.8700, 11.5600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010155', N'Rosemary Mustard Dressing', N'Ingredients', 2.5700, 2.1400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010156', N'Roasted Celeriac (Autumn 19)', N'Ingredients', 24.7700, 20.6400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010158', N'Packham Pear Sliced', N'Ingredients', 15.9100, 13.2600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010159', N'Balsamic Sesame Dressing', N'Ingredients', 16.4600, 13.7200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010160', N'Cooked Carrot Dice', N'Ingredients', 10.4900, 8.7400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010161', N'Bacon Meatloaf', N'Ingredients', 0.0400, 0.0000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010162', N'Roasted Chicken Stock (Common Use)', N'Ingredients', 7.6600, 6.3800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010163', N'Chicken Liver Cleaned', N'Ingredients', 4.6600, 3.8800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010164', N'Chicken Liver Puree', N'Ingredients', 6.0400, 0.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010165', N'Chicken Liver Gravy', N'Product', 6.6500, 0.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010168', N'Pineapple Giblet Sauce', N'Ingredients', 8.4000, 7.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010169', N'Butter Stock (Common Use)', N'Ingredients', 9.4800, 7.9000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010173', N'Berries Compote (Winter Hot Deli)', N'Ingredients', 22.6300, 18.8600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010174', N'Roasted Parsnip Wedges', N'Ingredients', 2.5800, 2.1500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010175', N'Szechuan Pepper Oil (JW)', N'Ingredients', 2.7400, 2.2800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010177', N'Braised Pork Soft Bone (JW)', N'Ingredients', 3.0600, 2.5500, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010179', N'Roasted Celeriac Dice (JW)', N'Ingredients', 4.0300, 3.3600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010182', N'Fried Barramundi Mini Steak (JW)', N'Ingredients', 1.9800, 1.6500, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010183', N'Corn Cream (JW)', N'Ingredients', 2.2100, 1.8400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010184', N'Farro Sesame Mix', N'Ingredients', 19.5800, 16.3200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010188', N'Marinated Garlic Pork', N'Ingredients', 17.2800, 14.4000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010189', N'Roasted Garlic and Shallot Paste', N'Ingredients', 14.4000, 12.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010190', N'Dry Root Vegetable & Tongarashi Sauce', N'Ingredients', 15.0200, 0.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010191', N'Marinated Salmon (Skin Off and Portion)', N'Ingredients', 21.6500, 18.0400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010192', N'Houjicha Sesame Crust', N'Ingredients', 1.5100, 1.2600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010193', N'Houjicha Sesame Crusted Salmon', N'Ingredients', 0.9800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010195', N'Shoyu Sesame Leek Sauce', N'Ingredients', 10.9700, 9.1400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010196', N'Round Braised Hairy Gourd', N'Ingredients', 22.4900, 18.7400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010198', N'Soy Meatball', N'Ingredients', 24.3100, 20.2600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010199', N'Cherry Tomato Stew', N'Ingredients', 24.3400, 20.2800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010201', N'Inari Pocket', N'Ingredients', 6.2400, 5.2000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010202', N'Black Bean Sauce (Summer)', N'Ingredients', 8.2100, 6.8400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028000001', N'Cooked Haricot Bean', N'Ingredients', 1.9200, 1.6000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028000004', N'Cooked Quinoa', N'Ingredients', 17.6200, 14.6800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010003', N'Shiitake Mushroom Sauce', N'Ingredients', 14.0600, 11.7200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010004', N'Braised Hijiki with Soy Bean', N'Ingredients', 19.2000, 16.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010010', N'Boiled Prawn (Prawn Couscous Salad)', N'Ingredients', 4.8700, 4.0600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010015', N'Onsen Egg Sauce', N'Ingredients', 23.5400, 19.6200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010017', N'Truffle Ranch Dressing', N'Ingredients', 14.0900, 11.7400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010018', N'Roasted Button Mushroom', N'Ingredients', 2.6600, 2.2200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010019', N'Roasted Enoki & Shiitake Mushroom', N'Ingredients', 8.4500, 7.0400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010020', N'Cooked Orecchiette Pasta', N'Ingredients', 3.8200, 3.1800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010022', N'Potato Base ', N'Ingredients', 9.5000, 7.9200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010028', N'Cooked Couscous', N'Ingredients', 5.5900, 4.6600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010029', N'Yuzu Sesame Dressing', N'Ingredients', 18.9600, 15.8000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010037', N'Roasted Red Capsicum', N'Ingredients', 22.5100, 18.7600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010041', N'Steamed Fennel', N'Ingredients', 22.2500, 18.5400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010058', N'Roasted Zucchini', N'Ingredients', 6.8200, 5.6800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010063', N'Fragrant Sesame Dressing', N'Ingredients', 21.9100, 18.2600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010064', N'Blanched Black Fungus', N'Ingredients', 16.1300, 13.4400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010086', N'Black Bean Sauce', N'Ingredients', 3.1400, 2.6200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010098', N'Cooked Farro', N'Ingredients', 13.8000, 11.5000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010109', N'Roasted Red Apple Wedges', N'Ingredients', 14.8100, 12.3400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010110', N'Roasted Green Apple Wedges', N'Ingredients', 8.8300, 7.3600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010112', N'Blanched Brussel Sprout', N'Ingredients', 7.9200, 6.6000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010113', N'Maple Vinaigrette', N'Ingredients', 1.6600, 1.3800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010133', N'Dill Marinated Octopus', N'Ingredients', 8.0600, 6.7200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010135', N'Grapefruit Mustard Dressing', N'Ingredients', 7.9700, 6.6400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010142', N'Torched Plum Wedges', N'Ingredients', 17.5000, 14.5800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010144', N'Sage Stuffed Chicken Breast', N'Ingredients', 6.5400, 5.4500, N'Roulade/10pcs')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010145', N'Caramelised Apple Wedge', N'Ingredients', 6.9800, 5.8200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010146', N'Soy Tomato Sauce', N'Ingredients', 21.8600, 18.2200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010147', N'Roasted Green Capsicum Puree', N'Ingredients', 1.2000, 1.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010148', N'Roasted Green Chilli Puree', N'Ingredients', 2.7400, 2.2800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010149', N'Roasted Green Capsicum Chilli Puree', N'Product', 1.7800, 0.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010151', N'Roasted Green Capsicum Chilli Mayo', N'Ingredients', 8.4700, 7.0600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010153', N'Marinated Barramundi Cube', N'Ingredients', 3.4600, 2.8800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010156', N'Braised Beef Oyster Blade', N'Ingredients', 8.5000, 7.0800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010157', N'Beef Oyster Blade Braising Stock', N'Ingredients', 1.9200, 1.6000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010159', N'Cooked Daikon (Rough Cut)', N'Ingredients', 8.4500, 7.0400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010161', N'Cooked Carrot (Rough Cut)', N'Ingredients', 11.2100, 9.3400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010163', N'Sauteed Turkey Ham & Bacon', N'Ingredients', 15.5500, 12.9600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010164', N'Cooked Baby New Potato', N'Ingredients', 12.8600, 10.7200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010165', N'Blanched Celery Dice', N'Ingredients', 21.9600, 18.3000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010166', N'Red Apple Dice', N'Ingredients', 3.7400, 3.1200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010167', N'Gherkin Yoghurt Dressing', N'Ingredients', 6.2600, 5.2200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010172', N'Blanched Brussel Sprout Leaves', N'Ingredients', 20.1800, 16.8200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010173', N'Roasted Corn', N'Ingredients', 4.9900, 4.1600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010174', N'Sliced Hard Boil Egg', N'Ingredients', 2.5200, 2.1000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010175', N'Pickled Shallot', N'Ingredients', 8.9800, 7.4800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010176', N'White Wine Vinaigrette', N'Ingredients', 17.0400, 14.2000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010178', N'Roasted Cinnamon Orange Sweet Potato ', N'Ingredients', 10.9400, 9.1200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010180', N'Roasted Yellow Capsicum', N'Ingredients', 12.3600, 10.3000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010181', N'Cinnamon Balsamico Dressing', N'Ingredients', 1.4600, 1.2200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010182', N'Roasted Leek Flower', N'Ingredients', 4.0800, 3.4000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010183', N'58° C Steamed Salmon Flake', N'Ingredients', 17.0600, 14.2200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010184', N'Lime Green Chilli Miso Dressing', N'Ingredients', 13.5400, 11.2800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010185', N'Sauteed Shiitake Bacon ', N'Ingredients', 5.8100, 4.8400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010187', N'Rehydrated Seaweed ', N'Ingredients', 18.5500, 15.4600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010189', N'Braised Tau Kwa (Summer)', N'Ingredients', 19.3400, 16.1200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010190', N'Cooked Haricot Bean (Slant Cut)', N'Ingredients', 3.7200, 3.1000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010191', N'Konbu Soy Vinaigrette', N'Ingredients', 22.9900, 19.1600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010009', N'Kuromitsu Sauce', N'Ingredients', 5.7800, 4.8200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010017', N'Matcha Soft Serve Mix Base', N'Ingredients', 4.4900, 3.7400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010026', N'Italian Meringue', N'Ingredients', 17.6900, 14.7400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010030', N'Purple Sweet Potato Cream', N'Ingredients', 4.5800, 3.8200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010045', N'Almond Praline', N'Ingredients', 8.5200, 7.1000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010046', N'Pie Crumble', N'Ingredients', 4.5100, 3.7600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010048', N'Custard Cream', N'Ingredients', 11.6400, 9.7000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010049', N'Mascarpone Cream', N'Ingredients', 13.1300, 10.9400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010050', N'Strawberry Salsa', N'Ingredients', 3.6000, 3.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010078', N'sponge', N'Ingredients', 3.4800, 2.9000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010080', N'Chestnut Cream', N'Ingredients', 4.1500, 3.4600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010081', N'Purple Sweet Potato Cream (Light)', N'Ingredients', 24.7400, 20.6200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010082', N'Yellow Swiss Roll Sponge with Chestnut Cream', N'Ingredients', 2.8600, 0.0000, N'roll/6por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010095', N'Homemade Kinako Warabi Mochi', N'Ingredients', 1.8000, 1.5000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010120', N'Hazelnut Praline Base (Common Use)', N'Ingredients', 4.6300, 3.8600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010121', N'Milk Chocolate Mousse', N'Ingredients', 7.2500, 6.0400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010122', N'White Wine Vanilla Sauce', N'Ingredients', 3.1900, 2.6600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010123', N'Raspberry Konnyaku Jelly (without garnish)', N'Ingredients', 1.2000, 1.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010124', N'Sugar Dough', N'Ingredients', 2.2300, 1.8600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010125', N'Frangipane Filling', N'Ingredients', 1.4400, 1.2000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010126', N'Apple Yogurt Mousse', N'Ingredients', 19.5100, 16.2600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010127', N'Apple Filling', N'Ingredients', 18.4600, 15.3800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010128', N'Mirror Glaze (Common Use)', N'Ingredients', 17.0600, 14.2200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010129', N'Dark Green Mirror Glaze', N'Ingredients', 3.7200, 3.1000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010130', N'Light Green Mirror Glaze', N'Ingredients', 20.6600, 17.2200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010131', N'Almond Tart', N'Ingredients', 0.2200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010132', N'Apple Mousse Sphere', N'Ingredients', 1.2500, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010133', N'Chocolate Sponge (Thick) (Common Use)', N'Ingredients', 7.0200, 5.8500, N'roll')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010135', N'Chocolate Cherry Filling ', N'Ingredients', 9.1400, 7.6200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010136', N'Chocolate Sponge (Mini Forest Log  tray/750g) ', N'Ingredients', 6.1200, 5.1000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010137', N'Blackcurrant Mochi', N'Ingredients', 1.9800, 1.6500, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010138', N'Kirsch Cream (Filling & Coating)', N'Ingredients', 5.5700, 4.6400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010140', N'Matcha Financier (Tree Stem)', N'Ingredients', 4.6800, 3.9000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010141', N'Gold Milk Chocolate Ball', N'Ingredients', 1.8000, 1.5000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010143', N'Lemon Filling', N'Ingredients', 23.5700, 19.6400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010144', N'Matcha White Chocolate Whipped Ganache', N'Ingredients', 3.0700, 2.5600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010145', N'Matcha Sable', N'Ingredients', 1.5000, 1.2500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010146', N'Lemon Matcha Tree (Without Glaze)', N'Ingredients', 2.2900, 0.0000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010147', N'Vanilla Sponge (Thin) (Berrieshroom)', N'Ingredients', 1.7400, 1.4500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010148', N'Strawberry Feuilletine', N'Ingredients', 18.1700, 15.1400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010149', N'Vanilla White Chocolate Bavarois', N'Ingredients', 1.8700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010150', N'Strawberry Jelly', N'Ingredients', 2.9400, 2.4500, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010151', N'Raspberry Mousse', N'Ingredients', 7.1500, 5.9600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010152', N'Red Cocoa Butter Coating', N'Ingredients', 3.5800, 2.9800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010153', N'White Cocoa Butter Coating', N'Ingredients', 12.6700, 10.5600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010154', N'Matcha Streusel', N'Ingredients', 4.6300, 3.8600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010155', N'Date Pudding', N'Ingredients', 3.3600, 2.8000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010156', N'Butterscotch Sauce', N'Ingredients', 15.5000, 12.9200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010157', N'Rhum Ice-cream', N'Ingredients', 21.8400, 18.2000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010158', N'Streusel (Common Use)', N'Ingredients', 13.5400, 11.2800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010159', N'Red Coral Tuile', N'Ingredients', 6.3600, 5.3000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010160', N'Vanilla Sponge (Thick) (Fraisier Logcake)', N'Ingredients', 6.9600, 5.8000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010161', N'Strawberry Confit', N'Ingredients', 10.3200, 8.6000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010162', N'Mascarpone Mousse', N'Ingredients', 5.0400, 4.2000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010163', N'Red Chocolate Mushrooms', N'Ingredients', 5.7000, 4.7500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010165', N'Fudge Cake (Logcake)', N'Ingredients', 6.9600, 5.8000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010167', N'Milk Ganache', N'Ingredients', 4.7000, 3.9200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010168', N'Chocolate Mousse ', N'Ingredients', 7.9700, 6.6400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010170', N'Dark Chocolate Whipped Ganche', N'Ingredients', 22.7300, 18.9400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010171', N'Orange Chip Coated with Chocolate', N'Ingredients', 5.1000, 4.2500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010173', N'Strawberry Glaze (Common Use)', N'Ingredients', 21.5500, 17.9600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010174', N'Sugar Dough Tart Shell', N'Ingredients', 5.9400, 4.9500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010175', N'Strawberry Jam', N'Ingredients', 1.6600, 1.3800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010176', N'Sakura Soft Jelly', N'Ingredients', 20.9500, 17.4600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010177', N'Sakura Mousse', N'Ingredients', 10.9700, 9.1400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010178', N'Sakura Tart ( Without Frosting)', N'Ingredients', 6.3400, 0.0000, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010179', N'Strawberry Cream Cheese Frosting', N'Ingredients', 13.3200, 11.1000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010180', N'Sakura Tart ( Without Decoration)', N'Ingredients', 7.0100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010182', N'Lychee Rose Sphere ', N'Ingredients', 2.2200, 1.8500, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010183', N'Rose Mochi ', N'Ingredients', 11.2300, 9.3600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010184', N'Chocolate Ears (Mousy)', N'Ingredients', 21.4600, 17.8800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010185', N'Chocolate Eyes (Mousy)', N'Ingredients', 14.0600, 11.7200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010187', N'Strawberry Filling (Round Flat)', N'Ingredients', 24.0200, 20.0200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010188', N'Lemon Yuzu Curd', N'Ingredients', 1.5100, 1.2600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010189', N'Lemon Yuzu Tart Without Meringue', N'Ingredients', 6.2200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010190', N'Vanilla Sponge (Hibiscus)', N'Ingredients', 15.7000, 13.0800, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010191', N'Strawberry Pastry Cream', N'Ingredients', 21.8400, 18.2000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010192', N'Mini Strawberry Swiss Roll (Hibiscus)', N'Ingredients', 0.6700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010193', N'Strawberry Feulletine (Hibiscus)', N'Ingredients', 9.1400, 7.6200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010194', N'Hibiscus Tea Mousse', N'Ingredients', 17.5400, 14.6200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010195', N'Hibiscus Tea Strawberry Cake Without Glaze', N'Ingredients', 1.7000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010196', N'Yellow Sponge (Thin) (Banana Crumble)', N'Ingredients', 11.3500, 9.4600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010197', N'Caramel Banana Crumble', N'Ingredients', 0.5000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010198', N'Passionfruit Sauce', N'Ingredients', 6.6000, 5.5000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010199', N'Vanilla Ice-cream', N'Ingredients', 7.4600, 6.2200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010200', N'Walnut Tuile', N'Ingredients', 3.6200, 3.0200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010202', N'Coconut Panna Cotta', N'Ingredients', 5.1600, 4.3000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010203', N'Mango Coulis', N'Ingredients', 2.2300, 1.8600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010205', N'Coconut Tuile', N'Ingredients', 10.9200, 9.1000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010207', N'Green Tea Filling', N'Ingredients', 5.1800, 4.3200, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010208', N'Green Tea Swiss Roll', N'Product', 1.4600, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010209', N'Green Tea Sponge', N'Ingredients', 19.6100, 16.3400, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010211', N'Vanilla Sponge (White Peach Swiss)', N'Ingredients', 4.3800, 3.6500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010212', N'Citrus Filling  (White Peach Swiss)', N'Ingredients', 11.7100, 9.7600, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010213', N'White Peach Swiss Roll', N'Product', 8.8300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192081080001', N'Chicken Nanban Donburi *', N'Product', 12.9400, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192081080003', N'Pork Katsu Donburi*', N'Product', 7.9800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192081080004', N'Cheese Baked Butter Chicken Curry Rice*', N'Product', 6.2700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080001', N'Hamburger with Burdock Shiitake Sauce', N'Product', 4.5700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080002', N'Slow Cooked Chicken Leg ', N'Product', 8.7800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080003', N'Barramundi Petite Vegetables Celery Pesto', N'Product', 4.8200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080004', N'Shoyu Root Vegetables Stew', N'Product', 12.5300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080005', N'Prawn Couscous  Salad (JW)', N'Product', 1.5100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080006', N'Mushroom Orecchiette Pasta Salad (JW)', N'Product', 1.1700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080007', N'Roasted Duo Apple and Kale Salad (JW)', N'Product', 1.2100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080009', N'Hijiki and Black Fungus Salad (JW)', N'Product', 3.3000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080010', N'Smoked Chicken, Roasted Celeriac, Pear Salad (JW)', N'Product', 2.5700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080011', N'Braised Pork Soft Bone Stew (JW)', N'Product', 3.1400, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080012', N'Sakura Chicken Curry Miso and Dried Chilli (JW)', N'Product', 0.9600, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080013', N'Barramundi Fish & Chips', N'Product', 3.0400, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192808000005', N'Matcha Soft Serve with Kuromitsu (Promo)', N'Product', 0.6000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192808000007', N'(Student) Matcha Soft Serve with Kuromitsu ', N'Product', 0.6000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192808000074', N'3-DELI (Healthy Living Promo)', N'Product', 0.0000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193001000029', N'Yellowtail Buri Fish Stew with Daikon ', N'Product', 6.7300, 0.0000, N'')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011010021', N'Butter Chicken Curry', N'Product', 7.2200, 0.0000, N'por/180g')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011010052', N'Sakura Chicken with Curry Miso and Dried Chilli', N'Product', 0.4900, 0.0000, N'por/5pcs')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011010058', N'Sage Stuffed Chicken Roulade', N'Product', 2.0800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011020020', N'Black Bean Pork with Crunchy Bitter Gourd', N'Product', 1.0900, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011020024', N'Bacon Meatloaf with Giblet Sauce', N'Product', 0.3100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011020025', N'Garlic Pork & Roots Vegetables in Togarashi Sauce', N'Product', 2.3100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011020026', N'Inari Pocket, Black Bean Sauce', N'Product', 12.7000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011030026', N'Yellowtail Buri Fish Daikon ', N'Product', 6.1000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011030029', N'Salmon, Hijiki and Fennel Papillote', N'Product', 7.2700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011030030', N'Barramundi with Roasted Green Chilli Capsicum Mayo', N'Product', 0.3200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011030031', N'Golden Sesame Crusted Salmon', N'Product', 1.8800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011040006', N'Braised Grain Fed Beef Oyster Blade', N'Product', 0.9000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011040007', N'Roasted Veal with Berries Compote', N'Product', 3.0300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011050050', N'Healthy Tofu Patty with Shiitake Mushroom sauce', N'Ingredients', 0.7700, 0.0000, N'por/1pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011050053', N'Soy Meatball, Duo Cherry Tomato Stew', N'Product', 3.5200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011060007', N'16 Grains Rice', N'Ingredients', 5.0400, 4.2000, N'por/180gm')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011070007', N'Miso Soup (Serving)', N'Ingredients', 4.5000, 3.7500, N'por/150ml')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011080003', N'Fried Nanban Chicken', N'Ingredients', 6.7800, 5.6500, N'por/3pcs')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011080004', N'Pork Katsu Donburi', N'Product', 3.0600, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011080005', N'Cheese Baked Butter Chicken Curry Rice', N'Product', 1.3800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022010057', N'Roasted Chicken, Roasted Celeriac, Pear Salad', N'Product', 0.9800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022010058', N'Turkey Ham and Baby Potato Salad', N'Product', 1.1300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022010059', N'Roasted Chicken Cobb Salad', N'Product', 3.0200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022010060', N'Smoked Duck & Sweet Potato Arugula Salad', N'Product', 0.6100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022030042', N'Onsen Egg', N'Ingredients', 2.9400, 2.4500, N'pc')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022040008', N'Prawn Couscous Salad with Yuzu-sesame Dressing', N'Product', 0.5300, 0.0000, N'por/100g')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050052', N'Orecchiette Pasta and Mushroom Salad ', N'Product', 0.3800, 0.0000, N'por/70g')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050062', N'Hijiki Black Fungus Salad', N'Product', 0.6600, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050065', N'Duo Apple Kale Salad', N'Ingredients', 0.2700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050068', N'Rosemary Potato Salad ', N'Product', 0.8100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050069', N'New Potato, Bacon and Mushroom Salad', N'Product', 0.7000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050070', N'Hijiki Seaweed, Tofu Salad', N'Product', 0.7500, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022070005', N'Lime Dill Octopus Summer Stone Fruit Salad', N'Product', 0.4300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022070006', N'Poached Salmon Flakes Salad ', N'Ingredients', 0.4300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044010034', N'Strawberry Fraisier', N'Product', 1.2000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044010040', N'Sweet Purple Potato Chestnut Roll', N'Product', 0.9700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044010043', N'Hazelnut Crunch', N'Product', 0.7700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020001', N'Hokkaido Matcha Soft Serve with Kuromitsu', N'Product', 4.2000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020004', N'Date Pudding with Butterscotch Sauce ', N'Product', 5.1400, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020015', N'Raspberry Konnyaku Jelly', N'Product', 1.2300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020016', N'Chocolate Cherry Swiss Roll', N'Product', 1.1100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020017', N'Apple Tart', N'Product', 1.6700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020018', N'Berry Shroom', N'Product', 5.8500, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020019', N'Matcha Citrus Tree ', N'Product', 8.0100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020020', N'Chocolate Black Currant Mochi Log', N'Product', 1.2900, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020023', N'Chocolate Orange Marmalade Logcake', N'Product', 35.5400, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020024', N'Strawberry Fraisier Logcake', N'Product', 30.6100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020025', N'Sakura Strawberry Cheese Tart', N'Product', 0.0000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020026', N'Rose Lychee Mouse ', N'Product', 2.9800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020027', N'Strawberry Hibiscus Tea Cake', N'Product', 0.0000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020028', N'Lemon Yuzu Tart', N'Product', 6.5800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020031', N'Warm Banana Crumble ', N'Product', 1.0000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020032', N'Mango Coconut Panna Cotta with Coconut Tuile ', N'Product', 5.4200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193066060002', N'Mango Raspberry Yoghurt', N'Product', 2.5500, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'3003114401371', N'Orange Mamalade Jam', N'Ingredients', 5.0400, 4.2000, N'btl/450g')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'3006111101499', N'Spring Onion', N'Ingredients', 12.3100, 10.2600, N'kg')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R100.009', N'R100', N'1193011060007', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R100.010', N'R100', N'1183018000003', 90, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R100.011', N'R100', N'1183018000002', 100, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1006.001', N'R1006', N'1183048010182', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1006.002', N'R1006', N'1183048010183', 50, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1006.003', N'R1006', N'1183048010184', 8, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1006.004', N'R1006', N'1183048010185', 2, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1011.001', N'R1011', N'1183048010174', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1011.002', N'R1011', N'1183048010187', 8, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1011.003', N'R1011', N'1183048010188', 59.38, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1015.001', N'R1015', N'1183048010190', 21.88, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1015.002', N'R1015', N'1183048010191', 15, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1018.001', N'R1018', N'1183048010194', 40, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1018.002', N'R1018', N'1183048010192', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1018.003', N'R1018', N'1183048010193', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1018.004', N'R1018', N'1183048010187', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1019.001', N'R1019', N'1183048010195', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1019.002', N'R1019', N'1183048010173', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1035.001', N'R1035', N'1183048010196', 14.58, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1035.006', N'R1035', N'1183048010158', 25, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1048.001', N'R1048', N'1183048010209', 65, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1048.003', N'R1048', N'1183048010207', 35, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1054.001', N'R1054', N'1183028010185', 23.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1054.002', N'R1054', N'1183028010164', 16.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1054.003', N'R1054', N'1183028010022', 36.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1055.002', N'R1055', N'1183028010187', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1055.005', N'R1055', N'1183028010189', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1055.007', N'R1055', N'1183028010190', 5.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1055.008', N'R1055', N'1183028010191', 6.66, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1056.001', N'R1056', N'1183018010198', 48, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1056.002', N'R1056', N'1183018010199', 93.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1056.003', N'R1056', N'1183028010058', 12.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1058.001', N'R1058', N'1183018010201', 2, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1058.004', N'R1058', N'1183018010202', 26.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1060.001', N'R1060', N'1183048010197', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1060.002', N'R1060', N'1183048010198', 15, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1060.003', N'R1060', N'1183048010158', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1060.004', N'R1060', N'1183048010199', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1060.005', N'R1060', N'1183048010200', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1062.001', N'R1062', N'1183048010202', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1062.002', N'R1062', N'1183048010203', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1062.005', N'R1062', N'1183048010205', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R107.017', N'R107', N'1183018010027', 110, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R107.018', N'R107', N'1183018010038', 15, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1073.001', N'R1073', N'1183048010211', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1073.002', N'R1073', N'1183048010212', 380, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1080.001', N'R1080', N'1193011060007', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1080.002', N'R1080', N'1193011070007', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1080.003', N'R1080', N'1193022050065', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1080.004', N'R1080', N'1193022070006', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R1080.005', N'R1080', N'1193011050050', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R122.027', N'R122', N'1183018010025', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R122.028', N'R122', N'1183028010003', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R146.023', N'R146', N'1183028010020', 18.75, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R146.024', N'R146', N'1183028010018', 15.63, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R146.025', N'R146', N'1183028010019', 15.63, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R146.026', N'R146', N'1183028010017', 9.38, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R168.008', N'R168', N'1183048010189', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R168.009', N'R168', N'1183048010026', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R222.001', N'R222', N'1183028000004', 3.3333, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R222.002', N'R222', N'1183028010028', 13.3333, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R222.007', N'R222', N'1183028010029', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R222.009', N'R222', N'1183028010010', 42, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R269.002', N'R269', N'1183018000004', 10.578, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R269.005', N'R269', N'1193022030042', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R269.013', N'R269', N'1183018010054', 0.3, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R270.002', N'R270', N'1183018000004', 14.5, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R270.007', N'R270', N'1183018010027', 100, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R270.010', N'R270', N'1183018010022', 60, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R283.001', N'R283', N'1183048010017', 120, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R283.004', N'R283', N'1183048010009', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R283.005', N'R283', N'1183048010095', 2, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R316.001', N'R316', N'1183018010059', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R316.002', N'R316', N'1183018010060', 50, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R316.004', N'R316', N'3006111101499', 5, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R317.001', N'R317', N'1183018010059', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R317.002', N'R317', N'1183018010060', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R317.004', N'R317', N'3006111101499', 5, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R385.001', N'R385', N'1183028010064', 26.666, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R385.005', N'R385', N'1183028010063', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R385.006', N'R385', N'3006111101499', 0.666, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R420.001', N'R420', N'1183048010049', 40, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R420.002', N'R420', N'1183048010045', 15, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R420.004', N'R420', N'1183048010046', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R420.005', N'R420', N'1183048010048', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R420.006', N'R420', N'1183048010050', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R442.001', N'R442', N'1183018010008', 80, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R442.003', N'R442', N'1183028010086', 24, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R461.002', N'R461', N'1183048010009', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R461.003', N'R461', N'1183048010017', 120, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R462.002', N'R462', N'1183048010009', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R462.003', N'R462', N'1183048010017', 120, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R50.021', N'R50', N'1183028000004', 3.57, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R50.023', N'R50', N'1183018000006', 7.14, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R50.024', N'R50', N'1183028010004', 7.14, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R50.027', N'R50', N'1183028010015', 1.9, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R50.028', N'R50', N'1183018010022', 2.86, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R506.001', N'R506', N'1183028010004', 12, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R506.003', N'R506', N'1183018010015', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R506.004', N'R506', N'1183018010091', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R523.003', N'R523', N'1183018010057', 300, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R523.004', N'R523', N'1183028010058', 175, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R523.010', N'R523', N'1183018010022', 250, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R546.001', N'R546', N'1183048010078', 0.5, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R546.002', N'R546', N'1183048010080', 270, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R560.001', N'R560', N'1183028010109', 8.333, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R560.002', N'R560', N'1183028010110', 8.333, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R560.006', N'R560', N'1183028010112', 6.666, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R560.011', N'R560', N'1183028010113', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R564.001', N'R564', N'1183048010082', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R564.002', N'R564', N'1183048010030', 36.667, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R564.003', N'R564', N'1183048010081', 13.333, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R670.001', N'R670', N'1183018000013', 70, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R670.002', N'R670', N'1183018000012', 70, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R673.001', N'R673', N'1193011060007', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R673.005', N'R673', N'1193011080003', 1, N'Por/ 3pcs')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R673.006', N'R673', N'1183018010010', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R673.007', N'R673', N'1183018010018', 45, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R675.001', N'R675', N'1193011060007', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R675.004', N'R675', N'1193022030042', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R676.001', N'R676', N'1193011060007', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R676.006', N'R676', N'1183018010027', 110, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R676.009', N'R676', N'1183018010022', 60, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R715.001', N'R715', N'1183028010133', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R715.007', N'R715', N'1183028010135', 11.333, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R715.009', N'R715', N'1183028010142', 15, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R726.002', N'R726', N'1183048010120', 40, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R726.003', N'R726', N'1183048010121', 80, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R745.001', N'R745', N'1183018010133', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R745.002', N'R745', N'1183018010129', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R745.003', N'R745', N'1183018010131', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R745.004', N'R745', N'1183018010130', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R745.007', N'R745', N'1183018010132', 2, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R751.001', N'R751', N'1183018010137', 423.08, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R751.002', N'R751', N'1183018010138', 423.08, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R753.001', N'R753', N'1183018010135', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R753.002', N'R753', N'1183018010136', 80, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R753.003', N'R753', N'1183018010139', 25, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R760.001', N'R760', N'1183018010142', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R760.002', N'R760', N'1183018010144', 80, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R760.003', N'R760', N'1183018010145', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R760.004', N'R760', N'1183018010143', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R764.001', N'R764', N'1183018010147', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R764.002', N'R764', N'1183018010148', 34, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R764.003', N'R764', N'1183018010149', 40, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R765.001', N'R765', N'1183028000004', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R765.002', N'R765', N'1183028010028', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R765.007', N'R765', N'1183028010010', 84, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R765.010', N'R765', N'1183028010029', 40, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R766.001', N'R766', N'1183028010020', 160, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R766.002', N'R766', N'1183028010018', 50, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R766.003', N'R766', N'1183028010019', 50, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R768.001', N'R768', N'1183028010064', 150, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R768.005', N'R768', N'1183028010063', 40, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R769.002', N'R769', N'1183028010109', 25, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R769.003', N'R769', N'1183028010110', 25, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R769.006', N'R769', N'1183028010112', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R769.011', N'R769', N'1183028010098', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R769.012', N'R769', N'1183028010113', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R789.001', N'R789', N'1183028010147', 625, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R789.002', N'R789', N'1183028010148', 375, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R806.001', N'R806', N'1183048010124', 80, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R806.002', N'R806', N'1183048010125', 26, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R809.001', N'R809', N'1183048010127', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R809.002', N'R809', N'1183048010126', 45, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R818.001', N'R818', N'1183028010037', 11.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R818.002', N'R818', N'1183018010156', 13.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R818.004', N'R818', N'1183018010158', 12, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R818.006', N'R818', N'1183028000004', 5.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R818.008', N'R818', N'1183018010159', 6.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R819.001', N'R819', N'1183028010022', 43.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R819.002', N'R819', N'1183018010151', 5.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R819.003', N'R819', N'1183018010152', 12.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R819.006', N'R819', N'1183018010100', 6.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R819.007', N'R819', N'1183018010155', 12, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R820.001', N'R820', N'1183028010144', 2, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R820.003', N'R820', N'1183028010145', 16.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R820.004', N'R820', N'1183028010146', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R821.001', N'R821', N'1183028010153', 66.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R821.003', N'R821', N'1183028010151', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R822.001', N'R822', N'1183028010157', 50, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R822.002', N'R822', N'1183028010159', 14, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R822.003', N'R822', N'1183028010161', 14, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R822.006', N'R822', N'1183028010156', 62, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R823.001', N'R823', N'1183048010123', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R823.002', N'R823', N'1183048010122', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R824.001', N'R824', N'1183048010131', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R824.002', N'R824', N'1183048010132', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R824.003', N'R824', N'1183048010128', 5, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R824.004', N'R824', N'1183048010129', 5, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R824.005', N'R824', N'1183048010130', 5, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R825.001', N'R825', N'1183048010133', 0.1, N'roll')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R825.002', N'R825', N'1183048010135', 45, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R831.001', N'R831', N'1183028010037', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R831.002', N'R831', N'1183018010156', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R831.004', N'R831', N'1183018010158', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R831.006', N'R831', N'1183028000004', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R831.008', N'R831', N'1183018010159', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R851.001', N'R851', N'1183028010163', 23.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R851.002', N'R851', N'1183028010164', 24.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R851.003', N'R851', N'1183028010022', 24.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R851.004', N'R851', N'1183028010165', 4, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R851.005', N'R851', N'1183028010166', 8.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R851.006', N'R851', N'1183028010167', 14.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R861.003', N'R861', N'1183028000001', 8, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R861.004', N'R861', N'1183028010172', 4, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R861.005', N'R861', N'1183028010037', 8, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R861.006', N'R861', N'1183028010173', 7.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R861.007', N'R861', N'1183028010175', 6.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R861.008', N'R861', N'1183028010176', 7.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R861.009', N'R861', N'1183028010174', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R863.013', N'R863', N'1183018010160', 2.78, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R863.016', N'R863', N'1183018010020', 0.69, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R866.005', N'R866', N'1183018010163', 475, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R866.009', N'R866', N'1183018010162', 500, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R867.009', N'R867', N'1183018010162', 750, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R867.011', N'R867', N'1183018010164', 150, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R872.001', N'R872', N'1183018010161', 2, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R872.002', N'R872', N'1183018010168', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R872.004', N'R872', N'1183018010169', 6.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R878.003', N'R878', N'1183018010173', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R878.004', N'R878', N'1183018010174', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R878.005', N'R878', N'1183018010184', 8, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R878.006', N'R878', N'1183018010169', 6.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R884.001', N'R884', N'1183018010177', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R884.003', N'R884', N'1183018010179', 14, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R884.005', N'R884', N'1183018010175', 8, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R889.001', N'R889', N'1183018010182', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R889.002', N'R889', N'1183018010183', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R889.004', N'R889', N'1183018010018', 50, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R890.001', N'R890', N'1183018010027', 200, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R890.003', N'R890', N'1183018010038', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R896.001', N'R896', N'1183048010136', 0.1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R896.002', N'R896', N'1183048010137', 0.2, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R896.003', N'R896', N'1183048010138', 50, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R903.001', N'R903', N'1183048010144', 105, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R903.002', N'R903', N'1183048010143', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R903.003', N'R903', N'1183048010145', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R904.001', N'R904', N'1183048010146', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R904.002', N'R904', N'1183048010140', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R904.003', N'R904', N'1183048010130', 50, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R904.004', N'R904', N'1183048010141', 1, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R907.009', N'R907', N'1183048010147', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R907.010', N'R907', N'1183048010148', 7, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R913.001', N'R913', N'1183048010149', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R913.002', N'R913', N'1183048010150', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R913.003', N'R913', N'1183048010151', 22, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R913.004', N'R913', N'1183048010152', 15, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R913.005', N'R913', N'1183048010153', 15, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R913.006', N'R913', N'1183048010173', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R913.007', N'R913', N'1183048010154', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R913.008', N'R913', N'1183048010124', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R920.001', N'R920', N'1183048010155', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R920.002', N'R920', N'1183048010156', 44, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R920.003', N'R920', N'1183048010157', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R920.004', N'R920', N'1183048010158', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R920.005', N'R920', N'1183048010159', 5, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R926.001', N'R926', N'1183048010124', 80, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R926.002', N'R926', N'1183048010160', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R926.003', N'R926', N'1183048010161', 140, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R926.004', N'R926', N'1183048010162', 524, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R926.005', N'R926', N'1183048010173', 100, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R926.006', N'R926', N'1183048010045', 15, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R926.007', N'R926', N'1183048010163', 3, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R935.001', N'R935', N'1183048010165', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R935.002', N'R935', N'3003114401371', 245, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R935.003', N'R935', N'1183048010167', 120, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R935.004', N'R935', N'1183048010168', 155, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R935.005', N'R935', N'1183048010170', 160, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R935.007', N'R935', N'1183048010171', 4, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R974.001', N'R974', N'1183028010178', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R974.003', N'R974', N'1183028010037', 8, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R974.004', N'R974', N'1183028010180', 8, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R974.007', N'R974', N'1183028010181', 3, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R975.001', N'R975', N'1183028010182', 10.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R975.002', N'R975', N'1183028010183', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R975.003', N'R975', N'1183028010041', 5.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R975.009', N'R975', N'1183028010184', 7.33, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R980.005', N'R980', N'1183018010189', 66.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R980.008', N'R980', N'1183018010022', 766.67, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R981.001', N'R981', N'1183018010188', 90, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R981.003', N'R981', N'1183018010190', 50, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R985.001', N'R985', N'1183018010191', 45, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R985.003', N'R985', N'1183018010192', 6, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R989.001', N'R989', N'1183018010193', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R989.002', N'R989', N'1183018010195', 20, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R989.003', N'R989', N'1183018010196', 30, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R996.001', N'R996', N'1183048010175', 10, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R996.002', N'R996', N'1183048010177', 35, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R996.003', N'R996', N'1183048010174', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R998.001', N'R998', N'1183048010178', 1, N'pc')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R998.002', N'R998', N'1183048010179', 50, N'g')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R999.001', N'R999', N'1183048010180', 1, N'por')
GO
INSERT [dbo].[RecipeDetail] ([RecipeDetailID], [RecipeHeaderID], [ItemNo], [Qty], [UOM]) VALUES (N'R999.002', N'R999', N'1183048010176', 4, N'g')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R100', N'Butter Chicken Curry', N'1193011010021')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1006', N'Rose Lychee Mouse ', N'1193044020026')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1011', N'Lemon Yuzu Tart Without Meringue', N'1183048010189')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1015', N'Mini Strawberry Swiss Roll (Hibiscus)', N'1183048010192')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1018', N'Hibiscus Tea Strawberry Cake Without Glaze', N'1183048010195')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1019', N'Strawberry Hibiscus Tea Cake', N'1193044020027')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1035', N'Caramel Banana Crumble', N'1183048010197')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1048', N'Green Tea Swiss Roll', N'1183048010208')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1054', N'New Potato, Bacon and Mushroom Salad', N'1193022050069')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1055', N'Hijiki Seaweed, Tofu Salad', N'1193022050070')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1056', N'Soy Meatball, Duo Cherry Tomato Stew', N'1193011050053')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1058', N'Inari Pocket, Black Bean Sauce', N'1193011020026')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1060', N'Warm Banana Crumble ', N'1193044020031')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1062', N'Mango Coconut Panna Cotta with Coconut Tuile ', N'1193044020032')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R107', N'Sakura Chicken with Curry Miso and Dried Chilli', N'1193011010052')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1073', N'White Peach Swiss Roll', N'1183048010213')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R1080', N'3-DELI (Healthy Living Promo)', N'1192808000074')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R122', N'Healthy Tofu Patty with Shiitake Mushroom sauce', N'1193011050050')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R146', N'Orecchiette Pasta and Mushroom Salad ', N'1193022050052')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R168', N'Lemon Yuzu Tart', N'1193044020028')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R222', N'Prawn Couscous Salad with Yuzu-sesame Dressing', N'1193022040008')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R269', N'Pork Katsu Donburi', N'1193011080004')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R270', N'Cheese Baked Butter Chicken Curry Rice', N'1193011080005')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R283', N'Hokkaido Matcha Soft Serve with Kuromitsu', N'1193044020001')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R316', N'Yellowtail Buri Fish Stew with Daikon ', N'1193001000029')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R317', N'Yellowtail Buri Fish Daikon ', N'1193011030026')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R385', N'Hijiki Black Fungus Salad', N'1193022050062')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R420', N'Strawberry Fraisier', N'1193044010034')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R442', N'Black Bean Pork with Crunchy Bitter Gourd', N'1193011020020')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R461', N'Matcha Soft Serve with Kuromitsu (Promo)', N'1192808000005')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R462', N'(Student) Matcha Soft Serve with Kuromitsu ', N'1192808000007')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R50', N'Tofu Burger Patty', N'1183018010025')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R506', N'Salmon, Hijiki and Fennel Papillote', N'1193011030029')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R523', N'Meatball in Cherry Tomato Cauliflower Stew', N'1183018010093')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R546', N'Yellow Swiss Roll Sponge with Chestnut Cream', N'1183048010082')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R560', N'Duo Apple Kale Salad', N'1193022050065')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R564', N'Sweet Purple Potato Chestnut Roll', N'1193044010040')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R670', N'Mango Raspberry Yoghurt', N'1193066060002')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R673', N'Chicken Nanban Donburi *', N'1192081080001')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R675', N'Pork Katsu Donburi*', N'1192081080003')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R676', N'Cheese Baked Butter Chicken Curry Rice*', N'1192081080004')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R715', N'Lime Dill Octopus Summer Stone Fruit Salad', N'1193022070005')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R726', N'Hazelnut Crunch', N'1193044010043')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R745', N'Shoyu Root Vegetables Stew', N'1192288080004')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R751', N'Truffle, Roasted Shiitake and Shimeiji (JW)', N'1183018010139')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R753', N'Hamburger with Burdock Shiitake Sauce', N'1192288080001')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R760', N'Slow Cooked Chicken Leg ', N'1192288080002')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R764', N'Barramundi Petite Vegetables Celery Pesto', N'1192288080003')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R765', N'Prawn Couscous  Salad (JW)', N'1192288080005')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R766', N'Mushroom Orecchiette Pasta Salad (JW)', N'1192288080006')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R768', N'Hijiki and Black Fungus Salad (JW)', N'1192288080009')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R769', N'Roasted Duo Apple and Kale Salad (JW)', N'1192288080007')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R789', N'Roasted Green Capsicum Chilli Puree', N'1183028010149')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R806', N'Almond Tart', N'1183048010131')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R809', N'Apple Mousse Sphere', N'1183048010132')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R818', N'Roasted Chicken, Roasted Celeriac, Pear Salad', N'1193022010057')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R819', N'Rosemary Potato Salad ', N'1193022050068')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R820', N'Sage Stuffed Chicken Roulade', N'1193011010058')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R821', N'Barramundi with Roasted Green Chilli Capsicum Mayo', N'1193011030030')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R822', N'Braised Grain Fed Beef Oyster Blade', N'1193011040006')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R823', N'Raspberry Konnyaku Jelly', N'1193044020015')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R824', N'Apple Tart', N'1193044020017')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R825', N'Chocolate Cherry Swiss Roll', N'1193044020016')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R831', N'Smoked Chicken, Roasted Celeriac, Pear Salad (JW)', N'1192288080010')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R851', N'Turkey Ham and Baby Potato Salad', N'1193022010058')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R861', N'Roasted Chicken Cobb Salad', N'1193022010059')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R863', N'Bacon Meatloaf', N'1183018010161')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R866', N'Chicken Liver Puree', N'1183018010164')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R867', N'Chicken Liver Gravy', N'1183018010165')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R872', N'Bacon Meatloaf with Giblet Sauce', N'1193011020024')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R878', N'Roasted Veal with Berries Compote', N'1193011040007')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R884', N'Braised Pork Soft Bone Stew (JW)', N'1192288080011')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R889', N'Barramundi Fish & Chips', N'1192288080013')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R890', N'Sakura Chicken Curry Miso and Dried Chilli (JW)', N'1192288080012')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R896', N'Chocolate Black Currant Mochi Log', N'1193044020020')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R903', N'Lemon Matcha Tree (Without Glaze)', N'1183048010146')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R904', N'Matcha Citrus Tree ', N'1193044020019')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R907', N'Vanilla White Chocolate Bavarois', N'1183048010149')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R913', N'Berry Shroom', N'1193044020018')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R920', N'Date Pudding with Butterscotch Sauce ', N'1193044020004')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R926', N'Strawberry Fraisier Logcake', N'1193044020024')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R935', N'Chocolate Orange Marmalade Logcake', N'1193044020023')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R974', N'Smoked Duck & Sweet Potato Arugula Salad', N'1193022010060')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R975', N'Poached Salmon Flakes Salad ', N'1193022070006')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R980', N'Dry Root Vegetable & Tongarashi Sauce', N'1183018010190')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R981', N'Garlic Pork & Roots Vegetables in Togarashi Sauce', N'1193011020025')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R985', N'Houjicha Sesame Crusted Salmon', N'1183018010193')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R989', N'Golden Sesame Crusted Salmon', N'1193011030031')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R996', N'Sakura Tart ( Without Frosting)', N'1183048010178')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R998', N'Sakura Tart ( Without Decoration)', N'1183048010180')
GO
INSERT [dbo].[RecipeHeader] ([RecipeHeaderID], [RecipeName], [ItemNo]) VALUES (N'R999', N'Sakura Strawberry Cheese Tart', N'1193044020025')
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (19099, N'1193011080003', N'por/3pcs', N'Por/ 3pcs', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (19100, N'1193011080004', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (19101, N'1193011080005', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (21365, N'1192081080001', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (21367, N'1192081080003', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (21368, N'1192081080004', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (25909, N'1193066060002', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (25951, N'1192288080001', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (25952, N'1192288080002', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (25953, N'1192288080003', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (25954, N'1192288080004', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (25955, N'1192288080005', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (25956, N'1192288080006', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (25957, N'1192288080007', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (25959, N'1192288080009', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (27620, N'1192288080010', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28171, N'1193011040006', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28174, N'1193011010021', N'por/180g', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28175, N'1193011010052', N'por/5pcs', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28176, N'1193011010058', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28179, N'1193011030026', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28180, N'1193011030029', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28181, N'1193011030030', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28183, N'1193011070007', N'por/150ml', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28185, N'1193011060007', N'por/180gm', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28203, N'1193022030042', N'pc', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28204, N'1193022010057', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (28205, N'1193022070005', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (30118, N'1193022010058', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (30119, N'1193022010059', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (30133, N'1193011040007', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (30137, N'1192288080011', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (30138, N'1192288080012', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (30139, N'1192288080013', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (31509, N'3006111101499', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (31616, N'1193022010060', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (31617, N'1193022070006', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (31629, N'1193011030031', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32386, N'1193022040008', N'por/100g', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32388, N'1193022050052', N'por/70g', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32389, N'1193022050062', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32390, N'1193022050065', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32391, N'1193022050068', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32392, N'1193022050069', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32393, N'1193022050070', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32497, N'1193011020020', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32499, N'1193011020024', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32500, N'1193011020025', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32501, N'1193011020026', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (32503, N'1193011050050', N'por/1pc', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33167, N'1183018000002', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33168, N'1183018000003', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33169, N'1183018000004', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33171, N'1183018000006', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33177, N'1183018000012', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33178, N'1183018000013', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33181, N'1183028000001', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33184, N'1183028000004', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33243, N'1193044010034', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33248, N'1193044010040', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33250, N'1193044010043', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33252, N'1193044020015', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33253, N'1193044020016', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33254, N'1193044020017', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33255, N'1193044020018', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33256, N'1193044020019', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33257, N'1193044020020', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33258, N'1193044020023', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33259, N'1193044020024', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33260, N'1193044020025', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33261, N'1193044020026', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33262, N'1193044020027', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33263, N'1193044020028', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33266, N'1193044020031', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33267, N'1193044020032', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33269, N'1193044020001', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33271, N'1193044020004', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33602, N'1183018010008', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33604, N'1183018010010', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33607, N'1183018010015', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33608, N'1183018010018', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33610, N'1183018010020', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33611, N'1183018010022', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33612, N'1183018010025', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33613, N'1183018010027', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33615, N'1183018010038', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33616, N'1183018010054', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33618, N'1183018010057', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33619, N'1183018010059', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33620, N'1183018010060', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33622, N'1183018010091', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33623, N'1183018010093', N'pkt/14por', N'por', 14)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33625, N'1183018010100', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33637, N'1183018010129', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33638, N'1183018010130', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33639, N'1183018010131', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33640, N'1183018010132', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33641, N'1183018010133', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33643, N'1183018010135', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33644, N'1183018010136', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33645, N'1183018010137', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33646, N'1183018010138', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33647, N'1183018010139', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33650, N'1183018010142', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33651, N'1183018010143', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33652, N'1183018010144', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33653, N'1183018010145', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33655, N'1183018010147', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33656, N'1183018010148', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33657, N'1183018010149', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33659, N'1183018010151', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33660, N'1183018010152', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33663, N'1183018010155', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33664, N'1183018010156', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33666, N'1183018010158', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33667, N'1183018010159', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33668, N'1183018010160', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33669, N'1183018010161', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33670, N'1183018010162', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33671, N'1183018010163', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33672, N'1183018010164', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33673, N'1183018010165', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33676, N'1183018010168', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33677, N'1183018010169', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33680, N'1183018010173', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33681, N'1183018010174', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33682, N'1183018010175', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33684, N'1183018010177', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33686, N'1183018010179', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33689, N'1183018010182', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33690, N'1183018010183', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33691, N'1183018010184', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33695, N'1183018010188', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33696, N'1183018010189', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33697, N'1183018010190', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33698, N'1183018010191', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33699, N'1183018010192', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33700, N'1183018010193', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33702, N'1183018010195', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33703, N'1183018010196', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33704, N'1183018010198', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33705, N'1183018010199', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33707, N'1183018010201', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33708, N'1183018010202', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33710, N'1183028010003', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33711, N'1183028010004', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33712, N'1183028010010', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33713, N'1183028010015', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33714, N'1183028010017', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33715, N'1183028010018', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33716, N'1183028010019', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33717, N'1183028010020', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33718, N'1183028010022', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33720, N'1183028010028', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33721, N'1183028010029', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33722, N'1183028010037', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33723, N'1183028010041', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33724, N'1183028010058', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33727, N'1183028010063', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33728, N'1183028010064', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33731, N'1183028010086', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33735, N'1183028010098', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33745, N'1183028010109', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33746, N'1183028010110', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33747, N'1183028010112', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33748, N'1183028010113', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33752, N'1183028010133', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33754, N'1183028010135', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33756, N'1183028010142', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33758, N'1183028010144', N'Roulade/10pcs', N'pc', 10)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33759, N'1183028010145', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33760, N'1183028010146', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33761, N'1183028010147', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33762, N'1183028010148', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33763, N'1183028010149', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33765, N'1183028010151', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33767, N'1183028010153', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33770, N'1183028010156', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33771, N'1183028010157', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33773, N'1183028010159', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33775, N'1183028010161', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33777, N'1183028010163', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33778, N'1183028010164', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33779, N'1183028010165', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33780, N'1183028010166', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33781, N'1183028010167', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33786, N'1183028010172', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33787, N'1183028010173', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33788, N'1183028010174', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33789, N'1183028010175', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33790, N'1183028010176', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33792, N'1183028010178', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33794, N'1183028010180', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33795, N'1183028010181', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33796, N'1183028010182', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33797, N'1183028010183', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33798, N'1183028010184', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33799, N'1183028010185', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33801, N'1183028010187', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33803, N'1183028010189', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33804, N'1183028010190', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33805, N'1183028010191', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33810, N'1183048010009', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33813, N'1183048010017', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33814, N'1183048010026', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33815, N'1183048010030', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33817, N'1183048010045', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33818, N'1183048010046', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33820, N'1183048010048', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33821, N'1183048010049', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33822, N'1183048010050', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33824, N'1183048010078', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33826, N'1183048010080', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33827, N'1183048010081', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33828, N'1183048010082', N'roll/6por', N'por', 6)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33831, N'1183048010095', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33835, N'1183048010120', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33836, N'1183048010121', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33837, N'1183048010122', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33838, N'1183048010123', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33839, N'1183048010124', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33840, N'1183048010125', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33841, N'1183048010126', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33842, N'1183048010127', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33843, N'1183048010128', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33844, N'1183048010129', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33845, N'1183048010130', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33846, N'1183048010131', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33847, N'1183048010132', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33848, N'1183048010133', N'roll', N'roll', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33850, N'1183048010135', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33851, N'1183048010136', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33852, N'1183048010137', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33853, N'1183048010138', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33855, N'1183048010140', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33856, N'1183048010141', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33858, N'1183048010143', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33859, N'1183048010144', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33860, N'1183048010145', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33861, N'1183048010146', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33862, N'1183048010147', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33863, N'1183048010148', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33864, N'1183048010149', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33865, N'1183048010150', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33866, N'1183048010151', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33867, N'1183048010152', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33868, N'1183048010153', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33869, N'1183048010154', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33870, N'1183048010155', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33871, N'1183048010156', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33872, N'1183048010157', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33873, N'1183048010158', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33874, N'1183048010159', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33875, N'1183048010160', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33876, N'1183048010161', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33877, N'1183048010162', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33878, N'1183048010163', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33880, N'1183048010165', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33882, N'1183048010167', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33883, N'1183048010168', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33885, N'1183048010170', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33886, N'1183048010171', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33888, N'1183048010173', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33889, N'1183048010174', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33890, N'1183048010175', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33891, N'1183048010176', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33892, N'1183048010177', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33893, N'1183048010178', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33894, N'1183048010179', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33895, N'1183048010180', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33897, N'1183048010182', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33898, N'1183048010183', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33899, N'1183048010184', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33900, N'1183048010185', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33902, N'1183048010187', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33903, N'1183048010188', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33904, N'1183048010189', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33905, N'1183048010190', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33906, N'1183048010191', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33907, N'1183048010192', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33908, N'1183048010193', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33909, N'1183048010194', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33910, N'1183048010195', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33911, N'1183048010196', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33912, N'1183048010197', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33913, N'1183048010198', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33914, N'1183048010199', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33915, N'1183048010200', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33917, N'1183048010202', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33918, N'1183048010203', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33920, N'1183048010205', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33922, N'1183048010207', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33923, N'1183048010208', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33924, N'1183048010209', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33926, N'1183048010211', N'pc', N'pc', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33927, N'1183048010212', N'kg', N'g', 1000)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (33928, N'1183048010213', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (34013, N'3003114401371', N'btl/450g', N'g', 450)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (34298, N'1192808000005', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (34300, N'1192808000007', N'por', N'por', 1)
GO
INSERT [dbo].[UOMConversion] ([UOMConversionID], [ItemNo], [FromUOM], [ToUOM], [ConversionRate]) VALUES (34366, N'1192808000074', N'por', N'por', 1)
GO
ALTER TABLE [dbo].[RecipeDetail]  WITH CHECK ADD  CONSTRAINT [FK_RecipeDetail_Item] FOREIGN KEY([ItemNo])
REFERENCES [dbo].[Item] ([ItemNo])
GO
ALTER TABLE [dbo].[RecipeDetail] CHECK CONSTRAINT [FK_RecipeDetail_Item]
GO
ALTER TABLE [dbo].[RecipeDetail]  WITH CHECK ADD  CONSTRAINT [FK_RecipeDetail_RecipeHeader] FOREIGN KEY([RecipeHeaderID])
REFERENCES [dbo].[RecipeHeader] ([RecipeHeaderID])
GO
ALTER TABLE [dbo].[RecipeDetail] CHECK CONSTRAINT [FK_RecipeDetail_RecipeHeader]
GO
ALTER TABLE [dbo].[RecipeHeader]  WITH CHECK ADD  CONSTRAINT [FK_RecipeHeader_Item] FOREIGN KEY([ItemNo])
REFERENCES [dbo].[Item] ([ItemNo])
GO
ALTER TABLE [dbo].[RecipeHeader] CHECK CONSTRAINT [FK_RecipeHeader_Item]
GO
ALTER TABLE [dbo].[UOMConversion]  WITH CHECK ADD  CONSTRAINT [FK_UOMConversion_Item] FOREIGN KEY([ItemNo])
REFERENCES [dbo].[Item] ([ItemNo])
GO
ALTER TABLE [dbo].[UOMConversion] CHECK CONSTRAINT [FK_UOMConversion_Item]
GO
