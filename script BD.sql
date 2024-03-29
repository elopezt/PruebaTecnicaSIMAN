USE [master]
GO
/****** Object:  Database [Brazilian E-Commerce ]    Script Date: 18/1/2024 02:41:09 ******/
CREATE DATABASE [Brazilian E-Commerce ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Brazilian E-Commerce', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Brazilian E-Commerce .mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Brazilian E-Commerce _log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Brazilian E-Commerce _log.ldf' , SIZE = 401408KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Brazilian E-Commerce ] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Brazilian E-Commerce ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Brazilian E-Commerce ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET RECOVERY FULL 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET  MULTI_USER 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Brazilian E-Commerce ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Brazilian E-Commerce ] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Brazilian E-Commerce ', N'ON'
GO
ALTER DATABASE [Brazilian E-Commerce ] SET QUERY_STORE = ON
GO
ALTER DATABASE [Brazilian E-Commerce ] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Brazilian E-Commerce ]
GO
/****** Object:  Table [dbo].[CUSTOMERS]    Script Date: 18/1/2024 02:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMERS](
	[customer_id] [varchar](50) NOT NULL,
	[customer_unique_id] [varchar](50) NULL,
	[customer_zip_code_prefix] [varchar](50) NULL,
	[customer_city] [varchar](50) NULL,
	[customer_state] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_ITEMS]    Script Date: 18/1/2024 02:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_ITEMS](
	[order_id] [varchar](50) NOT NULL,
	[order_item_id] [varchar](50) NULL,
	[product_id] [varchar](50) NULL,
	[seller_id] [varchar](50) NULL,
	[shipping_limit_date] [datetime2](7) NULL,
	[price] [float] NULL,
	[freight_value] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 18/1/2024 02:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS](
	[order_id] [varchar](225) NOT NULL,
	[customer_id] [varchar](225) NULL,
	[order_status] [varchar](50) NULL,
	[order_purchase_timestamp] [datetime2](7) NULL,
	[order_approved_at] [datetime2](7) NULL,
	[order_delivered_carrier_date] [datetime2](7) NULL,
	[order_delivered_customer_date] [datetime2](7) NULL,
	[order_estimated_delivery_date] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Brazilian E-Commerce ] SET  READ_WRITE 
GO
