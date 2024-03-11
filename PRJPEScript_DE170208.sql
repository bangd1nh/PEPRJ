USE [PRJ301_DE170208]
GO
/****** Object:  Table [dbo].[Product_DE170208]    Script Date: 11/2/2023 2:08:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_DE170208](
	[ProductID] [nvarchar](10) NULL,
	[ProductName] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[inputDate] [date] NULL
) ON [PRIMARY]
GO
