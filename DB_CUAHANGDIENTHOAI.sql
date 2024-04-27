create database CUAHANGDIENTHOAI_test
go

use CUAHANGDIENTHOAI_test
go


----------------------Sản Phẩm
--Loại Sản Phẩm vd điện thoại & LapTop
create table tb_ProductCategory(
	ProductCategoryId int IDENTITY(1,1) NOT NULL primary key ,
	Title nvarchar(150) NOT NULL,
	Description nvarchar(max) NULL,
	Icon nvarchar(250) NULL,
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime  NULL,
	Modifiedby nvarchar(max) NULL,
	Alias nvarchar(150) NOT NULL,
	IsActive bit,
)
go


--Hang San Phấm
create table tb_ProductCompany(
	ProductCompanyId int IDENTITY(1,1) not null primary key ,
	Title nvarchar(max),
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime ,
	Modifeby nvarchar(max),
	Alias nvarchar(250)Null,
	 Icon nvarchar(250) NULL
)	
go



--Sản phẩm gì vd : iphone 11 & iphone 12
create table tb_Products(
	ProductsId int IDENTITY(1,1) not null primary key ,
	Title nvarchar(max),
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime ,
	Modifeby nvarchar(max),
	Alias nvarchar(max)Null,
	IsActive bit,
	IsHome bit ,
	IsSale bit ,
	IsFeature bit,
	IsHot bit ,
	SeoTitle nvarchar(250),
	SeoDescription nvarchar(250),
	ProductCode nvarchar(50),
	Screensize int ,--KichCo
	CPUspeed nvarchar(900),--TocDoCPU
	OperatingSystem nvarchar(900),--HeDieuHanh
	GPUspeed nvarchar(900),--TocDoGPU
	MobileNetwork nvarchar(900) ,--MangDiDong
	Sim char(900) ,
	Wifi  nvarchar(max) ,
	GPS nvarchar(900),
	Bluetooth char(900),
	Connector nvarchar(900),--CongKetNoi
	Headphonejack nvarchar(900),--JackTaingeh
	BatteryType char(900) ,--LoaiPin
	ChargingSupport  nvarchar(900) ,--HoTroSac
	BatteryTechnology nvarchar(900) ,--CongNghePin
	Image nvarchar(900),
	CPU nvarchar(100),
	GPU nvarchar (100),
	Screen char,--ManHinh
	ProductCategoryId int,
	ProductCompanyId int,
	
)
go

create table tb_ProductDetail(
	ProductDetailId int IDENTITY(1,1) not null primary key ,
	Title nvarchar(max),
	Color nvarchar(40),
	Price decimal(18,2),
	PriceSale decimal(18,2),
	OrigianlPrice decimal(18,2),
	TypeProduct bit ,
	
	Image nvarchar(900),
	BatteryCapacity int ,--DungLuongPin
	Ram int ,
	Capacity int ,--DungLuong
	ProductsId int 
)
go


--Hình chi tiết sản phẩm 
Create table tb_ProductDetailImage(
	ProductImageId int IDENTITY(1,1) NOT NULL  primary key ,
	ProductDetailId int NOT NULL,
	Image nvarchar(max) NULL,
	IsDefault bit NOT NULL,
	
)
go



--Hình nổi bật của sản phẩm 
Create table tb_ProductImage(
	ProductImageId int IDENTITY(1,1) NOT NULL  primary key ,
	ProductsId int NOT NULL,
	Image nvarchar(max) NULL,
	IsDefault bit NOT NULL,
	
)
go





-----------------------------------Nhan Viewn
--Thông tin nhân viên
create  TABLE tb_Staff(
	StaffId int IDENTITY(1,1) NOT NULL  primary key ,--NhanVienId
	Code varchar(10) Not null,--MSNV
	PhoneNumber VARCHAR(15)  Not null,--SDT
    NameStaff NVARCHAR(max) not null,--TenNhanVien
	CitizenIdentificationCard char(12)not null,--CCCD
    Email VARCHAR(100)not null,
    Password  varchar(100) not null,
	Image nvarchar(250) null,
	Birthday Date not null ,
	Location nvarchar(max)not null,--DiaChi
	DayofWork date ,--NgayVaoLam
	Wage decimal(18,2)NOT NULL,--Luong
	Sex nvarchar(7),--GioiTinh
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedBy nvarchar(max) NULL,
	ModifiedDate datetime NOT NULL,
	Clock bit,
	FunctionId int--IDCHu chuc ngang
)
go


--Hinh anh Nhan vien dang lôi can fix loi
--Create table tb_StaffImage(
--	Id int IDENTITY(1,1) NOT NULL  primary key ,
--	Image nvarchar(max) NULL,
--	IsDefault bit NOT NULL,
--	StaffId int  NOT NULL,
	
--)
--go


--Chuc Nang Nhân viên
create  table tb_Function (
	FunctionId int IDENTITY(1,1) NOT NULL primary key ,--FunctionId
	TitLe nvarchar (max),--TenChucNang
	Alias nvarchar(max),
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime,
	Modifeby nvarchar(max)
)
go

