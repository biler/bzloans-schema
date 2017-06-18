USE [bzloans]
GO
/****** Object:  User [main]    Script Date: 6/18/2017 4:52:35 PM ******/
CREATE USER [main] FOR LOGIN [main] WITH DEFAULT_SCHEMA=[main]
GO
ALTER ROLE [db_owner] ADD MEMBER [main]
GO
/****** Object:  Schema [main]    Script Date: 6/18/2017 4:52:35 PM ******/
CREATE SCHEMA [main]
GO
/****** Object:  Table [main].[customer_profile]    Script Date: 6/18/2017 4:52:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[customer_profile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nchar](10) NULL,
	[middle_name] [nchar](10) NULL,
	[last_name] [nchar](10) NULL,
	[birthdate] [date] NULL,
	[title] [nchar](10) NULL,
 CONSTRAINT [PK_members] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'constains the profile information about your customers' , @level0type=N'SCHEMA',@level0name=N'main', @level1type=N'TABLE',@level1name=N'customer_profile'
GO
