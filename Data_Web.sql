USE [CUAHANGDIENTHOAI]
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] ON 

INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive]) VALUES (1, N'Laptop', NULL, N'/Uploads/images/ProductCategory/Icon/Laptop-129x129.jpg', NULL, CAST(N'2024-03-30T12:07:58.000' AS DateTime), CAST(N'2024-04-08T21:05:15.430' AS DateTime), NULL, N'laptop', 1)
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive]) VALUES (2, N'Điện thoại', NULL, N'/Uploads/images/ProductCategory/Icon/Phone-128x129.jpg', NULL, CAST(N'2024-03-30T12:08:07.000' AS DateTime), CAST(N'2024-04-08T21:05:05.923' AS DateTime), NULL, N'dien-thoai', 1)
INSERT [dbo].[tb_ProductCategory] ([ProductCategoryId], [Title], [Description], [Icon], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifiedby], [Alias], [IsActive]) VALUES (3, N'Đồng hồ thông minh', NULL, N'/Uploads/images/ProductCategory/Icon/icon-moi-128x129.jpg', NULL, CAST(N'2024-03-30T12:08:22.000' AS DateTime), CAST(N'2024-04-08T21:03:57.850' AS DateTime), NULL, N'dong-ho-thong-minh', 1)
SET IDENTITY_INSERT [dbo].[tb_ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductCompany] ON 

INSERT [dbo].[tb_ProductCompany] ([ProductCompanyId], [Title], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifeby], [Alias], [Icon]) VALUES (1, N'Apple', NULL, CAST(N'2024-03-30T12:08:38.983' AS DateTime), CAST(N'2024-03-30T12:08:38.983' AS DateTime), NULL, N'apple', N'/Uploads/images/ProductsCompany/icon/logo-iphone-220x48.png')
INSERT [dbo].[tb_ProductCompany] ([ProductCompanyId], [Title], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifeby], [Alias], [Icon]) VALUES (2, N'Samsung', NULL, CAST(N'2024-03-30T12:08:45.917' AS DateTime), CAST(N'2024-03-30T12:08:45.917' AS DateTime), NULL, N'samsung', N'/Uploads/images/ProductsCompany/icon/samsungnew-220x48-1.png')
SET IDENTITY_INSERT [dbo].[tb_ProductCompany] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Products] ON 

INSERT [dbo].[tb_Products] ([ProductsId], [Title], [CreatedBy], [CreatedDate], [ModifiedDate], [Modifeby], [Alias], [IsActive], [IsHome], [IsSale], [IsFeature], [IsHot], [SeoTitle], [SeoDescription], [ProductCode], [KichCo], [TocDoCPU], [HeDieuHanh], [TocDoGPU], [MangDiDong], [Sim], [Wifi], [GPS], [Bluetooth], [CongKetNoi], [JackTaiNghe], [LoaiPin], [HoTroSac], [CongNghePin], [Image], [CPU], [GPU], [ManHinh], [ProductCategoryId], [ProductCompanyId]) VALUES (1, N'iPhone 15', NULL, CAST(N'2024-04-15T18:49:58.477' AS DateTime), CAST(N'2024-04-15T18:49:58.477' AS DateTime), NULL, N'iphone-15', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, N' 3.22 GHz', N' iOS 15', NULL, N'Hỗ trợ 5G', N'1-nano-sim--1-esim                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', N'Wi-Fi MIMO', N'QZSS', N'v5.0                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', N' Lightning', N' Lightning', N'li-ion                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', N'20 W', N'Tiết kiệm pin', N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-1-2-650x650.png', N'Apple A15 Bionic 6 nhân', N' Apple GPU 4 nhân', NULL, 2, 1)
SET IDENTITY_INSERT [dbo].[tb_Products] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductDetail] ON 

INSERT [dbo].[tb_ProductDetail] ([ProductDetailId], [Title], [Color], [Price], [PriceSale], [OrigianlPrice], [TypeProduct], [Image], [DungLuongPin], [Ram], [DungLuong], [ProductsId]) VALUES (1, N'Pro Max', N'Titan xanh', CAST(34990000.00 AS Decimal(18, 2)), CAST(29990000.00 AS Decimal(18, 2)), CAST(15000000.00 AS Decimal(18, 2)), 0, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-1-2-650x650.png', 4356, 8, 256, 1)
INSERT [dbo].[tb_ProductDetail] ([ProductDetailId], [Title], [Color], [Price], [PriceSale], [OrigianlPrice], [TypeProduct], [Image], [DungLuongPin], [Ram], [DungLuong], [ProductsId]) VALUES (2, N'Pro', N'Titan trắng', CAST(43490000.00 AS Decimal(18, 2)), CAST(40999000.00 AS Decimal(18, 2)), CAST(35000000.00 AS Decimal(18, 2)), 0, N'/Uploads/images/Products/Iphone15/iphone-15-pro-trang-0-650x650.png', 4909, 8, 10000, 1)
SET IDENTITY_INSERT [dbo].[tb_ProductDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductImage] ON 

INSERT [dbo].[tb_ProductImage] ([ProductImageId], [ProductsId], [Image], [IsDefault]) VALUES (1, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-1-2-650x650.png', 1)
INSERT [dbo].[tb_ProductImage] ([ProductImageId], [ProductsId], [Image], [IsDefault]) VALUES (2, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-1-650x650.png', 1)
INSERT [dbo].[tb_ProductImage] ([ProductImageId], [ProductsId], [Image], [IsDefault]) VALUES (3, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-2-650x650.png', 1)
INSERT [dbo].[tb_ProductImage] ([ProductImageId], [ProductsId], [Image], [IsDefault]) VALUES (4, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-3-650x650.png', 1)
INSERT [dbo].[tb_ProductImage] ([ProductImageId], [ProductsId], [Image], [IsDefault]) VALUES (5, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-4-650x650.png', 1)
INSERT [dbo].[tb_ProductImage] ([ProductImageId], [ProductsId], [Image], [IsDefault]) VALUES (6, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-5-650x650.png', 1)
INSERT [dbo].[tb_ProductImage] ([ProductImageId], [ProductsId], [Image], [IsDefault]) VALUES (7, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-6-650x650.png', 1)
SET IDENTITY_INSERT [dbo].[tb_ProductImage] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ProductDetailImage] ON 

INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (1, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-1-2-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (2, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-1-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (3, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-10-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (4, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-2-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (5, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-3-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (6, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-4-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (7, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-5-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (8, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-5-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (9, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-6-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (10, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-8-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (11, 1, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-9-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (12, 2, N'/Uploads/images/Products/Iphone15/iphone-15-pro-trang-0-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (13, 2, N'/Uploads/images/Products/Iphone15/iphone-15-pro-trang-2-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (14, 2, N'/Uploads/images/Products/Iphone15/iphone-15-pro-white-1-650x650(1).png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (15, 2, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-10-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (16, 2, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-6-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (17, 2, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-8-650x650.png', 1)
INSERT [dbo].[tb_ProductDetailImage] ([ProductImageId], [ProductDetailId], [Image], [IsDefault]) VALUES (18, 2, N'/Uploads/images/Products/Iphone15/iphone-15-pro-max-blue-titan-9-650x650.png', 1)
SET IDENTITY_INSERT [dbo].[tb_ProductDetailImage] OFF
GO
