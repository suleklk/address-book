USE [ProjectDB]
GO
/****** Object:  Table [dbo].[personalInfo_Tab]    Script Date: 7.11.2021 00:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personalInfo_Tab](
	[fullName] [nvarchar](50) NOT NULL,
	[pnumber] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[district] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[fullAddress] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[personalInfo_Tab] ([fullName], [pnumber], [email], [city], [district], [address], [fullAddress]) VALUES (N'fsdk', 65555, N'vsvv', N'ankar', N'aşti', N'kkkkkkkkkk', N'kkkkkkkkkkaştiankar')
INSERT [dbo].[personalInfo_Tab] ([fullName], [pnumber], [email], [city], [district], [address], [fullAddress]) VALUES (N'sule kelek', 555555, N'sdjasdhakj', N'tekirdağ', N'saray', N'pazarcık mah ', N'pazarcık mah saraytekirdağ')
INSERT [dbo].[personalInfo_Tab] ([fullName], [pnumber], [email], [city], [district], [address], [fullAddress]) VALUES (N'schs', 1111, N'jdskf', N'jsdfhj', N'hsjdkfhs', N'hsdjghsk', N'hsdjghskhsjdkfhsjsdfhj')
GO
