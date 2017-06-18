USE [bzloans]
GO
/****** Object:  Schema [darwin]    Script Date: 6/18/2017 9:42:18 PM ******/
CREATE SCHEMA [darwin]
GO
/****** Object:  Schema [main]    Script Date: 6/18/2017 9:42:18 PM ******/
CREATE SCHEMA [main]
GO
/****** Object:  Table [main].[approved_loans]    Script Date: 6/18/2017 9:42:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[approved_loans](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_approved] [date] NULL,
	[approved_by] [int] NULL,
	[application_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[branches]    Script Date: 6/18/2017 9:42:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[branches](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[customer_profile]    Script Date: 6/18/2017 9:42:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[customer_profile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[middle_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[birthdate] [date] NULL,
	[title] [nvarchar](50) NULL,
 CONSTRAINT [PK_members] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[customers]    Script Date: 6/18/2017 9:42:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profile_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[loan_applications]    Script Date: 6/18/2017 9:42:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[loan_applications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[application_no] [int] NULL,
	[customer_id] [int] NULL,
	[status] [nvarchar](50) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[schedule_of_payments]    Script Date: 6/18/2017 9:42:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[schedule_of_payments](
	[id] [int] NULL,
	[customer_id] [int] NULL,
	[branch_id] [int] NULL,
	[application_id] [int] NULL,
	[payment_date] [date] NULL,
	[item_name] [nvarchar](50) NULL,
	[item_value] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[staffs]    Script Date: 6/18/2017 9:42:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[staffs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[branch_id] [int] NULL,
	[role] [nvarchar](50) NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'constains the profile information about your customers' , @level0type=N'SCHEMA',@level0name=N'main', @level1type=N'TABLE',@level1name=N'customer_profile'
GO
