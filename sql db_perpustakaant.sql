USE [db_perpustakaan]
GO
ALTER TABLE [dbo].[tb_pengembalian] DROP CONSTRAINT [FK__tb_pengem__kode___73BA3083]
GO
ALTER TABLE [dbo].[tb_peminjaman] DROP CONSTRAINT [FK__tb_peminj__kode___6FE99F9F]
GO
ALTER TABLE [dbo].[tb_peminjaman] DROP CONSTRAINT [FK__tb_peminj__id_pe__70DDC3D8]
GO
ALTER TABLE [dbo].[tb_pegawai] DROP CONSTRAINT [FK__tb_pegawa__id_ro__6D0D32F4]
GO
ALTER TABLE [dbo].[tb_buku] DROP CONSTRAINT [FK__tb_buku__id_jeni__68487DD7]
GO
/****** Object:  Index [UQ__tb_buku__AC59245E91BAF5D7]    Script Date: 10/23/2021 5:57:50 PM ******/
ALTER TABLE [dbo].[tb_buku] DROP CONSTRAINT [UQ__tb_buku__AC59245E91BAF5D7]
GO
/****** Object:  Table [dbo].[tb_role]    Script Date: 10/23/2021 5:57:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_role]') AND type in (N'U'))
DROP TABLE [dbo].[tb_role]
GO
/****** Object:  Table [dbo].[tb_pengembalian]    Script Date: 10/23/2021 5:57:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_pengembalian]') AND type in (N'U'))
DROP TABLE [dbo].[tb_pengembalian]
GO
/****** Object:  Table [dbo].[tb_peminjaman]    Script Date: 10/23/2021 5:57:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_peminjaman]') AND type in (N'U'))
DROP TABLE [dbo].[tb_peminjaman]
GO
/****** Object:  Table [dbo].[tb_pegawai]    Script Date: 10/23/2021 5:57:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_pegawai]') AND type in (N'U'))
DROP TABLE [dbo].[tb_pegawai]
GO
/****** Object:  Table [dbo].[tb_jenisBuku]    Script Date: 10/23/2021 5:57:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_jenisBuku]') AND type in (N'U'))
DROP TABLE [dbo].[tb_jenisBuku]
GO
/****** Object:  Table [dbo].[tb_buku]    Script Date: 10/23/2021 5:57:50 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_buku]') AND type in (N'U'))
DROP TABLE [dbo].[tb_buku]
GO
USE [master]
GO
/****** Object:  Database [db_perpustakaan]    Script Date: 10/23/2021 5:57:50 PM ******/
DROP DATABASE [db_perpustakaan]
GO
/****** Object:  Database [db_perpustakaan]    Script Date: 10/23/2021 5:57:50 PM ******/
CREATE DATABASE [db_perpustakaan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_perpustakaan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\db_perpustakaan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_perpustakaan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\db_perpustakaan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [db_perpustakaan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_perpustakaan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_perpustakaan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_perpustakaan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_perpustakaan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_perpustakaan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_perpustakaan] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_perpustakaan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_perpustakaan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_perpustakaan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_perpustakaan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_perpustakaan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_perpustakaan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_perpustakaan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_perpustakaan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_perpustakaan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_perpustakaan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_perpustakaan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_perpustakaan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_perpustakaan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_perpustakaan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_perpustakaan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_perpustakaan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_perpustakaan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_perpustakaan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_perpustakaan] SET  MULTI_USER 
GO
ALTER DATABASE [db_perpustakaan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_perpustakaan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_perpustakaan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_perpustakaan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_perpustakaan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_perpustakaan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [db_perpustakaan] SET QUERY_STORE = OFF
GO
USE [db_perpustakaan]
GO
/****** Object:  Table [dbo].[tb_buku]    Script Date: 10/23/2021 5:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_buku](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kode_buku] [char](9) NULL,
	[judul_buku] [varchar](255) NULL,
	[penulis_buku] [varchar](50) NULL,
	[penerbit] [varchar](50) NULL,
	[tahun_terbit] [char](4) NULL,
	[id_jenis_buku] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_jenisBuku]    Script Date: 10/23/2021 5:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_jenisBuku](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[jenis_buku] [varchar](255) NULL,
	[kode_buku] [char](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_pegawai]    Script Date: 10/23/2021 5:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_pegawai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nama] [varchar](255) NULL,
	[alamat] [text] NULL,
	[email] [varchar](120) NULL,
	[password] [char](255) NULL,
	[nomor_telepon] [char](12) NULL,
	[id_role] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_peminjaman]    Script Date: 10/23/2021 5:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_peminjaman](
	[kode_peminjaman] [char](9) NOT NULL,
	[nis] [char](1) NULL,
	[nama] [varchar](120) NULL,
	[kelas] [varchar](1) NULL,
	[no_hp_siswa] [char](12) NULL,
	[kode_buku] [char](9) NULL,
	[borrow_date] [date] NULL,
	[due_date] [date] NULL,
	[status] [varchar](50) NULL,
	[id_pegawai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[kode_peminjaman] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_pengembalian]    Script Date: 10/23/2021 5:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_pengembalian](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kode_peminjaman] [char](9) NULL,
	[pengembalian_date] [date] NULL,
	[denda] [int] NULL,
	[status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_role]    Script Date: 10/23/2021 5:57:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_buku] ON 

INSERT [dbo].[tb_buku] ([id], [kode_buku], [judul_buku], [penulis_buku], [penerbit], [tahun_terbit], [id_jenis_buku]) VALUES (3, N'BM0001   ', N'Bravo!', N'Ade Sinandar', N'Tim Bravo!', N'2008', 1)
SET IDENTITY_INSERT [dbo].[tb_buku] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_jenisBuku] ON 

INSERT [dbo].[tb_jenisBuku] ([id], [jenis_buku], [kode_buku]) VALUES (1, N'Buku Majalah', N'BM')
INSERT [dbo].[tb_jenisBuku] ([id], [jenis_buku], [kode_buku]) VALUES (2, N'Buku Cerita', N'BC')
INSERT [dbo].[tb_jenisBuku] ([id], [jenis_buku], [kode_buku]) VALUES (3, N'Buku Pelajaran', N'BP')
INSERT [dbo].[tb_jenisBuku] ([id], [jenis_buku], [kode_buku]) VALUES (4, N'Buku Novel', N'BN')
SET IDENTITY_INSERT [dbo].[tb_jenisBuku] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_pegawai] ON 

INSERT [dbo].[tb_pegawai] ([id], [nama], [alamat], [email], [password], [nomor_telepon], [id_role]) VALUES (1, N'Atha Nabil', N'Cinangsi', N'thalalatha13@gmail.com', N'coolboy021                                                                                                                                                                                                                                                     ', N'085156938759', 1)
INSERT [dbo].[tb_pegawai] ([id], [nama], [alamat], [email], [password], [nomor_telepon], [id_role]) VALUES (2, N'Ronald', N'Cipaku', N'imronald@gmail.com', N'ronald12345                                                                                                                                                                                                                                                    ', N'08361582931 ', 2)
INSERT [dbo].[tb_pegawai] ([id], [nama], [alamat], [email], [password], [nomor_telepon], [id_role]) VALUES (3, N'Tika Siti', N'Rawabadak', N'tikamaisarah@gmail.com', N'tikamaisarah1                                                                                                                                                                                                                                                  ', N'08751526391 ', 3)
SET IDENTITY_INSERT [dbo].[tb_pegawai] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_role] ON 

INSERT [dbo].[tb_role] ([id], [role]) VALUES (1, N'Super Admin')
INSERT [dbo].[tb_role] ([id], [role]) VALUES (2, N'Admin')
INSERT [dbo].[tb_role] ([id], [role]) VALUES (3, N'Kasir')
SET IDENTITY_INSERT [dbo].[tb_role] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tb_buku__AC59245E91BAF5D7]    Script Date: 10/23/2021 5:57:51 PM ******/
ALTER TABLE [dbo].[tb_buku] ADD UNIQUE NONCLUSTERED 
(
	[kode_buku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_buku]  WITH CHECK ADD FOREIGN KEY([id_jenis_buku])
REFERENCES [dbo].[tb_jenisBuku] ([id])
GO
ALTER TABLE [dbo].[tb_pegawai]  WITH CHECK ADD FOREIGN KEY([id_role])
REFERENCES [dbo].[tb_role] ([id])
GO
ALTER TABLE [dbo].[tb_peminjaman]  WITH CHECK ADD FOREIGN KEY([id_pegawai])
REFERENCES [dbo].[tb_pegawai] ([id])
GO
ALTER TABLE [dbo].[tb_peminjaman]  WITH CHECK ADD FOREIGN KEY([kode_buku])
REFERENCES [dbo].[tb_buku] ([kode_buku])
GO
ALTER TABLE [dbo].[tb_pengembalian]  WITH CHECK ADD FOREIGN KEY([kode_peminjaman])
REFERENCES [dbo].[tb_peminjaman] ([kode_peminjaman])
GO
USE [master]
GO
ALTER DATABASE [db_perpustakaan] SET  READ_WRITE 
GO
