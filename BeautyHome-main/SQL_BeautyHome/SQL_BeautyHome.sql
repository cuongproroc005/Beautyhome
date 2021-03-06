
USE [SQL_BeautyHome]
GO
/****** Object:  Table [dbo].[comment_product]    Script Date: 25/07/2021 9:01:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment_product](
	[comment_puduct_id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NULL,
	[user_id] [bigint] NULL,
	[txt_comment] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_puduct_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[furniture]    Script Date: 25/07/2021 9:01:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[furniture](
	[furniture_id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[furniture_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image_product]    Script Date: 25/07/2021 9:01:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_product](
	[product_id] [bigint] NOT NULL,
	[url_Image1] [varchar](200) NULL,
	[url_Image2] [varchar](200) NULL,
	[url_Image3] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 25/07/2021 9:01:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NOT NULL,
	[user_id] [bigint] NULL,
	[full_name] [nvarchar](50) NULL,
	[address] [nvarchar](200) NULL,
	[phone] [varchar](11) NULL,
	[mail] [varchar](50) NULL,
	[product_name] [nvarchar](50) NULL,
	[amount] [int] NULL,
	[price] [float] NULL,
	[date_order] [datetime] NULL,
	[datereceived] [datetime] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 25/07/2021 9:01:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [bigint] IDENTITY(1,1) NOT NULL,
	[type_product_id] [bigint] NULL,
	[name] [nvarchar](50) NULL,
	[descriptionDetails] [nvarchar](1000) NULL,
	[description] [nvarchar](1000) NULL,
	[evaluate] [float] NULL,
	[amount] [float] NULL,
	[price] [float] NULL,
	[color] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_product]    Script Date: 25/07/2021 9:01:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_product](
	[type_product_id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[furniture_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[type_product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 25/07/2021 9:01:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](50) NOT NULL,
	[password] [varchar](256) NOT NULL,
	[full_name] [nvarchar](50) NULL,
	[address] [nvarchar](200) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](11) NULL,
	[role] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[furniture] ON 

INSERT [dbo].[furniture] ([furniture_id], [name]) VALUES (1, N'Bàn')
INSERT [dbo].[furniture] ([furniture_id], [name]) VALUES (2, N'Đèn')
INSERT [dbo].[furniture] ([furniture_id], [name]) VALUES (3, N'Ghế')
SET IDENTITY_INSERT [dbo].[furniture] OFF
GO
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (6, N'6h1.png', N'6h2.png', N'6h3.png')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (7, N'7h1.jpg', N'7h2.jpg', N'7h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (8, N'8h1.jpg', N'8h2.jpg', N'8h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (9, N'9h1.jpg', N'9h2.jpg', N'9h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (10, N'10h1.jpg', N'10h2.jpg', N'10h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (11, N'11h1.png', N'11h2.png', N'11h3.png')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (12, N'12h1.jpg', N'12h2.jpg', N'12h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (13, N'13h1.jpg', N'13h2.jpg', N'13h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (14, N'14h1.jpg', N'14h2,jpg', N'14h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (15, N'15h1.jpg', N'15h2.jpg', N'15h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (16, N'16h1.jpg', N'16h2.jpg', N'16h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (18, N'18h1.jpg', N'18h2.jpg', N'18h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (19, N'19h1.jpg', N'19h2.jpg', N'19h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (20, N'20h1.jpg', N'20h2.jpg', N'20h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (21, N'21h1.jpg', N'21h2.jpg', N'21h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (22, N'22h1.jpg', N'22h2.jpg', N'22h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (23, N'23h1.jpg', N'23h2.jpg', N'23h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (24, N'24h1.jpg', N'24h2.jpg', N'24h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (25, N'25h1.jpg', N'25h2.jpg', N'25h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (26, N'26h1.jpg', N'26h2.jpg', N'26h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (27, N'27h1.jpg', N'27h2.jpg', N'27h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (28, N'28h1.jpg', N'28h2.jpg', N'28h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (29, N'29h1.jpg', N'29h2.jpg', N'29h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (30, N'30h1.jpg', N'30h2,jpg', N'30h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (31, N'31h1.png', N'31h2.png', N'31h3.png')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (32, N'32h1.png', N'32h2.png', N'32h3.png')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (33, N'33h1.jpg', N'33h2.jpg', N'33h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (34, N'34h1.png', N'34h2.png', N'34h3.png')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (35, N'35h1.jpg', N'35h2.jpg', N'35h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (36, N'36h1.jpg', N'36h2.jpg', N'36h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (37, N'37h1.jpg', N'37h2.jpg', N'37h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (38, N'38h1.jpg', N'38h2.jpg', N'38h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (39, N'39h1.jpg', N'39h2.jpg', N'39h3.jpg')
INSERT [dbo].[image_product] ([product_id], [url_Image1], [url_Image2], [url_Image3]) VALUES (40, N'40h1.jpg', N'40h2.jpg', N'40h3.jpg')
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (6, 1, N'Bàn ăn gấp gọn', N'Kích thước mặt bàn: Ngang 60, cao 71cm Chất liệu: Gỗ ghép - Chân sắt phun sơn tĩnh điện Bàn ăn, hay làm bàn quán cafe, với thiết kế gấp gọn giúp bạn tiết kiệm không gian. Khung sắt ghế gấp gọn được sơn một lớp sơn tĩnh điện chống han gỉ, bề mặt được làm từ gỗ MDF chống mối mọt hay ẩm mốc, bàn gấp gọn thiết kế phù hợp với nhiều hoàn cảnh khác nhau. Với thiết kệ hiện đại trẻ trung chiếc bàn phù hợp với không gian nội thất gia đình Phù hợp với không gian phòng khách cũng như nội thất bếp ăn của gia đình
Kích thước mặt bàn: Ngang 60, cao 71cm
Chất liệu: Gỗ ghép Chân sắt phun sơn tĩnh điện', N'SKU7010334136354
Thương hiệu	OEM
Xuất xứ thương hiệu	Trung Quốc
Kích thước	60*60cm
Xuất xứ	Trung Quốc', 3, 93, 490000, N'Nâu')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (7, 1, N'Bàn ăn Mango 4 ghế', N'- Chất liệu: Mặt bàn gỗ MDF phủ verneer sồi chống nước, chân bàn và ghế bằng gỗ cao su tự nhiên, ghế mặt ngồi bọc nệm simili cao cấp
- Kiểu dáng đẹp, hiện đại, đa năng, an toàn khi sử dụng, phù hợp với mọi không gian phòng khách hoặc phòng ăn
- Sở hữu đủ ba yếu tố: rẻ - đẹp - bền.
2. Kích thước:
- Bàn: Kích thước: dài 120cm x rộng 75cm x cao 75cm
- Ghế: 41x50x84cm
', N'SKU	2953449389725
Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Chất liệu	Gỗ Cao Su Tự Nhiên
Kích thước	120 x 75 x 75
Xuất xứ	Việt Nam
Trọng lượng	65 KG
Quy cách đóng gói	3 kiện Thùng carton
Kích cỡ	80 x 120 x 75 cm', 4, 40, 1800000, N'Nâu')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (8, 1, N'Bàn ăn Mongo 6 ghế', N'-Kích thước: ghế cao 45, bàn 80x160x75 Chất liệu: gỗ cao su, mặt bàn mdf. Phù hợp : bếp ăn gia đình, nhà hàng, quán ăn.Kích thước: ghế cao 45, bàn 80x160x75
-Chất liệu: gỗ cao su, mặt bàn mdf.
-Phù hợp : bếp ăn gia đình, nhà hàng, quán ăn.
-Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .....
', N'Thương hiệu	OEM
SKU	6867827073419', 4, 34, 2790000, N'Nâu')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (9, 2, N'Bàn gấp gọn tiện dụng', N'-Bàn gấp gọn tiện dụng, bàn học bàn làm việc có khe cắm IPAD
-Tiện dụng, có thể sử dụng ở nhiều không gian như phòng ngủ, phòng khách, đặc biệt là trên giường ngủ. Nên vào mùa đông, cứ ủ mình trong chăn ấm vẫn học bài, làm việc vô tư.
-Tiết kiệm không gian, khi không cần dùng thì gấp gọn. Phù hợp căn hộ mini, không gian diện tích nhỏ.
-Thiết kế thông minh, có khe cắm ipad, điện thoại, cạnh bàn vòng cung không gây khó chịu, vướng víu khi học bài, làm việc.
-Gọn gàng chắc chắn. Mẫu mã đẹp.', N'SKU	1350761481678
Thương hiệu	OEM
Xuất xứ thương hiệu	Trung Quốc
Model	bàn làm việc
Kích thước	54,5x36x27,5cm
Chất liệu	nhựa PP
Xuất xứ	Trung Quốc
Trọng lượng	1000gr
Tải trọng tối đa	50kg', 4, 12, 130000, N'Nâu')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (10, 2, N'Bàn Học Bàn Làm Việc Kết Hợp Kệ Sách', N'-Kích thước: Mặt bàn Dài 1m rộng 44cm cao 75cm Chất liệu: Mặt bàn sản xuất từ gỗ MDF phủ melamin cao cấp chống xước chống nước bề mặt sáng bóng. Sử dụng làm bàn làm việc, bàn học tại nhà hoặc văn phòng. Bàn có giá sách vô cùng tiện ích khi sử dụng Vận chuyển lắp đặt dễ dàng
-Bạn đang cần tìm bàn làm việc có thiết kế hiện đại đẹp mắt
-Bạn cần tìm mẫu bàn làm việc chắc chắc dễ dàng lắp đặt
-Bạn muốn chiếc bàn làm việc phải có giá sách giá để đồ đi kèm để thuận tiện khi làm việc
-Bạn muốn chiếc bàn chất lượng cao bền bỉ với thời gian, chất liệu an toàn với trẻ em.', N'SKU	7912873483824
Thương hiệu	IGA
Xuất xứ thương hiệu	Việt Nam
Chất liệu	
Gỗ MDF phủ melamin chống xước chống nước.
Hướng dẫn bảo quản	
Tránh lửa.
Hướng dẫn sử dụng	
Sử dụng làm bàn học bàn làm việc,
Kích thước	100x44x75cm
Chất liệu	MDF
Xuất xứ	Việt Nam
Trọng lượng	25Kg', 5, 63, 403000, N'Nâu')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (11, 2, N'Bàn Làm Việc Gỗ Tự Nhiên', N'Mặt bàn được làm từ gỗ tự nhiên ️ Chân bàn làm bằng gỗ thông có khả năng chịu lực tốt ️ Bàn lắp ráp, tháo lắp dễ dàng, di chuyển tiện lợi. ️ Phù hợp với mọi không gian và để bất kỳ đâu bạn muốn ️ Kích thước: 100x50x75cm (dài x rộng x cao)', N'hương hiệu	Nabu Furniture
Xuất xứ thương hiệu	Việt Nam
Kích thước	50X100X75CM
Xuất xứ	Việt Nam
SKU	7234791830093', 4, 50, 790000, N'Nâu')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (12, 2, N'Bàn Làm Việc Kệ Lửng', N'-Chất liệu SẮT ,GỖ Kích thước 80cm x 40cm x 75cm ( dài x rộng x cao ) Xuất xứ thương hiệu Việt Nam Xuất xứ Việt Nam Model BLV-KL80 Chất liệu chân sắt 25x25 kẽm sơn tĩnh điện mặt bàn 18 li gỗ cong nghiệp phủ melamin dùng làm bàn ăn ,bàn học ,kệ,vv.
-Mặt bàn: Gỗ công nghiệp phủ melamin
-Chân bàn: Sắt kẽm  sơn tĩnh điện
Ý tưởng thiết kế:
-Một sản phẩm nội thất văn phòng được ưa chuộng. Bàn kệ lửng 80cm với giá thành cạnh tranh, chất lượng vật liệu vượt trội, thiết kế tối giản mà thanh lịch sẽ mang lại sự hài lòng cho bạn. 
', N'SKU	5075839874760
Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Kích thước	80cm x40cm x75cm
Kích cỡ	80cm', 3, 42, 499000, N'Nâu')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (13, 3, N'Bàn Trà, Bàn Sofa Phòng Khách Hiện Đại', N'Bàn Trà, Bàn Sofa Phòng Khách Hiện Đại
Thông tin sản phẩm:
Kích thước: 120 x 60 x 42 (cm)', N'SKU	9232166790921
Thương hiệu	pehouse
Xuất xứ thương hiệu	Việt Nam
Kích thước	120 x 60 x 42 (cm)
Xuất xứ	Trung Quốc
Quy cách đóng gói	
Đóng hộp carton chi tiết rời kèm hướng dẫn sử dụng ', 4, 72, 1199000, N'Trắng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (14, 3, N'Bàn Trà Cafe, Bàn Trà Sofa (Tròn)', N'-Kích thước: Đường kính mặt bàn 50cm, cao 45cm Màu sắc: Trắng - Vàng Chất liệu: Mặt bàn gỗ MDF phủ melamin chống xước chống nước. Chân gỗ sồi tự nhiên Phong cách: Bắc âu Công năng: Bàn trà cafe tại nhà tại văn phòng, bàn sofa...
-Bạn đang cần tìm bàn trà sofa, bàn trà café mà chưa tìm được sản phẩm ưng ý.
-Bạn muốn sở hữu mẫu bàn trà sofa hiện đại trẻ trung tiết kiệm diện tích, dễ dàng kết hợp nội thất đặc biệt là ghế sofa.
-Bạn muốn sở hữu mẫu bàn trà cafe có kích thước hợp lý có thế làm tag đầu giường bàn học, bàn làm việc, bàn uống trà thư giãn tại không gian bạn yêu thích.
-Bạn cần tìm sản phầm bàn trà sofa độc đáo để tặng quà tân gia.
-Nhưng bàn trà sofa bạn cần phải có giá thành hợp lý và chất lượng.', N'SKU	6750546383412
Thương hiệu	IGA
Xuất xứ thương hiệu	Việt Nam
Chất liệu	
Mặt bàn gỗ MDF phủ melamin, chân gỗ sồi tự  nhiên
Hướng dẫn sử dụng	
Bàn cafe tại nhà tại văn phòng, bàn sofa..
Kích thước	50cm x 45cm
Chất liệu	MDF
Xuất xứ	Việt Nam
Trọng lượng	4 Kg
Quy cách đóng gói	
Đóng gói theo quy chuẩn an toàn tới tay khách hàng.
Tải trọng tối đa	30 Kg', 3, 56, 160000, N'Trắng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (15, 3, N'Bàn Trà Cafe, Bàn Trà Sofa (Hình Chữ Nhật)', N'Kích thước: Mặt bàn rộng 50cm dài 90cm cao 42cm.
Thiết kế phong cách bắc âu hiện đại trẻ trung
Màu sắc: Trắng
Chất liệu: Mặt bàn sản xuất từ gỗ MDF phủ melamin cao cấp chống xước chống nước bề mặt sáng bóng không mờ như các sản phẩm kém chất lượng. Chân bàn sản xuất từ gỗ sồi vân gỗ đều và đẹp.
Công năng: Là mẫu bàn trà sofa cực chất cho phòng khách, phòng tiếp khách, phòng trà
Cấu tạo: Lắp ráp dễ dàng lắp đặt và vận chuyển
-Bạn đang cần tìm bàn trà sofa mà chưa tìm được sản phẩm ưng ý.
-Bạn muốn sở hữu mẫu bàn trà sofa hiện đại trẻ trung tiết kiệm diện tích, dễ dàng kết hợp nội thất đặc biệt là ghế sofa.
-Bạn muốn sở hữu mẫu bàn trà cafe có kích thước hợp lý có thế làm tag đầu giường bàn học, bàn làm việc, bàn uống trà thư giãn tại không gian bạn yêu thích.
-Bạn cần tìm sản phầm bàn trà sofa độc đáo để tặng quà tân gia.
-Nhưng bàn trà sofa bạn cần phải có giá thành hợp lý và chất lượng.', N'SKU	1900980123623
Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Kích thước	Mặt bàn rộng 50cm dài 90cm cao 42cm.
Xuất xứ	Việt Nam
Trọng lượng	9KG
Tải trọng tối đa	20KG', 3, 53, 267500, N'Trắng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (16, 4, N'Đèn Bàn Học LED USB', N'*LƯU Ý !!!: Sản phẩm có 02 phiên bản:
-Đèn tích điện: tích hợp pin lithium 2500mAh 
-Đèn không tích điện: cần phải cắm vào nguồn điện như: ổ điện, máy tính, sạc dự phòng mới có thể sử dụng được
Mong quý khách lưu ý lựa chọn đúng phiên bản mà mình mong muốn!
Đèn LED 03 chế độ ánh sáng vàng/ trắng/ trung tính
-Bảo vệ mắt chống cận thị
-Phù hợp với nhiều mục đích sử dụng
-Có 03 mức điều chỉnh cường độ ánh sáng
Chất liệu nhựa ABS cao cấp
-Chất liệu cao cấp, làm sang trọng nơi làm việc của bạn
-Nhựa ABS thân thiện với môi trường và an toàn cho người sử dụng
-Thiết kế gấp gọn tiết kiệm không gian và điều chỉnh nhiều tư thế mong muốn
-Điều chỉnh đèn bằng cảm ứng cực nhạy và linh hoạt
Bộ sản phẩm gồm có:
-Đèn
-Dây sạc cổng USB
-Củ sạc
-Hướng dẫn sử dụng và giấy bảo hành chính hãng eLights', N'Thương hiệu	eLights
Xuất xứ thương hiệu	Việt Nam
Kích thước	40x15x10
Xuất xứ	Trung Quốc
SKU	6778580045424', 4, 131, 219000, N'Trắng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (18, 4, N'Đèn Pixar, Đèn Học Chống Cận Thị', N'Sản phẩm chính hãng Thương Hiệu miDoctor miDoctor - Thương Hiệu UY TÍN, CHẤT LƯỢNG Được Người Tiêu Dùng Bình Chọn Nhiều Năm Đèn học kẹp bàn chống cận thị giúp không gian học tập và làm việc của bạn trở nên hiện đại, tiện nghi hơn. Đèn học kẹp bàn chống cận thị tiện dụng cho các công việc chuyên chế tác đồ tinh xảo vàng bạc đá quý có thể dùng đèn học tập ,làm đèn đọc sách ,đèn kẹp bàn học làm đèn đèn kỹ thuật, dùng làm đèn xăm hình nghệ thuật.... Đèn học kẹp bàn linh động – dễ dàng cố định tại nhiều mặt bàn, tường… và sự tiết kiệm không gian. .', N'Thương hiệu	miDoctor
Xuất xứ thương hiệu	Việt Nam
Chất liệu	
Nhựa + Sứ + Đồng
', 4, 82, 159000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (19, 5, N'Đèn Ngủ Để Bàn Hình Quả Cầu', N'Đèn trang trí phòng ngủ thiết kế sáng tạo, độc đáo với thiết kế theo hướng hiện đại, phù hợp với gout thẩm mỹ của những gia đình trẻ. Sản phẩm được nhiều khách hàng lựa chọn nhờ sự tiện dụng, phù hợp với nhiều không gian sống và mục đích sử dụng khác nhau. Đèn có kiểu dáng sáng tạo mang tới màu sắc mới lạ cho không gian sống Ánh sáng dễ chịu kiểu dáng bắt mắt thích hợp làm quà tặng cho người thân', N'THÔNG TIN CHI TIẾT
Thương hiệu	OEM
SKU	1334188061544', 3, 76, 300000, N'Vàng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (20, 5, N'Đèn ngủ để bàn phong cách Châu Âu', N'-Đèn ngủ để bàn Vdecor phong cách Châu Âu cổ điển sang trọng, có điều chỉnh độ sáng
', N'Thương hiệu	Vdecor
Xuất xứ thương hiệu	Việt Nam
Nguồn điện	220v
Xuất xứ	Trung Quốc
Trọng lượng	3kg
SKU	8189908182593', 4, 83, 450000, N'Trắng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (21, 5, N'đèn ngủ thông minh - hẹn giờ', N'Điều khiển từ xa bằng remote 10 cấp độ sáng Hẹn giờ tự động tắt 10 - 30 phút Tự nhớ chế độ sáng trước đó khi mất điện Tích 02 cổng USB sạc điện thoại Thiết kế tối ưu có thể sử dụng làm đế sạc điện thoại Tiết kiệm điện (Công Suất 1W)
Đèn ngủ thông minh Oval', N'Thương hiệu	OEM
Xuất xứ thương hiệu	Đài Loan
Chất liệu	
Nhựa ABS \ PC đảm bảo sức khỏe trẻ nhỏ
Công suất	2W
Điện áp	50hz', 5, 132, 199000, N'Trắng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (22, 6, N'Đèn Pin Đội Đầu 3 Bóng', N'Tầm chiếu xa đến 160m, bán kính chiếu sáng lên đến 2,5m. Sản phẩm rất phù hợp và tiện lợi cho việc đi du lịch, đi rừng, đi câu, đi soi, cúp điện,… Đèn được dùng pin sạc, có cục sạc kết nối với đèn nên rất tiết kiệm, bền và thuận tiện.', N'Thương hiệu	OEM
Xuất xứ thương hiệu	Trung Quốc
Kích thước	35
Xuất xứ	Trung Quốc
SKU	2146717022480', 3, 31, 150000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (23, 6, N'Đèn pin Laser Laze', N'Đèn pin Laser Laze MV – 303 (Đen) tia xanh được tặng pin sạc và sạc Chiếu xa đến 2Km Bước sóng ánh sáng: 532nm Bộ đèn Laser 303 có thiết kế công suất lớn 5W Đa năng hướng dẫn; thuyết trình; giảng dạy; du lịch; thiệu ứng ánh sáng… ', N'Thương hiệu	OEM
SKU	2355815844047', 3, 56, 125000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (24, 6, N'Đèn Pin Mini Siêu Sáng', N'Đèn Pin Mini Siêu Sáng XML-T6 miDoctor - Chính Hãng Thích hợp cho các hoạt động bảo vệ, tuần tra quan sát, cứu hộ cứu nạn Có độ sáng cao với khả năng chiếu sáng tối đa lên đến 1000 lumens Sử dụng đèn Led với ánh sáng trắng tiết kiệm pin cho thời gian sử dụng dài Chất liệu vỏ đèn: Hợp kim nhôm chịu lực cực tốt Zoom: x2000 Tuổi thọ bóng: 10.000 giờ Kích thước: 5.43x1.57x1.57 in (13.8x4.0x4.0 cm) Loại Công Tắc: Nút Bấm Vị Trí Công Tắc: Nắp sau Kính: Thấu kính lồi Pin: 1 x 18650 hoặc 3 x AAA Chế Độ Sáng: 5 chế độ (Mạnh-Vừa-Yếu-Chớp-SOS) Màu: Đen Zoom: X2000 Trọng Lượng: 165g Kích Thước: 5.43 in x 1.57 in x 1.57 in (13.8 cm x 4.0 cm x 4.0 cm) Thiết kế tiện dụng, thông minh và gọn nhẹ, có cả dây đeo tiện dụng, bạn cũng có thể bỏ túi quần, balo, túi xách thuận tiện cho việc di chuyển dễ dàng đến bất cứ đâu. Phù hợp với những người bị ra mồ hôi tay vẫn có thể cầm chắc đèn pin nhờ thân đèn được gắn một miếng cao su có độ ma sát lớn', N'Thương hiệu	miDoctor
Xuất xứ thương hiệu	Việt Nam
Hướng dẫn bảo quản	
 Sạc lại pin khi bắt đầu suy giảm độ sáng đèn pin.
 Không dùng pin đến cạn kiệt sẽ làm suy giảm tuổi thọ pin, thậm chí chết pin.
 Để xa tầm tay trẻ em.
 Không bảo quản pin ở nơi có nhiệt độ quá nóng hoặc quá lạnh.
 Không lắp pin ngược đầu âm dương - + vào bộ sạc hoặc đèn pin vì có thể làm hỏng mạch bộ sạc, mạch đèn pin, thậm chí gây cháy nổ khi cắm sạc.
Kích thước	13*3.2cm
Xuất xứ	Trung Quốc
Tuổi thọ tối đa	10.000 giờ (bóng đèn)
SKU	5090406857075', 4, 97, 88000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (25, 7, N'Đèn chùm phòng khách 10 bóng', N'-Đèn với những bong bóng thủy tinh trong suốt, cùng với các cánh tay hợp kim nhôm khối cao cấp tại nên một mẫu đèn hiện đại cho phòng khách.
-Với thiết kế hiện đại ưu tiên sự đơn giản nên mẫu đèn trang trí hiện đại này thích hợp lắp đặt ở mọi không gian như phòng ngủ phòng khách, sảnh, cũng có thể là giữa giếng trời.
', N'SKU	8725566017695
Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Dung tích	500ml
Xuất xứ	Việt Nam', 5, 46, 699000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (26, 7, N'Đèn ốp trần nổi', N'Đèn Led ốp trần dùng để chiếu sáng và trang trí trần nhà Kiểu dáng ốp nổi, nên dễ dàng lắp đặt bất cứ đâu: lắp trần nhà, ban công, hành lang, nhà tắm...... Đèn trần có 2 màu ánh sáng: trắng và vàng. Điện áp: (175-265V) Công suất: 12W, 18W, 24W Chống nước: Có Hình dạng: Vuông Kích thước SP: 165mm 213mm 280mm', N'SKU	3473221400374
Thương hiệu	Goldseee
Xuất xứ thương hiệu	Việt Nam
Kích thước	165mm 213mm 280mm
Xuất xứ	Việt Nam', 4, 200, 96525, N'Trắng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (27, 7, N'Đèn Thả Trần - Đèn Thả Bàn Ăn', N'-Thiết kế hiện đại, sang trọng thích hợp với nhiều không gian và phong cách nội thất khác nhau. Chất lượng sản phẩm bền, đẹp, chắc chắn. Chất liệu thân thiện với môi trường. Sử dụng bóng đèn led tiết kiệm điện. Ứng dụng trang trí nhà cửa nội thất nhà cửa, quán cafe, quán trà sữa. Quý khách có thể lựa chọn loai đế ngang hoặc đế tròn tùy theo nhu cầu sử dụng.
-Để không gian phòng ăn của gia đình trở nên lung linh và ấm áp hơn thì hiện nay, rất nhiều người đã nhờ đến sự trợ giúp của những mẫu đèn trang trí. Với mỗi không gian khác nhau thì việc lựa chọn đèn trang trí là không giống nhau bởi bạn cần lựa chọn sao cho phù hợp với không gian cũng như đảm bảo được khả năng chiếu sáng cần thiết cho quá trình sinh hoạt. Hiện nay có 2 dòng sản phẩm đèn trang trí phòng ăn được sử dụng phổ biến trong không gian nội thất phòng ăn đó là đèn thả và đèn chùm.

', N'Thương hiệu	MONSKY
Xuất xứ thương hiệu	Việt Nam
Kích thước	đường kính chao 15 (cm) 
Xuất xứ	Trung Quốc
SKU	9934583310427', 4, 144, 482625, N'Trắng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (28, 7, N'Đèn trần trang trí phòng khách LED 8 cánh vuông', N'Đèn có điều khiển điều chỉnh chế độ màu ánh sáng từ xa vô cùng tiện dụng

Với điều khiển xa thông minh đèn có thể để chế độ ngủ đêm phục vụ cho nhu cầu xem phim, nghe ca nhạc

Chức năng thay đổi 03 ánh sáng Trắng 6000K, Vàng 3000K và Trung tính 4500K

Chức năng DIMMABLE: Tăng giảm ánh sáng của từng màu ánh sáng

Đèn có 3 màu ánh sáng giúp cho bạn có nhiều lựa chọn ánh sáng phù hợp

Tuổi thọ cao, bền, giảm chi phí sử dụng

Làm cho ngôi nhà của bạn thêm phần sang trọng và cuốn hút', N'Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Dung tích	500ml
Xuất xứ	Việt Nam
SKU	6717337131662', 4, 93, 1199000, N'Vàng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (29, 8, N'Ghế gỗ có đệm', N'Thích hợp cho mọi không gian sống của bạn Đặc biệt thích hợp với không gian phòng ăn Chất liệu gỗ và nệm PU bền bỉ Kiểu dáng hiện đại, nhỏ gọn
Ghế gỗ có đệm Eames V1 - Chiếc ghế hiện đại cho mọi không gian
- Chúng tôi xin được giới thiệu đến các bạn mẫu ghế cà phê Eames V1.
- Màu sắc sang trọng
- Chất liệu : gỗ cao su , mặt nệm', N'SKU	3154163927319
Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Model	V1
Kích thước	
41 x 50 x 84cm

Kích cỡ	80', 3, 57, 290000, N'Nâu')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (30, 8, N'Ghế gỗ ngồi làm việc, ghế phòng ăn', N'Ghế gỗ cổ điển làm từ gỗ cao su rất bền, chống được mọt gỗ. Màu sắc trung tính sang trọng. Phong cách hiện đai, thanh mảnh mang lại cảm giác nhẹ nhàng cho không gian nhà bạn. Chiều cao từ mặt đất đến mặt ngồi của ghế là 45 cm nên thích hợp ngồi tất cả bàn cao từ 70cm --->82 cm.
Ghế gỗ cổ điển làm từ gỗ cao su rất bền, chống được mọt gỗ.

Chiều cao từ mặt đất đến mặt ngồi của ghế là 45 cm nên thích hợp ngồi tất cả bàn cao từ 70cm --->82 cm.

Phong cách hiện đai, thanh mảnh mang lại cảm giác nhẹ nhàng cho không gian nhà bạn.', N'SKU	2609730644669
Thương hiệu	VIMOS
Xuất xứ thương hiệu	Việt Nam
Chất liệu	
Gỗ cao su

Hướng dẫn bảo quản	
Lau chùi , tắm rửa ghế thoải mái

Kích thước	39 x 39 x 83 cm
Chất liệu	Gỗ cao su
Xuất xứ	Việt Nam
Trọng lượng	5 kg
Quy cách đóng gói	
1 kiện/ 1 ghế

Tải trọng tối đa	120 kg', 2, 80, 475000, N'Vàng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (31, 8, N'Ghế xoay văn phòng cao cấp', N'Ghế xoay văn phòng 302 có thiết kế sang trọng, hiện đại, đường nét tinh tế theo đúng tư thế ngồi, tạo cảm giác thoải mái khi ngồi làm việc Hình dáng ưa nhìn, đẹp mắt và độc đáo bởi thiết kế thêm gôi tựa đầu. Chống ê mỏi cổ, lưng, hạn chế các bênh về xương khớp. Dễ dàng thay đổi chiều cao ghế, thay đổi chiều cao, góc nghiêng gối tựa đầu Cấu tạo chắc khỏe, chịu được tải trọng lớn Phù hợp vơi những người thường xuyên ngồi liên tục hàng giờ
Ghế xoay văn phòng cao cấp 302 kiểu dáng đơn giản với đường nét thiết kế hiện đại, chắc chắn, mặt ghế được bọc đệm êm ái giúp mang lại cảm giác tuyệt đối khi ngồi.

Lưng ghế và tựa đầu được thiết kế rộng rãi , thoái mái có đường cong vừa phải giúp nâng đỡ toàn bộ cột của người ngồi đảm bảo sức khỏe và nâng cao chất lượng cuộc sống của bạn.', N'SKU	1665640105322
Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Model	5CGH-302
Kích thước	65x45x90cm
Xuất xứ	Việt Nam
Trọng lượng	10
Tải trọng tối đa	250', 4, 46, 650000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (32, 9, N'Ghế sofa đơn, ghế sofa đơn giản', N'Kích thước: 115*61*71cm Ghế sofa khung gỗ, đệm êm bọc vải cao cấp Bề mặt gia công tỉ mỉ, sơn PU nhẵn mịn, đẹp mắt. Bộ dụng cụ đầy đủ được cung cấp sẵn, dễ dàng lắp đặt.
Kích thước: 115*61*71cm
Ghế sofa khung gỗ, đệm êm bọc vải cao cấp
Bề mặt gia công tỉ mỉ, sơn PU nhẵn mịn, đẹp mắt.
Bộ dụng cụ đầy đủ được cung cấp sẵn, dễ dàng lắp đặt.', N'Thương hiệu	OEM
Xuất xứ thương hiệu	Đài Loan
Kích thước	115*61*71cm
Chất liệu	Gỗ MDF
Xuất xứ	Đài Loan
Trọng lượng	20
SKU	7183294140416', 4, 61, 2200000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (33, 9, N'Ghế Sofa Giường Đa năng 3 chế độ', N'3 chế độ : Nằm - Ngồi - Tựa lưng 3 kích cỡ : 80cm - 100cm - 120cm Khung thép chắc chắn Đệm đàn hồi Vỏ dễ dàng tháo rời
 Một không gian thoải mái là mơ ước của nhiều người vì thế khi trang trí và thiết kế nội thất phòng khách ngoài việc lựa chọn màu sắc hợp lý trong không gian nhỏ thì chọn những nội thất đa năng tiện ích là điều được gia chủ hướng đến hiện nay nhằm tiết kiệm diện tích cũng như đáp ứng đủ công năng của căn phòng.Vì thế 1 ghế sofa giường đa năng nhận được nhiều sự ủng hộ.

 Sofa giường đóng vai trò là chiếc ghế giúp gia chủ ngồi chơi nói chuyện, tiếp khách và có thể trở thành chiếc giường nghỉ ngơi hoàn hảo chỉ bằng vài thao tác đơn giản. Sự kết hợp tiện ích 2 trong 1 là lựa chọn hoàn hảo cho căn nhà nhỏ của bạn.', N'Thương hiệu	OEM
Xuất xứ thương hiệu	Đài Loan
Kích thước	80.100.120x190cm
Xuất xứ	Đài Loan
SKU	7767939297385', 5, 72, 5300000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (34, 9, N'Ghế Sofa lười cao cấp ngả ba chiều', N'Một sản phẩm rất mới trên thị trường hiện nay.

Ghế Sofa lười cao cấp sẽ khiến cho căn phòng của bạn thật hiện đại và tinh tế.
', N'Thương hiệu	OEM
Xuất xứ thương hiệu	Trung Quốc
Xuất xứ	Trung Quốc
Quy cách đóng gói	
 

 

SKU	7307895568602', 4, 43, 3599000, N'Nâu')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (35, 10, N'Ghế Sofa Tình Yêu, Tình Nhân', N'Tiện dụng, giá thành thấp, nằm êm ái, dễ chịu, tốt cho cột sống, mát về mùa hè, ấm về mùa đông Dễ dàng lau chùi khi bẩn, không bị thấm nước vào trong Ghế sofa tình yêu chính là dòng sản phẩm mới được nhiều người.
 

Khung sườn: gỗ tự nhiên, bộ đệm:  mút tốt D40 tạo sự êm ái khi sử dụng, không lún theo thời gian
Chất liệu: Simili giả da
Kích thước:  183 x 73 x 43 cm.', N'THÔNG TIN CHI TIẾT
Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Chất liệu	
Khung sườn: gỗ tự nhiên, bộ đệm:  mút tốt D40 tạo sự êm ái khi sử dụng, không lún theo thời gian
Chất liệu: Simili giả da
Kích thước:  183 x 73 x 43 cm.
Hướng dẫn bảo quản	
Tránh ánh nắng trực tiếp

Model	DP-TY23
Kích thước	183x73
Chất liệu	simili
Xuất xứ	Việt Nam
Trọng lượng	120kg
Quy cách đóng gói	
đóng gói giấy và PE chống bụi bẩn

 

Tải trọng tối đa	40kg
SKU	4046555574340', 5, 86, 2700000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (36, 11, N'Ghế lười Dream Micro', N'Ghế lười Dream Micro Xanh Rêu được thiết kế kiểu dáng tựa lưng thư giãn thoải mái. Chất liệu vải Micro sạch có thể sử dụng cả ngoài ban công. Tông màu xám rêu tông trầm dễ dàng phối hợp nội thất. Dáng ghế nhỏ gọn có thể mang đi bất cứ nơi nào. Có thể sử dụng cho cả người lớn hay trẻ em.
Ghế Lười Dream chất liệu vải micro sạch , mát nhẹ, chất liệu vải không bám bụi, không ủ mùi hôi.

Có thể sử dụng cả trong nhà và ban công thư giãn.

Kiểu dáng ngồi tựa lưng, tựa đầu thoải mái cho cả người lớn và trẻ em.

Ghế luôn có 2 lớp vỏ và ruột tách rời tháo giặt 

Đường may đôi cao cấp chắc chắc, dây kéo theo màu bền lâu.

Hạt xốp 3ly êm ái, lâu xẹp.', N'Thương hiệu	HomeDream
Xuất xứ thương hiệu	Việt Nam
Chất liệu	
Ghế luôn có 2 lớp Vỏ và ruột tách rời.

Bên ngoài: Vải micro sạch , mát nhẹ, chất liệu vải không bám bụi, không ủ mùi hôi.

Bên trọng: Vải thun co dãn chứa xốp.

Đường may đôi cao cấp chắc chắc, dây kéo theo màu bền chắc

Hạt xốp 3ly êm ái, mềm mại.

Hướng dẫn bảo quản	
Tránh tiếp xúc với các vật nhọn, nước và ánh nắng mặt trời quá lâu.

Hướng dẫn sử dụng	
Ghế đã có sẵn 2 lớp và hạt xốp, khách hàng chỉ cần mở bao và sử dụng được ngay.

Kích thước	130 x 80cm
Trọng lượng	3,0kg
Quy cách đóng gói	
Sản phẩm được đóng gói kyxm an toàn.

Kích cỡ	130x69x36mm
Tính năng	Thư giãn
SKU	2573345066645', 3, 93, 800000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (37, 11, N'Ghế Lười Mây Cao Cấp', N'Thiết kế theo phong cách phương Tây

Sản phẩm ghế Papasan không mấy xa lạ với người Việt khi nó đang là một xu hương sản phẩm nội thất du nhập từ Châu Âu sang Việt Nam. Sản phẩm sẽ mang tới một không gian thư giãn tuyệt vời.

Do thiết kế bằng mây rất nhẹ rất tiện để di chuyển hoặc cất đi khi không dùng đến, có thể tháo rời nệm để vệ sinh hoặc thay bằng nhiều màu nệm khác nhau

Thân thiện môi trường

Không chỉ chú trong thiết kế, sản phẩm ghế mây được làm từ nguyên liệu thân thiện môi trường nhưng bền bỉ cùng thời gian quả là sự lựa chọn không thể thiếu cho gia đình bạn.

Sản phẩm kèm nệm. Liên hệ nhà bán để chọn màu nệm.

', N'SKU	5409302834183
Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Chất liệu	
Mây tự nhiên-Nature Rattan

Hướng dẫn bảo quản	
Đặt nơi khô thoáng- Placing in dry area

Hướng dẫn sử dụng	
Tham khảo cách sử dụng nội thất mây- Refer to the way to use rattan furniture

Model	PA001
Xuất xứ	Việt Nam
Trọng lượng	8
Quy cách đóng gói	
Theo quy cách nhà sản xuất- As the standard of manufacturer', 5, 135, 3000000, N'Trắng')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (38, 11, N'Ghế xếp thư giãn', N'-Ghế xếp thư giãn có khóa bằng kim loại cao cấp bền bỉ. Khung ghế làm bằng thép tròn chống gỉ, dưới chân có đế cao su. Tải trọng 200kg, dây chằng cao su đôi giữ lưới vải, an toàn tuyệt đối khi nằm. Quà tặng kèm khay đựng ly, điện thoại tiện lợi. Có gối tựa đầu có thể tháo rời. Trọng lượng nhẹ, có thể xếp gọn giúp bạn dễ di chuyển và cất giữ.
-Ghế xếp thư giãn Sumika 179A (khóa kim loại) mang nhiều ưu điểm nổi trội của một chiếc ghế xếp hiện đại, thiết kế sang trọng và tiện dụng. Sản phẩm được làm từ chất liệu cao cấp, không chỉ an toàn với mọi đối tượng sử dụng mà còn giúp bạn và gia đình được nâng niu, thoải mái khi nghỉ ngơi, ngồi thư giãn, đọc sách,...', N'SKU	7205185474445
Thương hiệu	Sumika
Xuất xứ thương hiệu	Nhật Bản
Model	179A
Kích thước	95x70x13.5cm
Xuất xứ	Trung Quốc
Trọng lượng	8.5kg
Tải trọng tối đa	200kg', 4, 124, 790000, N'Đen')
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (39, 8, N'Ghế Lông Thú', N'Kích thước: 115*61*71cm Ghế sofa khung gỗ, đệm êm bọc vải cao cấp Bề mặt gia công tỉ mỉ, sơn PU nhẵn mịn, đẹp mắt. Bộ dụng cụ đầy đủ được cung cấp sẵn, dễ dàng lắp đặt.
Kích thước: 115*61*71cm
Ghế sofa khung gỗ, đệm êm bọc vải cao cấp
Bề mặt gia công tỉ mỉ, sơn PU nhẵn mịn, đẹp mắt.
Bộ dụng cụ đầy đủ được cung cấp sẵn, dễ dàng lắp đặt.', N'SKU	1665640105322
Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Model	5CGH-302
Kích thước	65x45x90cm
Xuất xứ	Việt Nam
Trọng lượng	10
Tải trọng tối đa	250', 4.5, 50, 10000000, NULL)
INSERT [dbo].[product] ([product_id], [type_product_id], [name], [descriptionDetails], [description], [evaluate], [amount], [price], [color]) VALUES (40, 8, N'Ghế Luxy', N'Một sản phẩm rất mới trên thị trường hiện nay.

Ghế Sofa lười cao cấp sẽ khiến cho căn phòng của bạn thật hiện đại và tinh tế.
', N'SKU	1665640105322
Thương hiệu	OEM
Xuất xứ thương hiệu	Việt Nam
Model	5CGH-302
Kích thước	65x45x90cm
Xuất xứ	Việt Nam
Trọng lượng	10
Tải trọng tối đa	250', 4, 30, 12000000, NULL)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[type_product] ON 
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (1, N'Bàn ăn ', 1)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (2, N'Bàn học - bàn làm việc', 1)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (3, N'Bàn trà - bàn khách', 1)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (4, N'Đèn bàn học - đèn làm việc', 2)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (5, N'Đèn ngủ', 2)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (6, N'Đèn pin', 2)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (7, N'Đèn trần', 2)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (8, N'Ghế đơn', 3)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (9, N'Ghế sofa', 3)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (10, N'Ghế tình yêu ', 3)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (11, N'Ghế thư giãn', 3)
INSERT [dbo].[type_product] ([type_product_id], [name], [furniture_id]) VALUES (12, NULL, NULL)
SET IDENTITY_INSERT [dbo].[type_product] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 
INSERT [dbo].[user] ([user_id], [user_name], [password], [full_name], [address], [email], [phone], [role]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'admin', N'admin', N'admin@admin', N'1234567890', 0)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[comment_product]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[image_product]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([type_product_id])
REFERENCES [dbo].[type_product] ([type_product_id])
GO
ALTER TABLE [dbo].[type_product]  WITH CHECK ADD FOREIGN KEY([furniture_id])
REFERENCES [dbo].[furniture] ([furniture_id])
GO