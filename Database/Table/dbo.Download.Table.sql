USE [s16guest34]
GO
/****** Object:  Table [dbo].[Download]    Script Date: 5/5/2016 1:35:00 PM ******/
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Join table cross-referencing customers with downloaded releases' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Download'
GO
