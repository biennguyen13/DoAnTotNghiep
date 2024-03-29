USE [master]
GO
/****** Object:  Database [QUAN_LY_NHA_HANG]    Script Date: 5/12/2019 7:25:27 AM ******/
CREATE DATABASE [QUAN_LY_NHA_HANG]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUAN_LY_NHA_HANG', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QUAN_LY_NHA_HANG.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QUAN_LY_NHA_HANG_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QUAN_LY_NHA_HANG_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUAN_LY_NHA_HANG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET  MULTI_USER 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUAN_LY_NHA_HANG', N'ON'
GO
USE [QUAN_LY_NHA_HANG]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[id_ban] [int] IDENTITY(1,1) NOT NULL,
	[b_soban] [int] NULL,
	[b_trangthai] [bit] NULL,
	[b_hoadon_phucvu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietDatBan]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatBan](
	[id_ctdatban] [int] IDENTITY(1,1) NOT NULL,
	[ctdb_soluong] [int] NULL,
	[ctdb_dongia] [float] NULL,
	[id_monan] [int] NOT NULL,
	[id_hoadon] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDatBan_1] PRIMARY KEY CLUSTERED 
(
	[id_ctdatban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietPhieu]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieu](
	[id_ctphieu] [int] IDENTITY(1,1) NOT NULL,
	[ctp_soluong] [int] NULL,
	[ctp_gia] [int] NULL,
	[id_phieu] [int] NOT NULL,
	[id_nguyenlieu] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieu_1] PRIMARY KEY CLUSTERED 
