USE [master]
GO
/****** Object:  Database [webvetautructuyen]    Script Date: 04/20/2019 21:04:01 ******/
CREATE DATABASE [webvetautructuyen] ON  PRIMARY 
( NAME = N'webvetautructuyen', FILENAME = N'D:\baitapWeb\webvetautructuyen.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'webvetautructuyen_log', FILENAME = N'D:\baitapWeb\webvetautructuyen_log.LDF' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [webvetautructuyen] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webvetautructuyen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webvetautructuyen] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [webvetautructuyen] SET ANSI_NULLS OFF
GO
ALTER DATABASE [webvetautructuyen] SET ANSI_PADDING OFF
GO
ALTER DATABASE [webvetautructuyen] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [webvetautructuyen] SET ARITHABORT OFF
GO
ALTER DATABASE [webvetautructuyen] SET AUTO_CLOSE ON
GO
ALTER DATABASE [webvetautructuyen] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [webvetautructuyen] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [webvetautructuyen] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [webvetautructuyen] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [webvetautructuyen] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [webvetautructuyen] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [webvetautructuyen] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [webvetautructuyen] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [webvetautructuyen] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [webvetautructuyen] SET  DISABLE_BROKER
GO
ALTER DATABASE [webvetautructuyen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [webvetautructuyen] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [webvetautructuyen] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [webvetautructuyen] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [webvetautructuyen] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [webvetautructuyen] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [webvetautructuyen] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [webvetautructuyen] SET  READ_WRITE
GO
ALTER DATABASE [webvetautructuyen] SET RECOVERY FULL
GO
ALTER DATABASE [webvetautructuyen] SET  MULTI_USER
GO
ALTER DATABASE [webvetautructuyen] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [webvetautructuyen] SET DB_CHAINING OFF
GO
USE [webvetautructuyen]

GO
/****** Object:  Table [dbo].[tblbanggia]    Script Date: 04/20/2019 21:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblbanggia](
	[mabanggia] [int] IDENTITY(1,1) NOT NULL,
	[magadi] [int] NOT NULL,
	[magaden] [int] NOT NULL,
	[matoa] [int] NOT NULL,
	[matau] [int] NOT NULL,
	[giatien] [float] NULL,
 CONSTRAINT [PK_tblbanggia] PRIMARY KEY CLUSTERED 
(
	[mabanggia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblquyenhan]    Script Date: 04/20/2019 21:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblquyenhan](
	[maquyenhan] [int] IDENTITY(1,1) NOT NULL,
	[quyenhan] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblquyenhan] PRIMARY KEY CLUSTERED 
(
	[maquyenhan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblquyenhan] ON
INSERT [dbo].[tblquyenhan] ([maquyenhan], [quyenhan]) VALUES (1, N'toanquyen')
INSERT [dbo].[tblquyenhan] ([maquyenhan], [quyenhan]) VALUES (2, N'qlve')
INSERT [dbo].[tblquyenhan] ([maquyenhan], [quyenhan]) VALUES (3, N'qltau')
INSERT [dbo].[tblquyenhan] ([maquyenhan], [quyenhan]) VALUES (4, N'qllichtrinh')
SET IDENTITY_INSERT [dbo].[tblquyenhan] OFF
/****** Object:  Table [dbo].[tblloaitoa]    Script Date: 04/20/2019 21:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblloaitoa](
	[maloaitoa] [int] IDENTITY(1,1) NOT NULL,
	[tenloaitoa] [nvarchar](20) NULL,
	[giatien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[maloaitoa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblloaitoa] ON
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (1, N'Vip', 200)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (2, N'Ngồi mềm', 75)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (3, N'Ngồi mềm điều hòa', 100)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (4, N'Nằm mềm', 150)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (5, N'Nằm mềm điều hòa', NULL)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (6, N'Nằm cứng', NULL)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (7, N'Nằm cứng điều hòa', NULL)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (9, N'Không chỗ', NULL)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (10, N'Ngồi cứng', NULL)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (11, N'Ngồi cứng điều hòa', NULL)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (12, N'Ngồi mềm', NULL)
INSERT [dbo].[tblloaitoa] ([maloaitoa], [tenloaitoa], [giatien]) VALUES (13, N'Ngồi mềm lạnh', NULL)
SET IDENTITY_INSERT [dbo].[tblloaitoa] OFF
/****** Object:  Table [dbo].[tblloaikhach]    Script Date: 04/20/2019 21:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblloaikhach](
	[maloaikhach] [int] IDENTITY(1,1) NOT NULL,
	[tenloaikhach] [nvarchar](20) NULL,
	[phantramgiam] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[maloaikhach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblloaikhach] ON
INSERT [dbo].[tblloaikhach] ([maloaikhach], [tenloaikhach], [phantramgiam]) VALUES (1, N'Bà mẹ VNAH', 90)
INSERT [dbo].[tblloaikhach] ([maloaikhach], [tenloaikhach], [phantramgiam]) VALUES (2, N'Trẻ em dưới 5 tuổi', 100)
INSERT [dbo].[tblloaikhach] ([maloaikhach], [tenloaikhach], [phantramgiam]) VALUES (3, N'Thương binh-Liệt sĩ ', 50)
INSERT [dbo].[tblloaikhach] ([maloaikhach], [tenloaikhach], [phantramgiam]) VALUES (4, N'Học Sinh - Sinh Viên', 20)
INSERT [dbo].[tblloaikhach] ([maloaikhach], [tenloaikhach], [phantramgiam]) VALUES (5, N'Toàn vé', 0)
SET IDENTITY_INSERT [dbo].[tblloaikhach] OFF
/****** Object:  Table [dbo].[tbltinhtrangve]    Script Date: 04/20/2019 21:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltinhtrangve](
	[matinhtrang] [int] IDENTITY(1,1) NOT NULL,
	[tinhtrang] [nvarchar](50) NULL,
 CONSTRAINT [PK__tbltinhtrangve__0AD2A005] PRIMARY KEY CLUSTERED 
(
	[matinhtrang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbltinhtrangve] ON
INSERT [dbo].[tbltinhtrangve] ([matinhtrang], [tinhtrang]) VALUES (1, N'Chờ ngày đi')
INSERT [dbo].[tbltinhtrangve] ([matinhtrang], [tinhtrang]) VALUES (2, N'Đã quá hạn')
INSERT [dbo].[tbltinhtrangve] ([matinhtrang], [tinhtrang]) VALUES (3, N'Thay đổi')
SET IDENTITY_INSERT [dbo].[tbltinhtrangve] OFF
/****** Object:  Table [dbo].[tblthanhpho]    Script Date: 04/20/2019 21:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblthanhpho](
	[matp] [int] IDENTITY(1,1) NOT NULL,
	[tentp] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[matp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblthanhpho] ON
INSERT [dbo].[tblthanhpho] ([matp], [tentp]) VALUES (1, N'Hà Nội')
INSERT [dbo].[tblthanhpho] ([matp], [tentp]) VALUES (2, N'Vĩnh Phúc')
INSERT [dbo].[tblthanhpho] ([matp], [tentp]) VALUES (3, N'Phú Thọ')
INSERT [dbo].[tblthanhpho] ([matp], [tentp]) VALUES (4, N'Yên Bái')
INSERT [dbo].[tblthanhpho] ([matp], [tentp]) VALUES (5, N'Lào Cai')
INSERT [dbo].[tblthanhpho] ([matp], [tentp]) VALUES (6, N'Hải Phòng')
SET IDENTITY_INSERT [dbo].[tblthanhpho] OFF
/****** Object:  Table [dbo].[tbltau]    Script Date: 04/20/2019 21:04:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltau](
	[matau] [int] IDENTITY(1,1) NOT NULL,
	[tentau] [nvarchar](30) NULL,
	[giatien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[matau] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbltau] ON
INSERT [dbo].[tbltau] ([matau], [tentau], [giatien]) VALUES (1, N'LC3', 200)
INSERT [dbo].[tbltau] ([matau], [tentau], [giatien]) VALUES (2, N'SP1', 250)
INSERT [dbo].[tbltau] ([matau], [tentau], [giatien]) VALUES (3, N'SP4', 300)
INSERT [dbo].[tbltau] ([matau], [tentau], [giatien]) VALUES (20, N'SP3', 200)
INSERT [dbo].[tbltau] ([matau], [tentau], [giatien]) VALUES (21, N'YB1', 150)
SET IDENTITY_INSERT [dbo].[tbltau] OFF
/****** Object:  StoredProcedure [dbo].[spLoaitoa_Update]    Script Date: 04/20/2019 21:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spLoaitoa_Update]
	@maloaitoa int output,
	@tenloaitoa nvarchar(20),
	@giatien float
AS
BEGIN
	UPDATE dbo.tblloaitoa
	SET tenloaitoa = @tenloaitoa, giatien = @giatien
	WHERE maloaitoa = @maloaitoa
END
------Thêm loại toa---------------------------------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spLoaitoa_Insert]    Script Date: 04/20/2019 21:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLoaitoa_Insert]

	@tenloaitoa nvarchar(20),
	@giatien float
AS
BEGIN
	INSERT INTO dbo.tblloaitoa
    VALUES(@tenloaitoa, @giatien)

END
-----------Xóa loại toa-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spLoaitoa_Delete]    Script Date: 04/20/2019 21:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLoaitoa_Delete]
	@maloaitoa int
AS
BEGIN
	DELETE dbo.tblloaitoa
	WHERE maloaitoa = @maloaitoa
END
-----------Sủa tàu-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spLoaikhach_Update]    Script Date: 04/20/2019 21:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spLoaikhach_Update]
	@maloaikhach int output,
	@tenloaikhach nvarchar(20),
	@phantramgiam float
AS
BEGIN
	UPDATE dbo.tblloaikhach
	SET tenloaikhach = @tenloaikhach, phantramgiam=@phantramgiam
	WHERE maloaikhach = @maloaikhach
END
-----------Sủa loại toa-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spLoaikhach_Insert]    Script Date: 04/20/2019 21:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLoaikhach_Insert]

	@tenloaikhach nvarchar(20),
	@phantramgiam float
AS
BEGIN
	INSERT INTO dbo.tblloaikhach
    VALUES(@tenloaikhach,@phantramgiam)

END
-----------Sủa loại khách-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spLoaikhach_Delete]    Script Date: 04/20/2019 21:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLoaikhach_Delete]
	@maloaikhach int
AS
BEGIN
	DELETE dbo.tblloaikhach
	WHERE maloaikhach = @maloaikhach
END
------Thêm loại khách---------------------------------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spBgia_Insert]    Script Date: 04/20/2019 21:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBgia_Insert]

	@magadi int, 
	@magaden int,	
	@matoa int,
	@matau int,
	@giatien float
AS
BEGIN
	INSERT INTO dbo.tblbanggia
    VALUES(@magadi, @magaden, @matoa, @matau, @giatien)

END
-----------Xóa bảng giá-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spBgia_Delete]    Script Date: 04/20/2019 21:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spBgia_Delete]
	@mabanggia int
AS
BEGIN
	DELETE dbo.tblbanggia
	WHERE mabanggia = @mabanggia 
END
-----------Sủa thành phố-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spBanggia_Update]    Script Date: 04/20/2019 21:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spBanggia_Update]
	@mabanggia int,
	@matoa int,
	@matau int,
	@magadi int,
	@magaden int,
	@giatien float
AS
BEGIN
	UPDATE dbo.tblbanggia
	SET matoa = @matoa, matau = @matau, magadi =@magadi, magaden = @magaden, giatien =@giatien
	WHERE mabanggia = @mabanggia
END
------Thêm bảng giá---------------------------------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spThanhpho_Update]    Script Date: 04/20/2019 21:04:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spThanhpho_Update]
	@matp int output,
	@tentp nvarchar(30)
AS
BEGIN
	UPDATE dbo.tblthanhpho
	SET tentp = @tentp
	WHERE matp = @matp
END
------Thêm thành phố---------------------------------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spThanhpho_Insert]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spThanhpho_Insert]
	/*@matp int output,*/
	@tentp nvarchar(30)
AS
BEGIN
	INSERT INTO dbo.tblthanhpho
    VALUES(@tentp)
	/*SELECT @matp = @@IDENTITY*/
END
-----------Xóa thành phố-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spThanhpho_Delete]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spThanhpho_Delete]
	@matp int
