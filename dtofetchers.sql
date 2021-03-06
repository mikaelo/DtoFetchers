/****** Object:  Table [dbo].[DicRiskLevels]    Script Date: 02/25/2013 11:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DicRiskLevels](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](256) NULL,
 CONSTRAINT [PK_DICRISKLEVELS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DicRiskLevels] ([id], [name]) VALUES (N'42e28123-ef50-4f0b-8051-a16d0100634a', N'Высокий')
INSERT [dbo].[DicRiskLevels] ([id], [name]) VALUES (N'1ad2f42f-178e-46aa-a743-a16d0100634d', N'Средний')
INSERT [dbo].[DicRiskLevels] ([id], [name]) VALUES (N'a412e24a-7782-4e04-9024-a16d0100634e', N'Низкий')
/****** Object:  Table [dbo].[DicMaterials]    Script Date: 02/25/2013 11:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DicMaterials](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](256) NULL,
 CONSTRAINT [PK_DICMATERIALS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DicMaterials] ([id], [name]) VALUES (N'790ba8f6-f513-4083-9472-a16d01006343', N'Железо')
INSERT [dbo].[DicMaterials] ([id], [name]) VALUES (N'77c73f7a-a9fc-4b7c-9894-a16d01006346', N'Платина')
INSERT [dbo].[DicMaterials] ([id], [name]) VALUES (N'9867d465-ad81-4195-8eb4-a16d01006349', N'Сталь')
/****** Object:  Table [dbo].[DicGalaxies]    Script Date: 02/25/2013 11:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DicGalaxies](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](256) NULL,
 CONSTRAINT [PK_DICGALAXIES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DicGalaxies] ([id], [name]) VALUES (N'3e04374d-6e49-4aff-9e60-a16d01006333', N'S-121-500')
INSERT [dbo].[DicGalaxies] ([id], [name]) VALUES (N'ecb8670c-0e27-4715-a673-a16d0100633c', N'R-774-143')
INSERT [dbo].[DicGalaxies] ([id], [name]) VALUES (N'3e07d458-f6de-4ecb-9aff-a16d01006341', N'S-193-514')
/****** Object:  Table [dbo].[DicCountries]    Script Date: 02/25/2013 11:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DicCountries](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](256) NULL,
 CONSTRAINT [PK_DICCOUNTRIES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DicCountries] ([id], [name]) VALUES (N'6ec62575-87cb-4a50-b09d-a16d010062e4', N'Россия')
INSERT [dbo].[DicCountries] ([id], [name]) VALUES (N'2ec38757-52e6-4b6f-b39c-a16d0100632d', N'США')
INSERT [dbo].[DicCountries] ([id], [name]) VALUES (N'da69c05d-92f7-48fb-8428-a16d0100632e', N'Бангладеш')
/****** Object:  Table [dbo].[Persons]    Script Date: 02/25/2013 11:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[id] [uniqueidentifier] NOT NULL,
	[fullName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_PERSONS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Persons] ([id], [fullName]) VALUES (N'0b234b32-4561-4c51-89a0-a16d01006359', N'Джон Смит')
INSERT [dbo].[Persons] ([id], [fullName]) VALUES (N'f4da766c-d6b0-4288-b643-a16d0100635b', N'Иван Васильев')
INSERT [dbo].[Persons] ([id], [fullName]) VALUES (N'e109713d-26c0-4fc8-b508-a16d0100635d', N'Робин Макферсон')
/****** Object:  Table [dbo].[Meteors]    Script Date: 02/25/2013 11:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meteors](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](256) NOT NULL,
	[weight] [float] NOT NULL,
	[distanceToEarth] [float] NOT NULL,
	[riskLevelId] [uniqueidentifier] NOT NULL,
	[materialId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_METEORS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Meteors] ([id], [name], [weight], [distanceToEarth], [riskLevelId], [materialId]) VALUES (N'd460516f-280e-48ff-9537-a16d01006360', N'Эпифаний', 5600, 372200020, N'a412e24a-7782-4e04-9024-a16d0100634e', N'790ba8f6-f513-4083-9472-a16d01006343')
INSERT [dbo].[Meteors] ([id], [name], [weight], [distanceToEarth], [riskLevelId], [materialId]) VALUES (N'e507914f-2643-4f36-9eb7-a16d01006375', N'Валера', 12500, 7623300, N'42e28123-ef50-4f0b-8051-a16d0100634a', N'77c73f7a-a9fc-4b7c-9894-a16d01006346')
INSERT [dbo].[Meteors] ([id], [name], [weight], [distanceToEarth], [riskLevelId], [materialId]) VALUES (N'e795fd3e-0c99-43a8-ac24-a16d01006378', N'Эдуард', 2500, 1400000, N'42e28123-ef50-4f0b-8051-a16d0100634a', NULL)
INSERT [dbo].[Meteors] ([id], [name], [weight], [distanceToEarth], [riskLevelId], [materialId]) VALUES (N'f54fa55a-2202-4d05-8366-a16d0100637c', N'Малыш', 5300, 30, N'42e28123-ef50-4f0b-8051-a16d0100634a', N'9867d465-ad81-4195-8eb4-a16d01006349')
INSERT [dbo].[Meteors] ([id], [name], [weight], [distanceToEarth], [riskLevelId], [materialId]) VALUES (N'8857265c-cbad-4485-b524-a16d01006380', N'РСД-10', 4500, 20, N'a412e24a-7782-4e04-9024-a16d0100634e', NULL)
/****** Object:  Table [dbo].[SecretFactories]    Script Date: 02/25/2013 11:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecretFactories](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](256) NOT NULL,
	[address] [nvarchar](256) NOT NULL,
	[directorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_SECRETFACTORIES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SecretFactories] ([id], [name], [address], [directorId]) VALUES (N'b93d6491-db9e-488a-a6e1-a16d01006351', N'Завод сельскохозяйственных машин №52', N'Красноярский край, а/я 43-3', NULL)
INSERT [dbo].[SecretFactories] ([id], [name], [address], [directorId]) VALUES (N'799bd9d7-fea0-4a88-8e72-a16d01006357', N'Los Kabanos Laboratory', N'N/A', NULL)
/****** Object:  Table [dbo].[SpaceMeteors]    Script Date: 02/25/2013 11:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpaceMeteors](
	[meteorId] [uniqueidentifier] NOT NULL,
	[placeOfOriginId] [uniqueidentifier] NULL,
	[detectingPersonId] [uniqueidentifier] NOT NULL,
	[detectedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_SPACEMETEORS] PRIMARY KEY CLUSTERED 
(
	[meteorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SpaceMeteors] ([meteorId], [placeOfOriginId], [detectingPersonId], [detectedAt]) VALUES (N'd460516f-280e-48ff-9537-a16d01006360', N'3e04374d-6e49-4aff-9e60-a16d01006333', N'0b234b32-4561-4c51-89a0-a16d01006359', CAST(0x000056B000000000 AS DateTime))
INSERT [dbo].[SpaceMeteors] ([meteorId], [placeOfOriginId], [detectingPersonId], [detectedAt]) VALUES (N'e507914f-2643-4f36-9eb7-a16d01006375', NULL, N'0b234b32-4561-4c51-89a0-a16d01006359', CAST(0x000058BE00000000 AS DateTime))
INSERT [dbo].[SpaceMeteors] ([meteorId], [placeOfOriginId], [detectingPersonId], [detectedAt]) VALUES (N'e795fd3e-0c99-43a8-ac24-a16d01006378', N'ecb8670c-0e27-4715-a673-a16d0100633c', N'f4da766c-d6b0-4288-b643-a16d0100635b', CAST(0x000087D700000000 AS DateTime))
/****** Object:  Table [dbo].[ArtificialMeteors]    Script Date: 02/25/2013 11:48:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArtificialMeteors](
	[meteorId] [uniqueidentifier] NOT NULL,
	[countryId] [uniqueidentifier] NOT NULL,
	[makerId] [uniqueidentifier] NOT NULL,
	[qualityEngineerId] [uniqueidentifier] NOT NULL,
	[serialNumber] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_ARTIFICIALMETEORS] PRIMARY KEY CLUSTERED 
(
	[meteorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ArtificialMeteors] ([meteorId], [countryId], [makerId], [qualityEngineerId], [serialNumber]) VALUES (N'f54fa55a-2202-4d05-8366-a16d0100637c', N'2ec38757-52e6-4b6f-b39c-a16d0100632d', N'799bd9d7-fea0-4a88-8e72-a16d01006357', N'e109713d-26c0-4fc8-b508-a16d0100635d', N'NM-65000-25')
INSERT [dbo].[ArtificialMeteors] ([meteorId], [countryId], [makerId], [qualityEngineerId], [serialNumber]) VALUES (N'8857265c-cbad-4485-b524-a16d01006380', N'6ec62575-87cb-4a50-b09d-a16d010062e4', N'b93d6491-db9e-488a-a6e1-a16d01006351', N'f4da766c-d6b0-4288-b643-a16d0100635b', N'РСД-10-М-6533002')
/****** Object:  ForeignKey [FK_ARTIFICI_REFERENCE_DICCOUNT]    Script Date: 02/25/2013 11:48:21 ******/
ALTER TABLE [dbo].[ArtificialMeteors]  WITH CHECK ADD  CONSTRAINT [FK_ARTIFICI_REFERENCE_DICCOUNT] FOREIGN KEY([countryId])
REFERENCES [dbo].[DicCountries] ([id])
GO
ALTER TABLE [dbo].[ArtificialMeteors] CHECK CONSTRAINT [FK_ARTIFICI_REFERENCE_DICCOUNT]
GO
/****** Object:  ForeignKey [FK_ARTIFICI_REFERENCE_METEORS]    Script Date: 02/25/2013 11:48:21 ******/
ALTER TABLE [dbo].[ArtificialMeteors]  WITH CHECK ADD  CONSTRAINT [FK_ARTIFICI_REFERENCE_METEORS] FOREIGN KEY([meteorId])
REFERENCES [dbo].[Meteors] ([id])
GO
ALTER TABLE [dbo].[ArtificialMeteors] CHECK CONSTRAINT [FK_ARTIFICI_REFERENCE_METEORS]
GO
/****** Object:  ForeignKey [FK_ARTIFICI_REFERENCE_PERSONS]    Script Date: 02/25/2013 11:48:21 ******/
ALTER TABLE [dbo].[ArtificialMeteors]  WITH CHECK ADD  CONSTRAINT [FK_ARTIFICI_REFERENCE_PERSONS] FOREIGN KEY([qualityEngineerId])
REFERENCES [dbo].[Persons] ([id])
GO
ALTER TABLE [dbo].[ArtificialMeteors] CHECK CONSTRAINT [FK_ARTIFICI_REFERENCE_PERSONS]
GO
/****** Object:  ForeignKey [FK_ARTIFICI_REFERENCE_SECRETFA]    Script Date: 02/25/2013 11:48:21 ******/
ALTER TABLE [dbo].[ArtificialMeteors]  WITH CHECK ADD  CONSTRAINT [FK_ARTIFICI_REFERENCE_SECRETFA] FOREIGN KEY([makerId])
REFERENCES [dbo].[SecretFactories] ([id])
GO
ALTER TABLE [dbo].[ArtificialMeteors] CHECK CONSTRAINT [FK_ARTIFICI_REFERENCE_SECRETFA]
GO
/****** Object:  ForeignKey [FK_METEORS_REFERENCE_DICMATER]    Script Date: 02/25/2013 11:48:21 ******/
ALTER TABLE [dbo].[Meteors]  WITH CHECK ADD  CONSTRAINT [FK_METEORS_REFERENCE_DICMATER] FOREIGN KEY([materialId])
REFERENCES [dbo].[DicMaterials] ([id])
GO
ALTER TABLE [dbo].[Meteors] CHECK CONSTRAINT [FK_METEORS_REFERENCE_DICMATER]
GO
/****** Object:  ForeignKey [FK_METEORS_REFERENCE_DICRISKL]    Script Date: 02/25/2013 11:48:21 ******/
ALTER TABLE [dbo].[Meteors]  WITH CHECK ADD  CONSTRAINT [FK_METEORS_REFERENCE_DICRISKL] FOREIGN KEY([riskLevelId])
REFERENCES [dbo].[DicRiskLevels] ([id])
GO
ALTER TABLE [dbo].[Meteors] CHECK CONSTRAINT [FK_METEORS_REFERENCE_DICRISKL]
GO
/****** Object:  ForeignKey [FK_SECRETFA_REFERENCE_PERSONS]    Script Date: 02/25/2013 11:48:21 ******/
ALTER TABLE [dbo].[SecretFactories]  WITH CHECK ADD  CONSTRAINT [FK_SECRETFA_REFERENCE_PERSONS] FOREIGN KEY([directorId])
REFERENCES [dbo].[Persons] ([id])
GO
ALTER TABLE [dbo].[SecretFactories] CHECK CONSTRAINT [FK_SECRETFA_REFERENCE_PERSONS]
GO
/****** Object:  ForeignKey [FK_SPACEMET_REFERENCE_DICGALAX]    Script Date: 02/25/2013 11:48:21 ******/
ALTER TABLE [dbo].[SpaceMeteors]  WITH CHECK ADD  CONSTRAINT [FK_SPACEMET_REFERENCE_DICGALAX] FOREIGN KEY([placeOfOriginId])
REFERENCES [dbo].[DicGalaxies] ([id])
GO
ALTER TABLE [dbo].[SpaceMeteors] CHECK CONSTRAINT [FK_SPACEMET_REFERENCE_DICGALAX]
GO
/****** Object:  ForeignKey [FK_SPACEMET_REFERENCE_METEORS]    Script Date: 02/25/2013 11:48:21 ******/
ALTER TABLE [dbo].[SpaceMeteors]  WITH CHECK ADD  CONSTRAINT [FK_SPACEMET_REFERENCE_METEORS] FOREIGN KEY([meteorId])
REFERENCES [dbo].[Meteors] ([id])
GO
ALTER TABLE [dbo].[SpaceMeteors] CHECK CONSTRAINT [FK_SPACEMET_REFERENCE_METEORS]
GO
/****** Object:  ForeignKey [FK_SPACEMET_REFERENCE_PERSONS]    Script Date: 02/25/2013 11:48:21 ******/
ALTER TABLE [dbo].[SpaceMeteors]  WITH CHECK ADD  CONSTRAINT [FK_SPACEMET_REFERENCE_PERSONS] FOREIGN KEY([detectingPersonId])
REFERENCES [dbo].[Persons] ([id])
GO
ALTER TABLE [dbo].[SpaceMeteors] CHECK CONSTRAINT [FK_SPACEMET_REFERENCE_PERSONS]
GO