--Quyen Hạng Nhân Viên
create  table tb_Role (
 	StaffId int Not null,
	FunctionId int Not null,
	Note nvarchar(max),--GhiChu
	PRIMARY KEY(StaffId,FunctionId)
)
go
------------------------------------Khách hàng
create  TABLE tb_Customer (--tb_Customer
	CustomerId  int IDENTITY(1,1) NOT NULL primary key ,--CustomerId
    PhoneNumber VARCHAR(15)null ,--SDT
    CustomerName NVARCHAR(max) not null,--TenKhachHang
    Email VARCHAR(100)null,
    Password  varchar(100) ,
	Image nvarchar(250) null,
	Birthday Date null ,
	Loaction nvarchar(max)null,--DiaChi
	NumberofPurchases int, --SoLanMua
	Code char(10),
	Clock bit
)
go


------------------------------------Gio Hàng

create table tb_Cart(
	CartId int IDENTITY(1,1) NOT NULL primary key ,
	CustomerId  int,
)
go

create table tb_CartItem (
	CartItem int IDENTITY(1,1) NOT NULL primary key ,
	CartId int NOT NULL,
	Quantity int NOT NULL,
	Price decimal (18,0) Not null,
	PriceTotal decimal (18,0) Not null,
	TemPrice decimal (18,0) not null,	
	ProductDetailId int NOT NULL,
)
go


------------------------------------Order

create table tb_Order(
	OrderId int IDENTITY(1,1) NOT NULL primary key,
	Code nvarchar(max) NOT NULL,
	CustomerName nvarchar(max) NOT NULL,
	Phone nvarchar(max) NOT NULL,
	Address nvarchar(max) NOT NULL,
	TotalAmount [decimal](18, 2) NOT NULL,
	Quantity int NOT NULL,
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime NOT NULL,
	Modifiedby nvarchar(max) NULL,
	TypePayment int NOT NULL,
	Email nvarchar(max) NULL,
	
	typeOrder bit,--Loai Don hang(đon hàng đã xét duyệt chưa)
	Confirm bit,
	Status nvarchar(max),--trang thai thanh toan
	typeReturn bit,--neu true là đơn hàng trả 
	Success bit,--trang thái đơn hàng (true khách đã nhận đưuọc hàng)
	SuccessDate datetime,--Nếu Success ==true thì sẽ đây là ngày nhận hàng
	CustomerId int 
)
go

create table tb_OrderDetail (
	OrderDetailId int IDENTITY(1,1) NOT NULL primary key ,
	Price decimal(18, 2) NOT NULL,
	Quantity int NOT NULL,
	CartItem int,
	DamagedProduct bit,
	OrderId int ,
	CustomerId int ,
	ProductDetailId int
)
go

-------------------------------------Cưa hàng



create table tb_Store (
	StoreId int IDENTITY(1,1) NOT NULL  primary key ,
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime  NULL,
	Modifiedby nvarchar(max) NULL,
	Alias nvarchar(250)Null,
	Location nvarchar(300),--DiChi
	City nvarchar(60),
	District nvarchar(60),
	IsStatus bit --Cua hàng còn đưuọc cấp phép hoạt động không
)
go



------------------------------------Kho hàng
--Thông tin kho
Create table tb_Warehouse(--
	WarehouseId int IDENTITY(1,1) NOT NULL  primary key ,
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime ,
	Modifeby nvarchar(max),
	StoreId int -------
)
go


Create table tb_ImportWarehouse(------
	ImportWarehouseId int IDENTITY(1,1) NOT NULL  primary key ,
	CreatedBy nvarchar(250),
	CreateDate DateTime ,
	ModifiedDate datetime ,
	Modifeby nvarchar(max),
	StaffId int,
	ProductDetailId int ,------
	QuanTity int ,
	WarehouseId int
)
go




--Xuất Kho
create table tb_ExportWareHouse(
	ExportWareHouseId int IDENTITY(1,1) NOT NULL  primary key ,
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime ,
	Modifeby nvarchar(max),
	StaffId int,
	OrderId int,
	WarehouseId int 
)
go

--Hang trả
create table tb_Return (
	ReturnId int IDENTITY(1,1) not null primary key ,
	Code nvarchar(max) NOT NULL,
	CreatedDate datetime,
	Confirm bit ,
	OrderId int ,
	CustomerId int,
	Satus nvarchar(max)
)



create table tb_ReturnDetail (
	Id int IDENTITY(1,1) NOT NULL primary key ,
	ReturnId int NOT NULL,
	Price decimal(18, 2) NOT NULL,
	Quantity int NOT NULL,
	ProductsId int
)
go
------------------------------------Voucher
create table tb_Voucher (
	VoucherId int IDENTITY(1,1) NOT NULL primary key ,
	Code char(30),
	PercentPriceReduction int , --PhanTramGiam
	Title nvarchar(250),
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime ,
	Modifeby nvarchar(max),
	UsedBy nvarchar(250),
	UsedDate DateTime ,
	Quantity int ,
	OrderId int 
)
go
------------------------------------Review

