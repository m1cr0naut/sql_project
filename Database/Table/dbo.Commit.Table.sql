USE [s16guest34]
GO
/****** Object:  Table [dbo].[Commit]    Script Date: 5/5/2016 1:35:00 PM ******/
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Holds our code commit info' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Commit'
GO