AS
BEGIN
	DELETE dbo.tblthanhpho
	WHERE matp = @matp
END
-----------Sủa tài khoản-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spTau_Update]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spTau_Update]
	@matau int output,
	@tentau nvarchar(30),
	@giatien float
AS
BEGIN
	UPDATE dbo.tbltau
	SET tentau = @tentau, giatien = @giatien
	WHERE matau = @matau
END
------Thêm tàu---------------------------------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spTau_Insert]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTau_Insert]

	@tentau nvarchar(30),
	@giatien float
AS
BEGIN
	INSERT INTO dbo.tbltau
    VALUES(@tentau, @giatien)

END
-----------Xóa tàu-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spTau_Delete]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTau_Delete]
	@matau int
AS
BEGIN
	DELETE dbo.tbltau
	WHERE matau = @matau
END
-----------Sủa toa-----------------
SET ANSI_NULLS ON
GO
/****** Object:  Table [dbo].[tbltaikhoan]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbltaikhoan](
	[mataikhoan] [int] IDENTITY(1,1) NOT NULL,
	[taikhoan] [varchar](20) NOT NULL,
	[matkhau] [varchar](20) NULL,
	[maquyenhan] [int] NULL,
 CONSTRAINT [PK_tbltaikhoan] PRIMARY KEY CLUSTERED 
(
	[mataikhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbltaikhoan] ON
INSERT [dbo].[tbltaikhoan] ([mataikhoan], [taikhoan], [matkhau], [maquyenhan]) VALUES (1, N'admin', N'1234', 1)
INSERT [dbo].[tbltaikhoan] ([mataikhoan], [taikhoan], [matkhau], [maquyenhan]) VALUES (2, N'qlve', N'1234', 2)
INSERT [dbo].[tbltaikhoan] ([mataikhoan], [taikhoan], [matkhau], [maquyenhan]) VALUES (3, N'qltau', N'1234', 3)
INSERT [dbo].[tbltaikhoan] ([mataikhoan], [taikhoan], [matkhau], [maquyenhan]) VALUES (4, N'qllichtrinh', N'1234', 4)
SET IDENTITY_INSERT [dbo].[tbltaikhoan] OFF
/****** Object:  Table [dbo].[tblkhachhang]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblkhachhang](
	[makh] [int] IDENTITY(1,1) NOT NULL,
	[cmnd] [varchar](13) NULL,
	[hoten] [nvarchar](30) NULL,
	[gioitinh] [nvarchar](5) NULL,
	[email] [varchar](30) NULL,
	[sdt] [varchar](13) NULL,
	[maloaikhach] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblkhachhang] ON
INSERT [dbo].[tblkhachhang] ([makh], [cmnd], [hoten], [gioitinh], [email], [sdt], [maloaikhach]) VALUES (1, N'123456789', N'Nguyễn Tuấn Anh', N'Nam', N'nguyentuananh@gmail.com', N'123456798', 5)
INSERT [dbo].[tblkhachhang] ([makh], [cmnd], [hoten], [gioitinh], [email], [sdt], [maloaikhach]) VALUES (2, N'987654321', N'Phạm Thanh Tùng', N'Nam', N'thanhtung.pham@gmail.com', N'654789954', 4)
INSERT [dbo].[tblkhachhang] ([makh], [cmnd], [hoten], [gioitinh], [email], [sdt], [maloaikhach]) VALUES (3, N'156454321', N'Trần Thị Tâm', N'Nữ', N'trantam@gmail.com', N'549842132', 4)
SET IDENTITY_INSERT [dbo].[tblkhachhang] OFF
/****** Object:  Table [dbo].[tblgatau]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblgatau](
	[maga] [int] IDENTITY(1,1) NOT NULL,
	[tenga] [nvarchar](30) NULL,
	[matp] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maga] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblgatau] ON
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (1, N'Hà Nội', 1)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (2, N'Gia Lâm', 1)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (3, N'Yên Viên', 1)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (4, N'Đông Anh', 1)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (5, N'Phúc Yên', 2)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (6, N'Vĩnh Yên', 2)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (7, N'Việt Trì', 3)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (8, N'Phủ Đức', 3)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (9, N'Tiên Kiên', 3)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (10, N'Phú Thọ', 3)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (11, N'Chí Chủ', 3)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (12, N'Vũ Ẻn', 3)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (13, N'Ấm Thượng', 3)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (14, N'Yến Bái', 4)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (15, N'Cổ Phúc', 4)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (16, N'Ngòi Hóp', 4)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (17, N'Mậu A', 4)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (18, N'Trái Hút', 4)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (19, N'Lâm Giang', 4)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (20, N'Lang Khay', 4)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (21, N'Lang Thíp', 4)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (26, N'Bảo Hà', 5)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (27, N'Thái Văn', 5)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (28, N'Phố Lu', 5)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (29, N'Thái Niên', 5)
INSERT [dbo].[tblgatau] ([maga], [tenga], [matp]) VALUES (30, N'Lào Cai', 5)
SET IDENTITY_INSERT [dbo].[tblgatau] OFF
/****** Object:  Table [dbo].[tbltoatau]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltoatau](
	[matoa] [int] IDENTITY(1,1) NOT NULL,
	[tentoa] [nvarchar](20) NULL,
	[maloaitoa] [int] NULL,
	[matau] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[matoa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbltoatau] ON
INSERT [dbo].[tbltoatau] ([matoa], [tentoa], [maloaitoa], [matau]) VALUES (1, N'1', 5, 1)
INSERT [dbo].[tbltoatau] ([matoa], [tentoa], [maloaitoa], [matau]) VALUES (2, N'1T', 10, 1)
INSERT [dbo].[tbltoatau] ([matoa], [tentoa], [maloaitoa], [matau]) VALUES (3, N'2', 10, 1)
INSERT [dbo].[tbltoatau] ([matoa], [tentoa], [maloaitoa], [matau]) VALUES (13, N'3', 2, 1)
INSERT [dbo].[tbltoatau] ([matoa], [tentoa], [maloaitoa], [matau]) VALUES (16, N'4', 6, 1)
INSERT [dbo].[tbltoatau] ([matoa], [tentoa], [maloaitoa], [matau]) VALUES (17, N'5', 6, 1)
INSERT [dbo].[tbltoatau] ([matoa], [tentoa], [maloaitoa], [matau]) VALUES (19, N'1', 1, 2)
INSERT [dbo].[tbltoatau] ([matoa], [tentoa], [maloaitoa], [matau]) VALUES (20, N'2', 1, 2)
SET IDENTITY_INSERT [dbo].[tbltoatau] OFF
/****** Object:  Table [dbo].[tbltoaghe]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbltoaghe](
	[maghe] [int] IDENTITY(1,1) NOT NULL,
	[tenghe] [nvarchar](15) NULL,
	[matoa] [int] NULL,
	[tinhtrangghe] [varchar](1) NULL,
 CONSTRAINT [PK_tbltoaghe] PRIMARY KEY CLUSTERED 
(
	[maghe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbltoaghe] ON
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (1, N'1', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (2, N'2', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (3, N'3', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (4, N'4', 1, N'1')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (5, N'5', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (6, N'6', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (7, N'7', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (8, N'1', 2, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (9, N'1', 20, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (10, N'2', 2, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (11, N'1', 19, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (12, N'8', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (13, N'9', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (14, N'10', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (15, N'11', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (16, N'12', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (17, N'13', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (18, N'14', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (19, N'15', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (20, N'16', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (21, N'17', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (22, N'18', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (23, N'19', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (24, N'20', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (25, N'21', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (26, N'22', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (27, N'23', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (28, N'24', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (29, N'2425', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (30, N'26', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (31, N'27', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (32, N'28', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (37, N'56', 1, N'0')
INSERT [dbo].[tbltoaghe] ([maghe], [tenghe], [matoa], [tinhtrangghe]) VALUES (38, N'566', 1, N'0')
SET IDENTITY_INSERT [dbo].[tbltoaghe] OFF
/****** Object:  View [dbo].[vw_toatau]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_toatau] AS 
SELECT toa.matoa, toa.tentoa, loaitoa.tenloaitoa, tau.tentau, loaitoa.maloaitoa, tau.matau  
	FROM tbltoatau as toa
	INNER JOIN tbltau as tau ON toa.matau = tau.matau
	INNER JOIN tblloaitoa as loaitoa ON toa.maloaitoa = loaitoa.maloaitoa
GO
/****** Object:  Table [dbo].[tbllichtrinh]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbllichtrinh](
	[malichtrinh] [int] IDENTITY(1,1) NOT NULL,
	[magadi] [int] NOT NULL,
	[magaden] [int] NOT NULL,
	[matau] [int] NOT NULL,
	[ngaydi] [datetime] NULL,
	[ngayden] [datetime] NULL,
	[giatien] [float] NULL,
 CONSTRAINT [PK_tbllichtrinh_1] PRIMARY KEY CLUSTERED 
(
	[malichtrinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbllichtrinh] ON
INSERT [dbo].[tbllichtrinh] ([malichtrinh], [magadi], [magaden], [matau], [ngaydi], [ngayden], [giatien]) VALUES (1, 1, 30, 1, CAST(0x0000A56500659FA0 AS DateTime), CAST(0x0000A5650103D3A0 AS DateTime), 150000)
SET IDENTITY_INSERT [dbo].[tbllichtrinh] OFF
/****** Object:  StoredProcedure [dbo].[spTaikhoan_Update]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spTaikhoan_Update]
	@mataikhoan int output,
	@taikhoan varchar(20),
	@matkhau varchar(20),
	@maquyenhan int
AS
BEGIN
	UPDATE dbo.tbltaikhoan
	SET taikhoan = @taikhoan, matkhau = @matkhau, maquyenhan = @maquyenhan
	WHERE mataikhoan = @mataikhoan
END
------Thêm tài khoản---------------------------------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spTaikhoan_Delete]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spTaikhoan_Delete]
	@mataikhoan int
AS
BEGIN
	DELETE dbo.tbltaikhoan
	WHERE mataikhoan = @mataikhoan
END
-----------Sủa ga-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spKhachhang_Update]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spKhachhang_Update]
	@makh int output,
	@cmnd varchar(13),
	@hoten nvarchar(30),
	@gioitinh nvarchar(5),
	@email varchar(30),
	@sdt varchar(13),
	@maloaikhach int
AS
BEGIN
	UPDATE dbo.tblkhachhang
	SET cmnd = @cmnd, hoten=@hoten,gioitinh=@gioitinh,email=@email,
	    sdt=@sdt, maloaikhach=@maloaikhach
	WHERE makh = @makh
END
-----------Xóa loại khách-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spKhachhang_Insert]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spKhachhang_Insert]

	@cmnd varchar(13),
	@hoten nvarchar(30),
	@gioitinh nvarchar(5),
	@email varchar(30),
	@sdt varchar(13),
	@maloaikhach int
AS
BEGIN
	INSERT INTO dbo.tblkhachhang
    VALUES(@cmnd,@hoten,@gioitinh,@email,@sdt,@maloaikhach)

END
-----------Xóa khách-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spKhachhang_Delete]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spKhachhang_Delete]
	@makh int
AS
BEGIN
	DELETE dbo.tblkhachhang
	WHERE makh = @makh
END
-----------Sủa khách-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spToa_Insert]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spToa_Insert]
	/*@matoa int output,*/
	@tentoa nvarchar(20),
	@maloaitoa int,
	@matau int