create table tb_Review (
	ReviewId int IDENTITY(1,1) NOT NULL primary key ,
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime ,
	Modifeby nvarchar(max),
	ProductDetailId int 
)
go


create table tb_ReviewDetail (
	ReviewDetailId int IDENTITY(1,1) NOT NULL primary key ,
	CreatedBy nvarchar(max) NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime ,
	Modifeby nvarchar(max),
	Content nvarchar (350),
	ReviewId int,
	CustomerId int 
)
go


-------------------------------------------------------------------------TRIGGER



-- Tạo trigger khi khhách hàng đăng ký sẽ tạo luôn cart

CREATE TRIGGER CreateCartOnInsertKhachHang
ON tb_Customer
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Chèn dữ liệu mới vào bảng tb_Cart
    INSERT INTO tb_Cart (CustomerId)
    SELECT CustomerId
    FROM inserted;
END;



--====================================================================================FK============================================================

--San Pham
alter table tb_Products
add constraint ProductDetaitoProductCategory
foreign key (ProductCategoryId)
references tb_ProductCategory 






alter table  tb_Products
add constraint ProductCompanytoProductDetai 
foreign key (ProductCompanyId)
references tb_ProductCompany


-----------------check laij
alter table  tb_ProductDetail
add constraint ProductDetaiToProducts
foreign key (ProductsId)
references tb_Products 


alter table  tb_ProductImage
add constraint ProductstoProductImage
foreign key (ProductsId)
references tb_Products 


alter table tb_ProductDetailImage
add constraint ProductDetailImageToProductDetail
foreign key (ProductDetailId)
references tb_ProductDetail 
------------------Nhan Vien

alter table tb_Role
add constraint RoletoStaff
foreign key (StaffId)
references tb_Staff 

alter table tb_Role
add constraint RoletoFunction
foreign key (FunctionId)
references tb_Function 


alter table   tb_Staff
add constraint StafftoFunction
foreign key (FunctionId)
references tb_Function


--alter table   tb_Staff
--drop constraint StafftoImage
--foreign key (StaffId)
--references tb_StaffImage



------------------Gio Hang

alter table tb_Cart
add constraint GioHangtoKhachHang
foreign key (CustomerId)
references tb_Customer 


 alter table tb_CartItem
add constraint CartItemtoProducdetai
foreign key (ProductDetailId)
references tb_ProductDetail


alter table tb_CartItem
add constraint CartItemtoCart
foreign key (CartId)
references tb_Cart 


------------------Order

alter table tb_OrderDetail
add constraint OrderDetailtoOrder 
foreign key (OrderId)
references tb_Order 



alter table tb_OrderDetail
add constraint OrderDetailtKhachHang
foreign key (CustomerId)
references tb_Customer



alter table tb_OrderDetail
add constraint OrderDetailtoProductDetai
foreign key (ProductDetailId)
references tb_ProductDetail


------------------ FK_WareHosue

alter table tb_ExportWareHouse
add constraint ExportWareHousetoOrder
foreign key (OrderId)
references tb_Order


alter table tb_ExportWareHouse
add constraint ExportWareHousetoWareHouse
foreign key (WarehouseId)
references tb_WareHouse


alter table tb_ExportWareHouse
add constraint ExportWareHousetoStaff
foreign key (StaffId)
references tb_Staff

alter table  tb_Warehouse
add constraint WarehousetoStore
foreign key (StoreId)
references tb_Store


---Nhập hàng

alter table  tb_ImportWarehouse
add constraint ImportWarehousetoWarehouse
foreign key (WarehouseId)
references tb_Warehouse

alter table  tb_ImportWarehouse
add constraint ImportWarehouseToProductDetail
foreign key (ProductDetailId)
references tb_ProductDetail


alter table  tb_ImportWarehouse
add constraint ImportWarehouseToStaff
foreign key (StaffId)
references tb_Staff



------------------ FK_Hàng Trả
alter table tb_ReturnDetail
add constraint ReturnDetailtoReturn
foreign key (ReturnId)
references tb_Return


alter table tb_ReturnDetail
add constraint ReturnDetailtoProductDetai
foreign key (ProductsId)
references tb_Products


alter table tb_Return
add constraint ReturntoOrder
foreign key (OrderId)
references tb_Order


alter table tb_Return
add constraint ReturntoKhachHang
foreign key (CustomerId)
references tb_Customer

------------------ FK_Voucher

alter table tb_Voucher
add constraint VouchertoOrder
foreign key (OrderId)
references tb_Order

------------------ FK_Voucher


alter table tb_ReviewDetail
add constraint ReviewDetailtoReview
foreign key (ReviewId)
references tb_Review 

alter table tb_ReviewDetail
add constraint ReviewDetailtoKhachHang
foreign key (CustomerId)
references tb_Customer

alter table tb_Review
add constraint ReviewDetailtoProductDetai
foreign key (ProductDetailId)
references tb_ProductDetail



-------------------------------------Cưa hàng