(
	[id_ctphieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CongThuc]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongThuc](
	[id_congthuc] [int] IDENTITY(1,1) NOT NULL,
	[ct_soluong] [float] NULL,
	[id_nguyenlieu] [int] NOT NULL,
	[id_monan] [int] NOT NULL,
 CONSTRAINT [PK_CongThuc_1] PRIMARY KEY CLUSTERED 
(
	[id_congthuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[id_hoadon] [int] IDENTITY(1,1) NOT NULL,
	[hd_ngaydat] [date] NULL,
	[hd_trangthai] [bit] NULL,
	[hd_ghichu] [nvarchar](50) NULL,
	[id_nhanvien] [int] NULL,
	[id_ban] [int] NULL,
	[id_khachhang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[id_khachhang] [int] IDENTITY(1,1) NOT NULL,
	[kh_ho] [nvarchar](50) NULL,
	[kh_ten] [nvarchar](10) NULL,
	[kh_email] [nvarchar](50) NULL,
	[kh_diachi] [nvarchar](100) NULL,
	[kh_dienthoai] [varchar](10) NULL,
	[kh_ghichu] [nvarchar](50) NULL,
 CONSTRAINT [PK__KhachHan__63966DBDE7ED9771] PRIMARY KEY CLUSTERED 
(
	[id_khachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiMonAn]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiMonAn](
	[id_loaimonan] [int] IDENTITY(1,1) NOT NULL,
	[lma_ten] [nvarchar](100) NULL,
	[lma_mota] [nvarchar](max) NULL,
 CONSTRAINT [PK__LoaiMonA__4E1B54D65CC13AFF] PRIMARY KEY CLUSTERED 
(
	[id_loaimonan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonAn](
	[id_monan] [int] IDENTITY(1,1) NOT NULL,
	[ma_ten] [nvarchar](50) NULL,
	[ma_dongia] [float] NULL,
	[ma_hinh] [nvarchar](50) NULL,
	[ma_trangthai] [nvarchar](50) NULL,
	[ma_noidung] [nvarchar](255) NULL,
	[id_loaimonan] [int] NULL,
 CONSTRAINT [PK__MonAn__F9E0C3F82BE7A1E1] PRIMARY KEY CLUSTERED 
(
	[id_monan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu](
	[id_nguyenlieu] [int] IDENTITY(1,1) NOT NULL,
	[nl_ten] [nvarchar](50) NULL,
	[nl_donvitinh] [nvarchar](20) NULL,
	[nl_soluong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nguyenlieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[id_nhacungcap] [int] IDENTITY(1,1) NOT NULL,
	[ncc_ten] [nvarchar](50) NULL,
	[ncc_email] [varchar](100) NULL,
	[ncc_dienthoai] [varchar](10) NULL,
	[ncc_diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK__NhaCungC__C34B24EB6C0F6914] PRIMARY KEY CLUSTERED 
(
	[id_nhacungcap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[id_nhanvien] [int] IDENTITY(1,1) NOT NULL,
	[nv_ho] [nvarchar](50) NULL,
	[nv_ten] [nvarchar](50) NULL,
	[nv_email] [varchar](50) NULL,
	[nv_password] [nvarchar](20) NULL,
	[nv_diachi] [nvarchar](100) NULL,
	[nv_trangthai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Uni_NhanVien_Email] UNIQUE NONCLUSTERED 
(
	[nv_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhapTra]    Script Date: 5/12/2019 7:25:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapTra](
	[id_phieu] [int] IDENTITY(1,1) NOT NULL,
	[pnt_ngaylap] [date] NULL,
	[pnt_loaiphieu] [nvarchar](50) NULL,
	[id_nhanvien] [int] NULL,
	[id_nhacungcap] [int] NULL,
 CONSTRAINT [PK__PhieuNha__5B0F708317DC4D3A] PRIMARY KEY CLUSTERED 
(
	[id_phieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ChiTietDatBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatBan_HoaDon] FOREIGN KEY([id_hoadon])
REFERENCES [dbo].[HoaDon] ([id_hoadon])
GO
ALTER TABLE [dbo].[ChiTietDatBan] CHECK CONSTRAINT [FK_ChiTietDatBan_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietDatBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDatBan_MonAn1] FOREIGN KEY([id_monan])
REFERENCES [dbo].[MonAn] ([id_monan])
GO
ALTER TABLE [dbo].[ChiTietDatBan] CHECK CONSTRAINT [FK_ChiTietDatBan_MonAn1]
GO
ALTER TABLE [dbo].[ChiTietPhieu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieu_NguyenLieu] FOREIGN KEY([id_nguyenlieu])
REFERENCES [dbo].[NguyenLieu] ([id_nguyenlieu])
GO
ALTER TABLE [dbo].[ChiTietPhieu] CHECK CONSTRAINT [FK_ChiTietPhieu_NguyenLieu]
GO
ALTER TABLE [dbo].[ChiTietPhieu]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieu_PhieuNhapTra] FOREIGN KEY([id_phieu])
REFERENCES [dbo].[PhieuNhapTra] ([id_phieu])
GO
ALTER TABLE [dbo].[ChiTietPhieu] CHECK CONSTRAINT [FK_ChiTietPhieu_PhieuNhapTra]
GO
ALTER TABLE [dbo].[CongThuc]  WITH CHECK ADD  CONSTRAINT [FK_CongThuc_MonAn] FOREIGN KEY([id_monan])
REFERENCES [dbo].[MonAn] ([id_monan])
GO
ALTER TABLE [dbo].[CongThuc] CHECK CONSTRAINT [FK_CongThuc_MonAn]
GO
ALTER TABLE [dbo].[CongThuc]  WITH CHECK ADD  CONSTRAINT [FK_CongThuc_NguyenLieu] FOREIGN KEY([id_nguyenlieu])
REFERENCES [dbo].[NguyenLieu] ([id_nguyenlieu])
GO
ALTER TABLE [dbo].[CongThuc] CHECK CONSTRAINT [FK_CongThuc_NguyenLieu]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Ban] FOREIGN KEY([id_ban])
REFERENCES [dbo].[Ban] ([id_ban])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Ban]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([id_khachhang])
REFERENCES [dbo].[KhachHang] ([id_khachhang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([id_nhanvien])
REFERENCES [dbo].[NhanVien] ([id_nhanvien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[MonAn]  WITH CHECK ADD  CONSTRAINT [FK_MonAn_LoaiMonAn] FOREIGN KEY([id_loaimonan])
REFERENCES [dbo].[LoaiMonAn] ([id_loaimonan])
GO
ALTER TABLE [dbo].[MonAn] CHECK CONSTRAINT [FK_MonAn_LoaiMonAn]
GO
ALTER TABLE [dbo].[PhieuNhapTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapTra_NhaCungCap] FOREIGN KEY([id_nhacungcap])
REFERENCES [dbo].[NhaCungCap] ([id_nhacungcap])
GO
ALTER TABLE [dbo].[PhieuNhapTra] CHECK CONSTRAINT [FK_PhieuNhapTra_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhapTra]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapTra_NhanVien] FOREIGN KEY([id_nhanvien])
REFERENCES [dbo].[NhanVien] ([id_nhanvien])
GO
ALTER TABLE [dbo].[PhieuNhapTra] CHECK CONSTRAINT [FK_PhieuNhapTra_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [QUAN_LY_NHA_HANG] SET  READ_WRITE 
GO