AS
BEGIN
	INSERT INTO dbo.tbltoatau
    VALUES(@tentoa, @maloaitoa, @matau)
	/*SELECT @matoa = @@IDENTITY*/
END
-----------Xóa toa-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spToa_Delete]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spToa_Delete]
	@matoa int
AS
BEGIN
	DELETE dbo.tbltoatau
	WHERE matoa = @matoa
END
-----------Sủa ghế-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spToa_Update]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spToa_Update]
	@matoa int output,
	@tentoa nvarchar(20),
	@maloaitoa int,
	@matau int
AS
BEGIN
	UPDATE dbo.tbltoatau
	SET tentoa = @tentoa, maloaitoa = @maloaitoa, matau =@matau
	WHERE matoa = @matoa
END
------Thêm toa---------------------------------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spBanggia]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spBanggia]
As
	Begin
		SELECT mabanggia, gadi.maga as [ma_gadi], gadi.tenga as [ten_gadi], gadi.matp as [tp_di], gaden.maga as [ma_gaden], gaden.tenga as [ten_gaden], gaden.matp as [tp_den], tau.matau, tau.tentau, bg.giatien, toa.matoa, toa.tentoa
		FROM tbltoatau, tbltau, tblgatau, tblbanggia as bg
		INNER JOIN tblgatau as gadi ON gadi.maga = bg.magadi
		INNER JOIN tblgatau as gaden ON gaden.maga = bg.magaden
		INNER JOIN tbltau as tau ON tau.matau = bg.matau
		INNER JOIN tbltoatau as toa ON toa.matoa = bg.matoa
		group by mabanggia, gadi.maga, gadi.tenga, gaden.maga, gaden.tenga, tau.matau, tau.tentau, gadi.matp, gaden.matp, bg.giatien, toa.matoa, toa.tentoa
	End
