USE [s16guest34]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Version', @level2type=N'COLUMN',@level2name=N'version_num'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'State'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Release'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Release', @level2type=N'COLUMN',@level2name=N'release_num'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Phone_Type'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Phone'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Internal_Version'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Feature'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Download'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Commit'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Address'

GO
/****** Object:  StoredProcedure [dbo].[update_version]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP PROCEDURE [dbo].[update_version]
GO
/****** Object:  StoredProcedure [dbo].[insert_feature]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP PROCEDURE [dbo].[insert_feature]
GO
/****** Object:  StoredProcedure [dbo].[get_requests]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP PROCEDURE [dbo].[get_requests]
GO
/****** Object:  StoredProcedure [dbo].[get_features]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP PROCEDURE [dbo].[get_features]
GO
ALTER TABLE [dbo].[Version_Feature] DROP CONSTRAINT [FK_Version_Feature_Version]
GO
ALTER TABLE [dbo].[Version_Feature] DROP CONSTRAINT [FK_Version_Feature_Feature]
GO
ALTER TABLE [dbo].[Version] DROP CONSTRAINT [FK_Version_Platform]
GO
ALTER TABLE [dbo].[Version] DROP CONSTRAINT [FK_Version_Commit]
GO
ALTER TABLE [dbo].[Release] DROP CONSTRAINT [FK_Release_Version]
GO
ALTER TABLE [dbo].[Release] DROP CONSTRAINT [FK_Release_Type_Release]
GO
ALTER TABLE [dbo].[Phone] DROP CONSTRAINT [FK_Phone_Phone_Type]
GO
ALTER TABLE [dbo].[Phone] DROP CONSTRAINT [FK_Customer_Phone]
GO
ALTER TABLE [dbo].[Internal_Version] DROP CONSTRAINT [FK_Internal_Release_Commit]
GO
ALTER TABLE [dbo].[Download] DROP CONSTRAINT [FK_Download_Release]
GO
ALTER TABLE [dbo].[Download] DROP CONSTRAINT [FK_Download_Customer]
GO
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_Company]
GO
ALTER TABLE [dbo].[Commit] DROP CONSTRAINT [FK_Commit_Product]
GO
ALTER TABLE [dbo].[Commit] DROP CONSTRAINT [FK_Commit_Commit]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [FK_Address_State]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [FK_Address_Country]
GO
ALTER TABLE [dbo].[Address] DROP CONSTRAINT [FK_Address_Company]
GO
/****** Object:  Table [dbo].[Version_Feature]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Version_Feature]
GO
/****** Object:  Table [dbo].[Version]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Version]
GO
/****** Object:  Table [dbo].[State]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[State]
GO
/****** Object:  Table [dbo].[Release_Type]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Release_Type]
GO
/****** Object:  Table [dbo].[Release]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Release]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Platform_Type]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Platform_Type]
GO
/****** Object:  Table [dbo].[Phone_Type]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Phone_Type]
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Phone]
GO
/****** Object:  Table [dbo].[Internal_Version]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Internal_Version]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Feature]
GO
/****** Object:  Table [dbo].[Download]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Download]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Company]
GO
/****** Object:  Table [dbo].[Commit]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Commit]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 5/5/2016 1:51:50 PM ******/
DROP TABLE [dbo].[Address]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[company_id] [int] NOT NULL,
	[address_1] [varchar](30) NULL,
	[address_2] [varchar](20) NULL,
	[city] [varchar](30) NULL,
	[state_id] [int] NULL,
	[post_code] [varchar](12) NULL,
	[country_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Commit]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commit](
	[commit_id] [int] IDENTITY(1,1) NOT NULL,
	[commit_prior_id] [int] NULL,
	[commit_date] [date] NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_Commit] PRIMARY KEY CLUSTERED 
