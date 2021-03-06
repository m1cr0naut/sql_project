USE [s16guest34]
GO
/****** Object:  Table [dbo].[Release]    Script Date: 5/5/2016 1:35:00 PM ******/
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Human-readable, separate from ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Release', @level2type=N'COLUMN',@level2name=N'release_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to hold customer software release data' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Release'
GO