GO
/****** Object:  StoredProcedure [dbo].[spGa_Update]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spGa_Update]
	@maga int output,
	@tenga nvarchar(30),
	@matp int
AS
BEGIN
	UPDATE dbo.tblgatau
	SET tenga = @tenga, matp = @matp
	WHERE maga = @maga
END
------Thêm ga---------------------------------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spGa_Insert]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGa_Insert]

	@tenga nvarchar(30),
	@matp int
AS
BEGIN
	INSERT INTO dbo.tblgatau
    VALUES(@tenga, @matp)

END
-----------Xóa ga-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spGa_Delete]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGa_Delete]
	@maga int
AS
BEGIN
	DELETE dbo.tblgatau
	WHERE maga = @maga
END
-----------Sửa vé tàu-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spLichtrinh_Update]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spLichtrinh_Update]
	@malichtrinh int,
	@ngaydi datetime,
	@ngayden datetime,
	@matau int,
	@magadi int,
	@magaden int,
	@giatien float
AS
BEGIN
	UPDATE dbo.tbllichtrinh
	SET ngaydi = @ngaydi, ngayden = @ngayden, matau =@matau, magadi = @magadi, magaden =@magaden, giatien = @giatien
	WHERE malichtrinh = @malichtrinh
END
------Thêm lịch trình---------------------------------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spLichtrinh_Insert]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLichtrinh_Insert]

	@ngaydi datetime,
	@ngayden datetime,
	@matau int,
	@magadi int,
	@magaden int,
	@giatien float
AS
BEGIN
	INSERT INTO dbo.tbllichtrinh
    VALUES(@magadi, @magaden, @matau, @ngaydi, @ngayden, @giatien)

END
-----------Xóa lịch trình-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spLichtrinh]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spLichtrinh]
As
	Begin
		SELECT malichtrinh, gadi.maga as [ma_gadi], gadi.tenga as [ten_gadi], gadi.matp as [tp_di], gaden.maga as [ma_gaden], gaden.tenga as [ten_gaden], gaden.matp as [tp_den], ngaydi, ngayden, tau.matau, tau.tentau
		FROM tbltau, tbllichtrinh as lt
		INNER JOIN tblgatau as gadi ON gadi.maga = lt.magadi
		INNER JOIN tblgatau as gaden ON gaden.maga = lt.magaden
		INNER JOIN tbltau as tau ON tau.matau = lt.matau
		group by malichtrinh, gadi.maga, gadi.tenga, gaden.maga, gaden.tenga, tau.matau, tau.tentau, ngaydi, ngayden, gadi.matp, gaden.matp
	End
GO
/****** Object:  StoredProcedure [dbo].[spGhe_Update]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[spGhe_Update]
	@maghe int output,
	@tenghe nvarchar(15),
	@matoa int, 
	@tinhtrangghe varchar(1)
AS
BEGIN
	UPDATE dbo.tbltoaghe
	SET tenghe = @tenghe, matoa = @matoa, tinhtrangghe = @tinhtrangghe
	WHERE maghe = @maghe
END
------Thêm ghế---------------------------------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spGhe_Insert]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGhe_Insert]
	@tenghe nvarchar(15),
	@matoa int, 
	@tinhtrangghe varchar(1)
AS
BEGIN
	  INSERT INTO dbo.tbltoaghe
    VALUES(@tenghe, @matoa, @tinhtrangghe)
END
-----------Xóa ghế-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spGhe_Delete]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGhe_Delete]
	@maghe int
AS
BEGIN
	DELETE dbo.tbltoaghe
	WHERE maghe = @maghe
END
-----------Sủa lịch trình-----------------
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[spToa_Search]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spToa_Search]
@searchkey nvarchar(50)
AS
BEGIN
  SELECT * FROM vw_toatau
	WHERE tentoa like '%'+@searchkey+'%' 
				OR tentau like '%'+ @searchkey + '%' 
				OR tenloaitoa like N'%'+@searchkey+'%'
END
GO
/****** Object:  View [dbo].[vw_ghe]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ghe] AS 
SELECT
ghe.maghe,
ghe.tenghe,
toatau.tentoa,
toatau.tenloaitoa,
toatau.tentau,
ghe.tinhtrangghe,
toatau.matoa,
toatau.matau,
toatau.maloaitoa

FROM tbltoaghe as ghe
	INNER JOIN vw_toatau as toatau ON toatau.matoa = ghe.matoa
GO
/****** Object:  Table [dbo].[tblvetau]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblvetau](
	[mave] [int] IDENTITY(1,1) NOT NULL,
	[makh] [int] NULL,
	[matau] [int] NULL,
	[thanhtien] [float] NULL,
	[matinhtrang] [int] NULL,
	[ngayban] [datetime] NULL,
	[ngaytra] [datetime] NULL,
	[malichtrinh] [int] NULL,
	[matoa] [int] NULL,
	[maghe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mave] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spVetau]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[spVetau]
As
	Begin
		SELECT lichtrinh.malichtrinh, tau.matau, tau.tentau, tau.giatien as [giatau], gadi.maga as [ma_gadi], gadi.tenga as [ten_gadi],gaden.maga as [ma_gaden], gaden.tenga as [ten_gaden], lichtrinh.giatien as [gialichtrinh], toa.matoa, toa.tentoa, loaitoa.giatien as [giatoa], khach.makh, khach.hoten, loaikhach.phantramgiam, ngayban, ngaytra, tinhtrang.tinhtrang, tinhtrang.matinhtrang, mave, thanhtien, datghe.maghe, datghe.tinhtrangghe,datghe.tenghe
		FROM tbltau, tbllichtrinh, tblgatau, tbltoatau, tblloaitoa, tblkhachhang, tblloaikhach, tbltinhtrangve, tbltoaghe, tblvetau as vt
		INNER JOIN tbltau as tau ON tau.matau = vt.matau
		INNER JOIN tbllichtrinh as lichtrinh ON lichtrinh.malichtrinh = vt.malichtrinh
		INNER JOIN tblgatau as gadi ON gadi.maga = lichtrinh.magadi
		INNER JOIN tblgatau as gaden ON gaden.maga = lichtrinh.magaden
		INNER JOIN tbltoatau as toa ON toa.matoa = vt.matoa
		INNER JOIN tblloaitoa as loaitoa ON toa.maloaitoa = loaitoa.maloaitoa
		INNER JOIN tblkhachhang as khach ON khach.makh = vt.makh
		INNER JOIN tblloaikhach as loaikhach ON khach.maloaikhach = loaikhach.maloaikhach
		INNER JOIN tbltinhtrangve as tinhtrang ON tinhtrang.matinhtrang = vt.matinhtrang
		INNER JOIN tbltoaghe as datghe ON datghe.maghe = vt.maghe	
		group by lichtrinh.malichtrinh, tau.matau, tau.tentau, tau.giatien, gadi.maga, gadi.tenga ,gaden.maga , gaden.tenga , lichtrinh.giatien, toa.matoa, toa.tentoa, loaitoa.giatien,khach.makh, khach.hoten, loaikhach.phantramgiam, ngayban, ngaytra, tinhtrang.tinhtrang, tinhtrang.matinhtrang, mave, thanhtien, datghe.maghe, datghe.tinhtrangghe, datghe.tenghe
	End
GO
/****** Object:  StoredProcedure [dbo].[spGhe_ViewBy]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGhe_ViewBy]
	@maloaitoa int

AS
BEGIN
				SELECT * FROM vw_ghe	
				WHERE maloaitoa = @maloaitoa
END
GO
/****** Object:  StoredProcedure [dbo].[spGhe_View]    Script Date: 04/20/2019 21:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGhe_View]
	@matau int = NULL,
	@matoa int =NULL
AS
BEGIN
	IF((@matau IS NULL AND  @matoa IS NULL) OR (@matau = '' AND @matoa = ''))
			SELECT * FROM vw_ghe
	IF( @matau IS NOT NULL AND  @matoa IS NOT NULL)
			SELECT * FROM vw_ghe	
			WHERE matau = @matau and matoa = @matoa
	IF( @matau IS NOT NULL  AND @matoa IS NULL )
				SELECT * FROM vw_ghe	
				WHERE matau = @matau

END
GO
/****** Object:  ForeignKey [FK_tbltaikhoan_tblquyenhan]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tbltaikhoan]  WITH CHECK ADD  CONSTRAINT [FK_tbltaikhoan_tblquyenhan] FOREIGN KEY([maquyenhan])
REFERENCES [dbo].[tblquyenhan] ([maquyenhan])
GO
ALTER TABLE [dbo].[tbltaikhoan] CHECK CONSTRAINT [FK_tbltaikhoan_tblquyenhan]
GO
/****** Object:  ForeignKey [FK_tblkhachhang_tblloaikhach]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tblkhachhang]  WITH CHECK ADD  CONSTRAINT [FK_tblkhachhang_tblloaikhach] FOREIGN KEY([maloaikhach])
REFERENCES [dbo].[tblloaikhach] ([maloaikhach])
GO
ALTER TABLE [dbo].[tblkhachhang] CHECK CONSTRAINT [FK_tblkhachhang_tblloaikhach]
GO
/****** Object:  ForeignKey [FK_tblgatau_tblthanhpho]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tblgatau]  WITH CHECK ADD  CONSTRAINT [FK_tblgatau_tblthanhpho] FOREIGN KEY([matp])
REFERENCES [dbo].[tblthanhpho] ([matp])
GO
ALTER TABLE [dbo].[tblgatau] CHECK CONSTRAINT [FK_tblgatau_tblthanhpho]
GO
/****** Object:  ForeignKey [FK_tbltoatau_tblloaitoa]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tbltoatau]  WITH CHECK ADD  CONSTRAINT [FK_tbltoatau_tblloaitoa] FOREIGN KEY([maloaitoa])
REFERENCES [dbo].[tblloaitoa] ([maloaitoa])
GO
ALTER TABLE [dbo].[tbltoatau] CHECK CONSTRAINT [FK_tbltoatau_tblloaitoa]
GO
/****** Object:  ForeignKey [FK_tbltoatau_tbltau]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tbltoatau]  WITH CHECK ADD  CONSTRAINT [FK_tbltoatau_tbltau] FOREIGN KEY([matau])
REFERENCES [dbo].[tbltau] ([matau])
GO
ALTER TABLE [dbo].[tbltoatau] CHECK CONSTRAINT [FK_tbltoatau_tbltau]
GO
/****** Object:  ForeignKey [FK_tbltoaghe_tbltoatau]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tbltoaghe]  WITH CHECK ADD  CONSTRAINT [FK_tbltoaghe_tbltoatau] FOREIGN KEY([matoa])
REFERENCES [dbo].[tbltoatau] ([matoa])
GO
ALTER TABLE [dbo].[tbltoaghe] CHECK CONSTRAINT [FK_tbltoaghe_tbltoatau]
GO
/****** Object:  ForeignKey [FK_tbllichtrinh_tblgatau]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tbllichtrinh]  WITH CHECK ADD  CONSTRAINT [FK_tbllichtrinh_tblgatau] FOREIGN KEY([magadi])
REFERENCES [dbo].[tblgatau] ([maga])
GO
ALTER TABLE [dbo].[tbllichtrinh] CHECK CONSTRAINT [FK_tbllichtrinh_tblgatau]
GO
/****** Object:  ForeignKey [FK_tbllichtrinh_tblgatau1]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tbllichtrinh]  WITH CHECK ADD  CONSTRAINT [FK_tbllichtrinh_tblgatau1] FOREIGN KEY([magaden])
REFERENCES [dbo].[tblgatau] ([maga])
GO
ALTER TABLE [dbo].[tbllichtrinh] CHECK CONSTRAINT [FK_tbllichtrinh_tblgatau1]
GO
/****** Object:  ForeignKey [FK_tbllichtrinh_tbltau]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tbllichtrinh]  WITH CHECK ADD  CONSTRAINT [FK_tbllichtrinh_tbltau] FOREIGN KEY([matau])
REFERENCES [dbo].[tbltau] ([matau])
GO
ALTER TABLE [dbo].[tbllichtrinh] CHECK CONSTRAINT [FK_tbllichtrinh_tbltau]
GO
/****** Object:  ForeignKey [FK_tblvetau_tblkhachhang]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tblvetau]  WITH CHECK ADD  CONSTRAINT [FK_tblvetau_tblkhachhang] FOREIGN KEY([mave])
REFERENCES [dbo].[tblkhachhang] ([makh])
GO
ALTER TABLE [dbo].[tblvetau] CHECK CONSTRAINT [FK_tblvetau_tblkhachhang]
GO
/****** Object:  ForeignKey [FK_tblvetau_tbllichtrinh]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tblvetau]  WITH CHECK ADD  CONSTRAINT [FK_tblvetau_tbllichtrinh] FOREIGN KEY([malichtrinh])
REFERENCES [dbo].[tbllichtrinh] ([malichtrinh])
GO
ALTER TABLE [dbo].[tblvetau] CHECK CONSTRAINT [FK_tblvetau_tbllichtrinh]
GO
/****** Object:  ForeignKey [FK_tblvetau_tbltau]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tblvetau]  WITH CHECK ADD  CONSTRAINT [FK_tblvetau_tbltau] FOREIGN KEY([matau])
REFERENCES [dbo].[tbltau] ([matau])
GO
ALTER TABLE [dbo].[tblvetau] CHECK CONSTRAINT [FK_tblvetau_tbltau]
GO
/****** Object:  ForeignKey [FK_tblvetau_tbltinhtrangve]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tblvetau]  WITH CHECK ADD  CONSTRAINT [FK_tblvetau_tbltinhtrangve] FOREIGN KEY([matinhtrang])
REFERENCES [dbo].[tbltinhtrangve] ([matinhtrang])
GO
ALTER TABLE [dbo].[tblvetau] CHECK CONSTRAINT [FK_tblvetau_tbltinhtrangve]
GO
/****** Object:  ForeignKey [FK_tblvetau_tbltoaghe]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tblvetau]  WITH CHECK ADD  CONSTRAINT [FK_tblvetau_tbltoaghe] FOREIGN KEY([maghe])
REFERENCES [dbo].[tbltoaghe] ([maghe])
GO
ALTER TABLE [dbo].[tblvetau] CHECK CONSTRAINT [FK_tblvetau_tbltoaghe]
GO
/****** Object:  ForeignKey [FK_tblvetau_tbltoatau]    Script Date: 04/20/2019 21:04:07 ******/
ALTER TABLE [dbo].[tblvetau]  WITH CHECK ADD  CONSTRAINT [FK_tblvetau_tbltoatau] FOREIGN KEY([matoa])
REFERENCES [dbo].[tbltoatau] ([matoa])
GO
ALTER TABLE [dbo].[tblvetau] CHECK CONSTRAINT [FK_tblvetau_tbltoatau]
GO
