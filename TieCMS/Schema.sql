/****** Object:  Table [dbo].[Language]    Script Date: 22-11-2015 20:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ShortName] [varchar](5) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Page]    Script Date: 22-11-2015 20:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Page](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[Slug] [varchar](256) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[UpdatedDate] [smalldatetime] NOT NULL,
	[StartPublish] [smalldatetime] NOT NULL,
	[EndPublish] [smalldatetime] NULL,
	[SortOrder] [int] NOT NULL,
	[VisibleInMenu] [bit] NOT NULL,
	[VisibleInSitemap] [bit] NOT NULL,
	[Version] [int] NOT NULL,
	[PageTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PageProperty]    Script Date: 22-11-2015 20:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PageProperty](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PageID] [int] NOT NULL,
	[PropertyTypeID] [int] NULL,
	[LanguageID] [int] NOT NULL,
	[Version] [int] NOT NULL,
	[Content] [varchar](max) NULL,
 CONSTRAINT [PK_PageProperty] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PageType]    Script Date: 22-11-2015 20:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PageType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[Url] [varchar](1024) NOT NULL,
	[QualifiedName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PageType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parameter]    Script Date: 22-11-2015 20:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parameter](
	[Key] [varchar](50) NOT NULL,
	[Value] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Parameter] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropertyType]    Script Date: 22-11-2015 20:54:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PropertyType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PageTypeID] [int] NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[Title] [varchar](256) NOT NULL,
	[Description] [varchar](2048) NULL,
	[Editor] [varchar](120) NOT NULL,
	[QualifiedName] [varchar](120) NOT NULL,
 CONSTRAINT [PK_PropertyType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Page] ON 

INSERT [dbo].[Page] ([ID], [ParentID], [Slug], [CreatedDate], [UpdatedDate], [StartPublish], [EndPublish], [SortOrder], [VisibleInMenu], [VisibleInSitemap], [Version], [PageTypeID]) VALUES (1, NULL, N'Article', CAST(0xA5580392 AS SmallDateTime), CAST(0xA5580392 AS SmallDateTime), CAST(0xA5580392 AS SmallDateTime), NULL, 0, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Page] OFF
SET IDENTITY_INSERT [dbo].[PageProperty] ON 

INSERT [dbo].[PageProperty] ([ID], [PageID], [PropertyTypeID], [LanguageID], [Version], [Content]) VALUES (1, 1, 1, 1, 1, N'aaa')
INSERT [dbo].[PageProperty] ([ID], [PageID], [PropertyTypeID], [LanguageID], [Version], [Content]) VALUES (2, 1, 2, 1, 1, N'dfff')
INSERT [dbo].[PageProperty] ([ID], [PageID], [PropertyTypeID], [LanguageID], [Version], [Content]) VALUES (4, 1, 3, 1, 1, N'ssss')
SET IDENTITY_INSERT [dbo].[PageProperty] OFF
SET IDENTITY_INSERT [dbo].[PageType] ON 

INSERT [dbo].[PageType] ([ID], [Name], [Url], [QualifiedName]) VALUES (1, N'Articles', N'~/Templates/Pages/Home.aspx', N'TieCMS.Models.ArticlePageType')
INSERT [dbo].[PageType] ([ID], [Name], [Url], [QualifiedName]) VALUES (2, N'Article', N'~/Templates/Pages/Home.aspx', N'TieCMS.Models.ArticlePageType')
SET IDENTITY_INSERT [dbo].[PageType] OFF
SET IDENTITY_INSERT [dbo].[PropertyType] ON 

INSERT [dbo].[PropertyType] ([ID], [PageTypeID], [Name], [Title], [Description], [Editor], [QualifiedName]) VALUES (1, 1, N'Title', N'Title', NULL, N'~/Admin/PropertyTypes/StringProperty.ascx', N'Tie.PropertyTypes.StringProperty')
INSERT [dbo].[PropertyType] ([ID], [PageTypeID], [Name], [Title], [Description], [Editor], [QualifiedName]) VALUES (2, 1, N'Resume', N'Resume', NULL, N'~/Admin/PropertyTypes/TextProperty.ascx', N'Tie.PropertyTypes.TextProperty')
INSERT [dbo].[PropertyType] ([ID], [PageTypeID], [Name], [Title], [Description], [Editor], [QualifiedName]) VALUES (3, 1, N'Body', N'Body', NULL, N'~/Admin/PropertyTypes/HtmlProperty.ascx', N'Tie.PropertyTypes.HtmlProperty')
INSERT [dbo].[PropertyType] ([ID], [PageTypeID], [Name], [Title], [Description], [Editor], [QualifiedName]) VALUES (4, 2, N'Title', N'Title', NULL, N'~/Admin/PropertyTypes/StringProperty.ascx', N'Tie.PropertyTypes.StringProperty')
INSERT [dbo].[PropertyType] ([ID], [PageTypeID], [Name], [Title], [Description], [Editor], [QualifiedName]) VALUES (5, 2, N'Resume', N'Resume', NULL, N'~/Admin/PropertyTypes/TextProperty.ascx', N'Tie.PropertyTypes.TextProperty')
INSERT [dbo].[PropertyType] ([ID], [PageTypeID], [Name], [Title], [Description], [Editor], [QualifiedName]) VALUES (6, 2, N'Body', N'Body', NULL, N'~/Admin/PropertyTypes/HtmlProperty.ascx', N'Tie.PropertyTypes.HtmlProperty')
SET IDENTITY_INSERT [dbo].[PropertyType] OFF
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_StartPublish]  DEFAULT (getdate()) FOR [StartPublish]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_SortOrder]  DEFAULT ((0)) FOR [SortOrder]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_VisibleInMenu]  DEFAULT ((1)) FOR [VisibleInMenu]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_VisibleInSitemap]  DEFAULT ((1)) FOR [VisibleInSitemap]
GO
ALTER TABLE [dbo].[Page] ADD  CONSTRAINT [DF_Page_Version]  DEFAULT ((1)) FOR [Version]
GO
ALTER TABLE [dbo].[PageProperty] ADD  CONSTRAINT [DF_PageProperty_Version]  DEFAULT ((1)) FOR [Version]
GO