(
	[commit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[company_id] [int] IDENTITY(1,1) NOT NULL,
	[company_name] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[company_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [varchar](60) NOT NULL,
	[country_ISO_code] [char](2) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[company_id] [int] NOT NULL,
	[email] [varchar](254) NOT NULL,
	[first_name] [varchar](15) NOT NULL,
	[last_name] [varchar](30) NOT NULL,
	[password] [varchar](12) NOT NULL,
	[username] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Download]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Download](
	[customer_id] [int] NOT NULL,
	[release_id] [int] NOT NULL,
	[download_datetime] [datetime] NOT NULL,
 CONSTRAINT [PK_Download] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC,
	[release_id] ASC,
	[download_datetime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feature]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feature](
	[feature_id] [int] IDENTITY(1,1) NOT NULL,
	[feature_desc] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Internal_Version]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Internal_Version](
	[commit_id] [int] NOT NULL,
	[version_num] [varchar](20) NOT NULL,
	[release_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Internal_Release] PRIMARY KEY CLUSTERED 
(
	[commit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phone]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone](
	[phone_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[number] [varchar](30) NOT NULL,
	[phone_type_id] [tinyint] NOT NULL,
 CONSTRAINT [PK_Phone] PRIMARY KEY CLUSTERED 
(
	[phone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Phone_Type]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Phone_Type](
	[phone_type_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[phone_type] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Phone_Type] PRIMARY KEY CLUSTERED 
(
	[phone_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Platform_Type]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platform_Type](
	[platform_type_id] [int] IDENTITY(1,1) NOT NULL,
	[platform_type] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Platform_Type] PRIMARY KEY CLUSTERED 
(
	[platform_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [varchar](50) NOT NULL,
	[product_desc] [varchar](150) NOT NULL,
	[source_dir] [varchar](260) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Release]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Release](
	[release_id] [int] IDENTITY(1,1) NOT NULL,
	[release_num] [varchar](20) NOT NULL,
	[release_date] [date] NOT NULL,
	[release_type_id] [int] NOT NULL,
	[is_supported] [bit] NOT NULL,
	[version_id] [int] NOT NULL,
	[download_URL] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Release] PRIMARY KEY CLUSTERED 
(
	[release_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Release_Type]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Release_Type](
	[release_type_id] [int] IDENTITY(1,1) NOT NULL,
	[release_type] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Release_Type] PRIMARY KEY CLUSTERED 
(
	[release_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [varchar](50) NOT NULL,
	[state_code] [char](2) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Version]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Version](
	[version_id] [int] IDENTITY(1,1) NOT NULL,
	[commit_id] [int] NOT NULL,
	[version_num] [varchar](20) NOT NULL,
	[platform_type_id] [int] NOT NULL,
 CONSTRAINT [PK_Version] PRIMARY KEY CLUSTERED 
(
	[version_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Version_Feature]    Script Date: 5/5/2016 1:51:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Version_Feature](
	[version_id] [int] NOT NULL,
	[feature_id] [int] NOT NULL,
	[is_deprecated] [bit] NOT NULL,
 CONSTRAINT [PK_Version_Feature] PRIMARY KEY CLUSTERED 
(
	[version_id] ASC,
	[feature_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Address] ([company_id], [address_1], [address_2], [city], [state_id], [post_code], [country_id]) VALUES (1, N'123 Privet Street', NULL, N'Los Angeles', 5, N'91601', NULL)
INSERT [dbo].[Address] ([company_id], [address_1], [address_2], [city], [state_id], [post_code], [country_id]) VALUES (2, N'348 Jinx Road', NULL, N'London', NULL, NULL, 235)
SET IDENTITY_INSERT [dbo].[Commit] ON 

INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (1, NULL, CAST(N'1999-10-14' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (2, 1, CAST(N'1999-10-28' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (3, 2, CAST(N'1999-11-14' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (4, 3, CAST(N'1999-11-21' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (5, 4, CAST(N'1999-12-04' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (6, 5, CAST(N'1999-12-21' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (7, 6, CAST(N'2000-01-15' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (8, 7, CAST(N'2000-01-29' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (9, 8, CAST(N'2000-02-07' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (10, 9, CAST(N'2000-02-19' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (11, 10, CAST(N'2000-03-10' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (12, 11, CAST(N'2000-03-24' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (13, 12, CAST(N'2000-04-14' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (14, 13, CAST(N'2000-04-29' AS Date), 1)
INSERT [dbo].[Commit] ([commit_id], [commit_prior_id], [commit_date], [product_id]) VALUES (15, 14, CAST(N'2000-05-29' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Commit] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([company_id], [company_name]) VALUES (3, N'99 Store')
INSERT [dbo].[Company] ([company_id], [company_name]) VALUES (1, N'ABC records')
INSERT [dbo].[Company] ([company_id], [company_name]) VALUES (2, N'ZYX Corp')
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (1, N'Afghanistan', N'AF')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (2, N'Åland Islands', N'AX')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (3, N'Albania', N'AL')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (4, N'Algeria', N'DZ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (5, N'American Samoa', N'AS')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (6, N'Andorra', N'AD')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (7, N'Angola', N'AO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (8, N'Anguilla', N'AI')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (9, N'Antarctica', N'AQ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (10, N'Antigua and Barbuda', N'AG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (11, N'Argentina', N'AR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (12, N'Armenia', N'AM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (13, N'Aruba', N'AW')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (14, N'Australia', N'AU')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (15, N'Austria', N'AT')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (16, N'Azerbaijan', N'AZ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (17, N'Bahamas', N'BS')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (18, N'Bahrain', N'BH')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (19, N'Bangladesh', N'BD')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (20, N'Barbados', N'BB')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (21, N'Belarus', N'BY')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (22, N'Belgium', N'BE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (23, N'Belize', N'BZ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (24, N'Benin', N'BJ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (25, N'Bermuda', N'BM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (26, N'Bhutan', N'BT')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (27, N'Bolivia', N'BO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (28, N'Bonaire, Sint Eustatius and Saba', N'BQ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (29, N'Bosnia and Herzegovina', N'BA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (30, N'Botswana', N'BW')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (31, N'Bouvet Island', N'BV')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (32, N'Brazil', N'BR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (33, N'British Indian Ocean Territory', N'IO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (34, N'Brunei Darussalam', N'BN')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (35, N'Bulgaria', N'BG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (36, N'Burkina Faso', N'BF')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (37, N'Burundi', N'BI')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (38, N'Cabo Verde', N'CV')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (39, N'Cambodia', N'KH')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (40, N'Cameroon', N'CM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (41, N'Canada', N'CA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (42, N'Cayman Islands', N'KY')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (43, N'Central African Republic', N'CF')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (44, N'Chad', N'TD')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (45, N'Chile', N'CL')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (46, N'China', N'CN')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (47, N'Christmas Island', N'CX')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (48, N'Cocos (Keeling) Islands', N'CC')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (49, N'Colombia', N'CO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (50, N'Comoros', N'KM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (51, N'Congo (the Democratic Republic of the)', N'CD')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (52, N'Congo', N'CG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (53, N'Cook Islands', N'CK')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (54, N'Costa Rica', N'CR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (55, N'Côte d''Ivoire', N'CI')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (56, N'Croatia', N'HR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (57, N'Cuba', N'CU')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (58, N'Curaçao', N'CW')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (59, N'Cyprus', N'CY')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (60, N'Czech Republic', N'CZ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (61, N'Denmark', N'DK')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (62, N'Djibouti', N'DJ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (63, N'Dominica', N'DM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (64, N'Dominican Republic', N'DO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (65, N'Ecuador', N'EC')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (66, N'Egypt', N'EG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (67, N'El Salvador', N'SV')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (68, N'Equatorial Guinea', N'GQ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (69, N'Eritrea', N'ER')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (70, N'Estonia', N'EE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (71, N'Ethiopia', N'ET')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (72, N'Falkland Islands', N'FK')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (73, N'Faroe Islands', N'FO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (74, N'Fiji', N'FJ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (75, N'Finland', N'FI')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (76, N'France', N'FR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (77, N'French Guiana', N'GF')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (78, N'French Polynesia', N'PF')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (79, N'French Southern Territories', N'TF')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (80, N'Gabon', N'GA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (81, N'Gambia', N'GM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (82, N'Georgia', N'GE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (83, N'Germany', N'DE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (84, N'Ghana', N'GH')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (85, N'Gibraltar', N'GI')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (86, N'Greece', N'GR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (87, N'Greenland', N'GL')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (88, N'Grenada', N'GD')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (89, N'Guadeloupe', N'GP')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (90, N'Guam', N'GU')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (91, N'Guatemala', N'GT')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (92, N'Guernsey', N'GG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (93, N'Guinea', N'GN')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (94, N'Guinea-Bissau', N'GW')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (95, N'Guyana', N'GY')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (96, N'Haiti', N'HT')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (97, N'Heard Island and McDonald Islands', N'HM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (98, N'Holy See', N'VA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (99, N'Honduras', N'HN')
GO
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (100, N'Hong Kong', N'HK')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (101, N'Hungary', N'HU')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (102, N'Iceland', N'IS')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (103, N'India', N'IN')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (104, N'Indonesia', N'ID')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (105, N'Iran', N'IR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (106, N'Iraq', N'IQ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (107, N'Ireland', N'IE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (108, N'Isle of Man', N'IM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (109, N'Israel', N'IL')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (110, N'Italy', N'IT')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (111, N'Jamaica', N'JM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (112, N'Japan', N'JP')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (113, N'Jersey', N'JE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (114, N'Jordan', N'JO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (115, N'Kazakhstan', N'KZ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (116, N'Kenya', N'KE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (117, N'Kiribati', N'KI')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (118, N'Korea (the Democratic People''s Republic of)', N'KP')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (119, N'Korea (the Republic of)', N'KR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (120, N'Kuwait', N'KW')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (121, N'Kyrgyzstan', N'KG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (122, N'Lao People''s Democratic Republic', N'LA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (123, N'Latvia', N'LV')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (124, N'Lebanon', N'LB')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (125, N'Lesotho', N'LS')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (126, N'Liberia', N'LR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (127, N'Libya', N'LY')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (128, N'Liechtenstein', N'LI')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (129, N'Lithuania', N'LT')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (130, N'Luxembourg', N'LU')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (131, N'Macao', N'MO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (132, N'Macedonia', N'MK')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (133, N'Madagascar', N'MG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (134, N'Malawi', N'MW')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (135, N'Malaysia', N'MY')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (136, N'Maldives', N'MV')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (137, N'Mali', N'ML')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (138, N'Malta', N'MT')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (139, N'Marshall Islands', N'MH')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (140, N'Martinique', N'MQ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (141, N'Mauritania', N'MR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (142, N'Mauritius', N'MU')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (143, N'Mayotte', N'YT')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (144, N'Mexico', N'MX')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (145, N'Micronesia', N'FM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (146, N'Moldova', N'MD')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (147, N'Monaco', N'MC')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (148, N'Mongolia', N'MN')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (149, N'Montenegro', N'ME')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (150, N'Montserrat', N'MS')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (151, N'Morocco', N'MA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (152, N'Mozambique', N'MZ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (153, N'Myanmar', N'MM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (154, N'Namibia', N'NA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (155, N'Nauru', N'NR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (156, N'Nepal', N'NP')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (157, N'Netherlands', N'NL')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (158, N'New Caledonia', N'NC')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (159, N'New Zealand', N'NZ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (160, N'Nicaragua', N'NI')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (161, N'Niger', N'NE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (162, N'Nigeria', N'NG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (163, N'Niue', N'NU')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (164, N'Norfolk Island', N'NF')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (165, N'Northern Mariana Islands', N'MP')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (166, N'Norway', N'NO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (167, N'Oman', N'OM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (168, N'Pakistan', N'PK')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (169, N'Palau', N'PW')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (170, N'Palestine, State of', N'PS')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (171, N'Panama', N'PA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (172, N'Papua New Guinea', N'PG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (173, N'Paraguay', N'PY')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (174, N'Peru', N'PE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (175, N'Philippines', N'PH')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (176, N'Pitcairn', N'PN')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (177, N'Poland', N'PL')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (178, N'Portugal', N'PT')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (179, N'Puerto Rico', N'PR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (180, N'Qatar', N'QA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (181, N'Réunion', N'RE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (182, N'Romania', N'RO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (183, N'Russian Federation', N'RU')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (184, N'Rwanda', N'RW')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (185, N'Saint Barthélemy', N'BL')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (186, N'Saint Helena, Ascension and Tristan da Cunha', N'SH')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (187, N'Saint Kitts and Nevis', N'KN')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (188, N'Saint Lucia', N'LC')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (189, N'Saint Martin', N'MF')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (190, N'Saint Pierre and Miquelon', N'PM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (191, N'Saint Vincent and the Grenadines', N'VC')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (192, N'Samoa', N'WS')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (193, N'San Marino', N'SM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (194, N'Sao Tome and Principe', N'ST')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (195, N'Saudi Arabia', N'SA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (196, N'Senegal', N'SN')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (197, N'Serbia', N'RS')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (198, N'Seychelles', N'SC')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (199, N'Sierra Leone', N'SL')
GO
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (200, N'Singapore', N'SG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (201, N'Sint Maarten', N'SX')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (202, N'Slovakia', N'SK')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (203, N'Slovenia', N'SI')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (204, N'Solomon Islands', N'SB')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (205, N'Somalia', N'SO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (206, N'South Africa', N'ZA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (207, N'South Georgia and the South Sandwich Islands', N'GS')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (208, N'South Sudan', N'SS')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (209, N'Spain', N'ES')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (210, N'Sri Lanka', N'LK')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (211, N'Sudan', N'SD')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (212, N'Suriname', N'SR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (213, N'Svalbard and Jan Mayen', N'SJ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (214, N'Swaziland', N'SZ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (215, N'Sweden', N'SE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (216, N'Switzerland', N'CH')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (217, N'Syrian Arab Republic', N'SY')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (218, N'Taiwan (Province of China)', N'TW')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (219, N'Tajikistan', N'TJ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (220, N'Tanzania, United Republic of', N'TZ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (221, N'Thailand', N'TH')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (222, N'Timor-Leste', N'TL')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (223, N'Togo', N'TG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (224, N'Tokelau', N'TK')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (225, N'Tonga', N'TO')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (226, N'Trinidad and Tobago', N'TT')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (227, N'Tunisia', N'TN')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (228, N'Turkey', N'TR')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (229, N'Turkmenistan', N'TM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (230, N'Turks and Caicos Islands', N'TC')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (231, N'Tuvalu', N'TV')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (232, N'Uganda', N'UG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (233, N'Ukraine', N'UA')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (234, N'United Arab Emirates', N'AE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (235, N'United Kingdom of Great Britain and Northern Ireland', N'GB')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (236, N'United States Minor Outlying Islands', N'UM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (237, N'United States of America', N'US')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (238, N'Uruguay', N'UY')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (239, N'Uzbekistan', N'UZ')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (240, N'Vanuatu', N'VU')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (241, N'Venezuela (Bolivarian Republic of)', N'VE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (242, N'Viet Nam', N'VN')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (243, N'Virgin Islands (British)', N'VG')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (244, N'Virgin Islands (U.S.)', N'VI')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (245, N'Wallis and Futuna', N'WF')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (246, N'Western Sahara', N'EH')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (247, N'Yemen', N'YE')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (248, N'Zambia', N'ZM')
INSERT [dbo].[Country] ([country_id], [country_name], [country_ISO_code]) VALUES (249, N'Zimbabwe', N'ZW')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([customer_id], [company_id], [email], [first_name], [last_name], [password], [username]) VALUES (1, 1, N'p.smith@abc.com', N'Peter', N'Smith', N'fnord1234', N'psmith21')
INSERT [dbo].[Customer] ([customer_id], [company_id], [email], [first_name], [last_name], [password], [username]) VALUES (2, 2, N'maria@zyx.com', N'Maria', N'Bounte', N'shark3y', N'mariadia')
INSERT [dbo].[Customer] ([customer_id], [company_id], [email], [first_name], [last_name], [password], [username]) VALUES (3, 3, N'david.sommerset@99cents.store', N'David', N'Sommerset', N'7811dfg', N'sommersetd')
INSERT [dbo].[Customer] ([customer_id], [company_id], [email], [first_name], [last_name], [password], [username]) VALUES (4, 3, N'maria.bounte@99cents.store', N'Maria', N'Bounte', N'horse_76!!', N'diamaria')
SET IDENTITY_INSERT [dbo].[Customer] OFF
INSERT [dbo].[Download] ([customer_id], [release_id], [download_datetime]) VALUES (1, 2, CAST(N'2000-05-12T07:07:12.000' AS DateTime))
INSERT [dbo].[Download] ([customer_id], [release_id], [download_datetime]) VALUES (1, 3, CAST(N'2000-06-01T19:09:07.000' AS DateTime))
INSERT [dbo].[Download] ([customer_id], [release_id], [download_datetime]) VALUES (2, 1, CAST(N'2000-05-11T00:08:07.000' AS DateTime))
INSERT [dbo].[Download] ([customer_id], [release_id], [download_datetime]) VALUES (2, 3, CAST(N'2000-03-01T07:18:15.000' AS DateTime))
INSERT [dbo].[Download] ([customer_id], [release_id], [download_datetime]) VALUES (2, 5, CAST(N'2000-09-05T10:11:12.000' AS DateTime))
INSERT [dbo].[Download] ([customer_id], [release_id], [download_datetime]) VALUES (3, 1, CAST(N'2000-08-08T14:21:17.000' AS DateTime))
INSERT [dbo].[Download] ([customer_id], [release_id], [download_datetime]) VALUES (3, 3, CAST(N'2000-06-06T03:12:12.000' AS DateTime))
INSERT [dbo].[Download] ([customer_id], [release_id], [download_datetime]) VALUES (3, 5, CAST(N'2000-07-01T01:51:45.000' AS DateTime))
INSERT [dbo].[Download] ([customer_id], [release_id], [download_datetime]) VALUES (4, 4, CAST(N'2000-09-01T16:20:13.000' AS DateTime))
INSERT [dbo].[Download] ([customer_id], [release_id], [download_datetime]) VALUES (4, 5, CAST(N'2000-09-01T15:19:46.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feature] ON 

INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (6, N'address verification')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (15, N'encryption menu')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (12, N'HIPAA compliance checklist')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (1, N'login module')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (7, N'patient authentication')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (9, N'patient e-bill')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (8, N'patient medication form')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (3, N'patient profile')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (2, N'patient registration')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (4, N'patient release form')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (10, N'patient reporting')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (11, N'patient reporting bug fix')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (5, N'physician profile')
INSERT [dbo].[Feature] ([feature_id], [feature_desc]) VALUES (16, N'private key generation')
SET IDENTITY_INSERT [dbo].[Feature] OFF
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (1, N'1.0', CAST(N'1999-10-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (2, N'1.0', CAST(N'1999-10-28T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (3, N'1.0', CAST(N'1999-11-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (4, N'1.0', CAST(N'1999-11-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (5, N'1.0', CAST(N'1999-12-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (7, N'2.0', CAST(N'2000-01-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (8, N'2.0', CAST(N'2000-01-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (9, N'2.0', CAST(N'2000-02-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (10, N'2.0', CAST(N'2000-02-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (11, N'2.0', CAST(N'2000-03-10T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (12, N'2.0', CAST(N'2000-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Internal_Version] ([commit_id], [version_num], [release_date]) VALUES (13, N'2.0', CAST(N'2000-04-14T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Phone] ON 

INSERT [dbo].[Phone] ([phone_id], [customer_id], [number], [phone_type_id]) VALUES (1, 1, N'123-485-8973', 1)
INSERT [dbo].[Phone] ([phone_id], [customer_id], [number], [phone_type_id]) VALUES (2, 2, N'1-28-397863896', 1)
INSERT [dbo].[Phone] ([phone_id], [customer_id], [number], [phone_type_id]) VALUES (3, 3, N'179-397-87968', 2)
INSERT [dbo].[Phone] ([phone_id], [customer_id], [number], [phone_type_id]) VALUES (4, 4, N'178-763-98764', 2)
SET IDENTITY_INSERT [dbo].[Phone] OFF
SET IDENTITY_INSERT [dbo].[Phone_Type] ON 

INSERT [dbo].[Phone_Type] ([phone_type_id], [phone_type]) VALUES (3, N'home')
INSERT [dbo].[Phone_Type] ([phone_type_id], [phone_type]) VALUES (2, N'mobile')
INSERT [dbo].[Phone_Type] ([phone_type_id], [phone_type]) VALUES (1, N'work')
SET IDENTITY_INSERT [dbo].[Phone_Type] OFF
SET IDENTITY_INSERT [dbo].[Platform_Type] ON 

INSERT [dbo].[Platform_Type] ([platform_type_id], [platform_type]) VALUES (2, N'Linux')
INSERT [dbo].[Platform_Type] ([platform_type_id], [platform_type]) VALUES (1, N'Windows')
SET IDENTITY_INSERT [dbo].[Platform_Type] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [product_name], [product_desc], [source_dir]) VALUES (1, N'EHR System', N'health records system for the patients', N'/development')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Release] ON 

INSERT [dbo].[Release] ([release_id], [release_num], [release_date], [release_type_id], [is_supported], [version_id], [download_URL]) VALUES (1, N'1.1', CAST(N'2000-01-01' AS Date), 1, 1, 1, N'/1.1/1.1')
INSERT [dbo].[Release] ([release_id], [release_num], [release_date], [release_type_id], [is_supported], [version_id], [download_URL]) VALUES (2, N'1.1', CAST(N'2000-01-01' AS Date), 1, 1, 2, N'/1.2/1.1')
INSERT [dbo].[Release] ([release_id], [release_num], [release_date], [release_type_id], [is_supported], [version_id], [download_URL]) VALUES (3, N'2.1', CAST(N'2000-05-01' AS Date), 2, 1, 3, N'/2.1/2.1')
INSERT [dbo].[Release] ([release_id], [release_num], [release_date], [release_type_id], [is_supported], [version_id], [download_URL]) VALUES (4, N'2.1', CAST(N'2000-05-01' AS Date), 2, 1, 4, N'/2.2/2.1')
INSERT [dbo].[Release] ([release_id], [release_num], [release_date], [release_type_id], [is_supported], [version_id], [download_URL]) VALUES (5, N'2.2', CAST(N'2000-06-13' AS Date), 3, 1, 5, N'/2.2/2.2')
SET IDENTITY_INSERT [dbo].[Release] OFF
SET IDENTITY_INSERT [dbo].[Release_Type] ON 

INSERT [dbo].[Release_Type] ([release_type_id], [release_type]) VALUES (3, N'bug-fix release')
INSERT [dbo].[Release_Type] ([release_type_id], [release_type]) VALUES (2, N'new features release')
INSERT [dbo].[Release_Type] ([release_type_id], [release_type]) VALUES (1, N'new product release')
SET IDENTITY_INSERT [dbo].[Release_Type] OFF
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (1, N'Alabama', N'AL')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (2, N'Alaska', N'AK')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (3, N'Arizona', N'AZ')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (4, N'Arkansas', N'AR')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (5, N'California', N'CA')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (6, N'Colorado', N'CO')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (7, N'Connecticut', N'CT')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (8, N'Delaware', N'DE')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (9, N'District of Columbia', N'DC')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (10, N'Florida', N'FL')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (11, N'Georgia', N'GA')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (12, N'Hawaii', N'HI')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (13, N'Idaho', N'ID')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (14, N'Illinois', N'IL')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (15, N'Indiana', N'IN')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (16, N'Iowa', N'IA')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (17, N'Kansas', N'KS')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (18, N'Kentucky', N'KY')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (19, N'Louisiana', N'LA')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (20, N'Maine', N'ME')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (21, N'Montana', N'MT')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (22, N'Nebraska', N'NE')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (23, N'Nevada', N'NV')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (24, N'New Hampshire', N'NH')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (25, N'New Jersey', N'NJ')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (26, N'New Mexico', N'NM')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (27, N'New York', N'NY')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (28, N'North Carolina', N'NC')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (29, N'North Dakota', N'ND')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (30, N'Ohio', N'OH')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (31, N'Oklahoma', N'OK')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (32, N'Oregon', N'OR')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (33, N'Maryland', N'MD')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (34, N'Massachusetts', N'MA')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (35, N'Michigan', N'MI')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (36, N'Minnesota', N'MN')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (37, N'Mississippi', N'MS')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (38, N'Missouri', N'MO')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (39, N'Pennsylvania', N'PA')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (40, N'Rhode Island', N'RI')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (41, N'South Carolina', N'SC')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (42, N'South Dakota', N'SD')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (43, N'Tennessee', N'TN')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (44, N'Texas', N'TX')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (45, N'Utah', N'UT')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (46, N'Vermont', N'VT')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (47, N'Virginia', N'VA')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (48, N'Washington', N'WA')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (49, N'West Virginia', N'WV')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (50, N'Wisconsin', N'WI')
INSERT [dbo].[State] ([state_id], [state_name], [state_code]) VALUES (51, N'Wyoming', N'WY')
SET IDENTITY_INSERT [dbo].[State] OFF
SET IDENTITY_INSERT [dbo].[Version] ON 

INSERT [dbo].[Version] ([version_id], [commit_id], [version_num], [platform_type_id]) VALUES (1, 6, N'1.1', 1)
INSERT [dbo].[Version] ([version_id], [commit_id], [version_num], [platform_type_id]) VALUES (2, 6, N'1.2', 2)
INSERT [dbo].[Version] ([version_id], [commit_id], [version_num], [platform_type_id]) VALUES (3, 14, N'2.1', 1)
INSERT [dbo].[Version] ([version_id], [commit_id], [version_num], [platform_type_id]) VALUES (4, 14, N'2.2', 2)
INSERT [dbo].[Version] ([version_id], [commit_id], [version_num], [platform_type_id]) VALUES (5, 15, N'2.2', 2)
SET IDENTITY_INSERT [dbo].[Version] OFF
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (1, 1, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (1, 2, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (1, 3, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (1, 4, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (1, 5, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (1, 6, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (2, 1, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (2, 2, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (2, 3, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (2, 4, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (2, 5, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (2, 6, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (3, 7, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (3, 8, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (3, 9, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (3, 10, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (4, 7, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (4, 8, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (4, 9, 0)
INSERT [dbo].[Version_Feature] ([version_id], [feature_id], [is_deprecated]) VALUES (4, 10, 0)
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Company] FOREIGN KEY([company_id])
REFERENCES [dbo].[Company] ([company_id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Company]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([country_id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Country]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_State] FOREIGN KEY([state_id])
REFERENCES [dbo].[State] ([state_id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_State]
GO
ALTER TABLE [dbo].[Commit]  WITH CHECK ADD  CONSTRAINT [FK_Commit_Commit] FOREIGN KEY([commit_prior_id])
REFERENCES [dbo].[Commit] ([commit_id])
GO
ALTER TABLE [dbo].[Commit] CHECK CONSTRAINT [FK_Commit_Commit]
GO
ALTER TABLE [dbo].[Commit]  WITH CHECK ADD  CONSTRAINT [FK_Commit_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Commit] CHECK CONSTRAINT [FK_Commit_Product]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Company] FOREIGN KEY([company_id])
REFERENCES [dbo].[Company] ([company_id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Company]
GO
ALTER TABLE [dbo].[Download]  WITH CHECK ADD  CONSTRAINT [FK_Download_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([customer_id])
GO
ALTER TABLE [dbo].[Download] CHECK CONSTRAINT [FK_Download_Customer]
GO
ALTER TABLE [dbo].[Download]  WITH CHECK ADD  CONSTRAINT [FK_Download_Release] FOREIGN KEY([release_id])
REFERENCES [dbo].[Release] ([release_id])
GO
ALTER TABLE [dbo].[Download] CHECK CONSTRAINT [FK_Download_Release]
GO
ALTER TABLE [dbo].[Internal_Version]  WITH CHECK ADD  CONSTRAINT [FK_Internal_Release_Commit] FOREIGN KEY([commit_id])
REFERENCES [dbo].[Commit] ([commit_id])
GO
ALTER TABLE [dbo].[Internal_Version] CHECK CONSTRAINT [FK_Internal_Release_Commit]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Phone] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([customer_id])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Customer_Phone]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK_Phone_Phone_Type] FOREIGN KEY([phone_type_id])
REFERENCES [dbo].[Phone_Type] ([phone_type_id])
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK_Phone_Phone_Type]
GO
ALTER TABLE [dbo].[Release]  WITH CHECK ADD  CONSTRAINT [FK_Release_Type_Release] FOREIGN KEY([release_type_id])
REFERENCES [dbo].[Release_Type] ([release_type_id])
GO
ALTER TABLE [dbo].[Release] CHECK CONSTRAINT [FK_Release_Type_Release]
GO
ALTER TABLE [dbo].[Release]  WITH CHECK ADD  CONSTRAINT [FK_Release_Version] FOREIGN KEY([version_id])
REFERENCES [dbo].[Version] ([version_id])
GO
ALTER TABLE [dbo].[Release] CHECK CONSTRAINT [FK_Release_Version]
GO
ALTER TABLE [dbo].[Version]  WITH CHECK ADD  CONSTRAINT [FK_Version_Commit] FOREIGN KEY([commit_id])
REFERENCES [dbo].[Commit] ([commit_id])
GO
ALTER TABLE [dbo].[Version] CHECK CONSTRAINT [FK_Version_Commit]
GO
ALTER TABLE [dbo].[Version]  WITH CHECK ADD  CONSTRAINT [FK_Version_Platform] FOREIGN KEY([platform_type_id])
REFERENCES [dbo].[Platform_Type] ([platform_type_id])
GO
ALTER TABLE [dbo].[Version] CHECK CONSTRAINT [FK_Version_Platform]
GO
ALTER TABLE [dbo].[Version_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Version_Feature_Feature] FOREIGN KEY([feature_id])
REFERENCES [dbo].[Feature] ([feature_id])
GO
ALTER TABLE [dbo].[Version_Feature] CHECK CONSTRAINT [FK_Version_Feature_Feature]
GO
ALTER TABLE [dbo].[Version_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Version_Feature_Version] FOREIGN KEY([version_id])
REFERENCES [dbo].[Version] ([version_id])
GO
ALTER TABLE [dbo].[Version_Feature] CHECK CONSTRAINT [FK_Version_Feature_Version]
GO
/****** Object:  StoredProcedure [dbo].[get_features]    Script Date: 5/5/2016 1:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Benjamin Plotkin
-- Create date: 2016-05-04
-- Description:	New features counter
-- =============================================
CREATE PROCEDURE [dbo].[get_features] 
	-- Takes release number string as search parameter
	@release_num varchar(20) = NULL

AS
BEGIN
	DECLARE @feature_count INT = 0;
	DECLARE @version_id INT = NULL;

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- try to get a count of version features related to release number
	BEGIN TRY
		-- if release doesn't exist, alert user
		IF NOT EXISTS(SELECT release_num FROM Release WHERE release_num = @release_num)
		BEGIN
			SELECT('Please enter a valid Release Number!') AS 'Message'
		END
		ELSE
		BEGIN
			SET @version_id = (SELECT TOP 1 version_id
				FROM [dbo].[Release]
				WHERE [dbo].[Release].release_num = @release_num)
			
			-- get count of features in release version, if any
			SET @feature_count = (SELECT COUNT(v1.feature_id)
				FROM [dbo].[Version_Feature] v1
				WHERE v1.version_id = @version_id)

			-- if we find any features, show their count	
			IF @feature_count > 0
			BEGIN
				SELECT(CONVERT(VARCHAR(10), @feature_count) + ' features are in the '
				+ @release_num + ' release.') AS 'Message'
			END
			ELSE -- otherwise, it's a bug-fix release
			BEGIN
				SELECT('It is a bug-fix release. There are no new features.') AS 'Message'
			END
		END
	END TRY

	-- catch any errors
	BEGIN CATCH
		DECLARE @err_num INT = ERROR_NUMBER();
		DECLARE @err_msg NVARCHAR(4000) = ERROR_MESSAGE();
		DECLARE @err_sev INT = ERROR_SEVERITY();
		DECLARE @err_state INT = ERROR_STATE();
		PRINT 'Error number: ' + CAST(@err_num AS VARCHAR(10));
		RAISERROR(@err_msg, @err_sev, @err_state);
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[get_requests]    Script Date: 5/5/2016 1:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Benjamin Plotkin
-- Create date: 2016-05-04
-- Description:	Product Request (Downloads) Form
-- =============================================
CREATE PROCEDURE [dbo].[get_requests] 

-- no parameters, this runs for all downloads (unsure as to
-- what specifications were requesting here)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Execute our query (again, no params needed, this is a global / "all time" report)
	BEGIN TRY
		SELECT p1.product_name AS 'Product', v1.version_num AS 'Version', DATENAME(MONTH, download_datetime) 
			AS 'Month', COUNT(download_datetime) AS 'Count'

		FROM [dbo].[Download] d1, [dbo].[Release] r1, [dbo].[Version] v1, [dbo].[Commit] c1, 
			[dbo].[Product] p1

		WHERE d1.release_id = r1.release_id AND
			r1.version_id = v1.version_id AND
			v1.commit_id = c1.commit_id AND
			c1.product_id = p1.product_id

		GROUP BY p1.product_id, v1.version_num, DATENAME(MONTH, download_datetime), p1.product_name
	END TRY

	-- If we catch an error on above query, throw detailed error message
	BEGIN CATCH
		DECLARE @err_num INT = ERROR_NUMBER();
		DECLARE @err_msg NVARCHAR(4000) = ERROR_MESSAGE();
		DECLARE @err_sev INT = ERROR_SEVERITY();
		DECLARE @err_state INT = ERROR_STATE();
		PRINT 'Error number: ' + CAST(@err_num AS VARCHAR(10));
		RAISERROR(@err_msg, @err_sev, @err_state);
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[insert_feature]    Script Date: 5/5/2016 1:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Benjamin Plotkin
-- Create date: 2016-05-04
-- Description:	Insert feature description record into Feature table
-- =============================================
CREATE PROCEDURE [dbo].[insert_feature] 
	-- String parameter holding the new feature description text
	@feature_desc VARCHAR(MAX) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Try to insert new feature description text
	BEGIN TRY
		INSERT INTO Feature
		VALUES	(@feature_desc);
		SELECT 'Feature added.';
	END TRY
	
	-- If we catch an error on above insert (like if description was left NULL)
	-- throw detailed error message
	BEGIN CATCH
		DECLARE @err_num INT = ERROR_NUMBER();
		DECLARE @err_msg NVARCHAR(4000) = ERROR_MESSAGE();
		DECLARE @err_sev INT = ERROR_SEVERITY();
		DECLARE @err_state INT = ERROR_STATE();
		PRINT 'Error number: ' + CAST(@err_num AS VARCHAR(10));
		RAISERROR(@err_msg, @err_sev, @err_state);
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[update_version]    Script Date: 5/5/2016 1:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Benjamin Plotkin
-- Create date: 2016-05-04
-- Description:	Update version number in Version table
-- =============================================
CREATE PROCEDURE [dbo].[update_version]
	-- Parameters include integer ID for specific Product,
	-- string for version number to update, and string for
	-- new version number to push
	@product_id INT,
	@version_num VARCHAR(20),
	@new_version_num VARCHAR(20)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- make sure our parameters actually find something
	IF EXISTS (
		SELECT *
		FROM [Version] t1
		INNER JOIN [Commit] t2 ON t1.commit_id = t2.commit_id
		WHERE t2.product_id = @product_id AND 
			version_num = @version_num
		)
		-- if found, try to update found set
		BEGIN TRY
			UPDATE [Version]
			SET version_num = @new_version_num
				FROM [Version] t1
				INNER JOIN [Commit] t2 ON t1.commit_id = t2.commit_id
				WHERE t2.product_id = @product_id AND 
					version_num = @version_num
			SELECT 'Updated ' + @version_num + ' to ' + @new_version_num AS 'Message'
		END TRY

		-- catch any errors
		BEGIN CATCH
			DECLARE @err_num INT = ERROR_NUMBER();
			DECLARE @err_msg NVARCHAR(4000) = ERROR_MESSAGE();
			DECLARE @err_sev INT = ERROR_SEVERITY();
			DECLARE @err_state INT = ERROR_STATE();
			PRINT 'Error number: ' + CAST(@err_num AS VARCHAR(10));
			RAISERROR(@err_msg, @err_sev, @err_state);
		END CATCH

	ELSE -- we didn't find anything, raise a general error alert
		BEGIN
			RAISERROR('Product Version not found; canceling update.', 11,1)
		END
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holds Company address data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holds our code commit info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Commit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holds country names for address picker' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holds our customer (individual) data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Join table cross-referencing customers with downloaded releases' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Download'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holds overall list of possible software features' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Feature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holds internal (non-customer) software release data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Internal_Version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Customer phone data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Stores data for phone type pick list' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Phone_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holds our software products' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Human-readable, separate from ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Release', @level2type=N'COLUMN',@level2name=N'release_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to hold customer software release data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Release'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holds state values for picker' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Human-readable, separate from ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Version', @level2type=N'COLUMN',@level2name=N'version_num'
GO
