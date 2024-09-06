USE [Cheques]
GO
/****** Object:  Table [dbo].[Cheque]    Script Date: 5/9/2024 23:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cheque](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nroCheque] [int] NOT NULL,
	[idEmpresa] [int] NOT NULL,
 CONSTRAINT [PK_Cheque] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 5/9/2024 23:38:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cheque] ON 

INSERT [dbo].[Cheque] ([id], [nroCheque], [idEmpresa]) VALUES (2, 123, 1)
INSERT [dbo].[Cheque] ([id], [nroCheque], [idEmpresa]) VALUES (3, 1321, 1)
INSERT [dbo].[Cheque] ([id], [nroCheque], [idEmpresa]) VALUES (4, 1, 1)
INSERT [dbo].[Cheque] ([id], [nroCheque], [idEmpresa]) VALUES (5, 12352, 1)
SET IDENTITY_INSERT [dbo].[Cheque] OFF
GO
SET IDENTITY_INSERT [dbo].[Empresa] ON 

INSERT [dbo].[Empresa] ([id], [nombre]) VALUES (1, N'empresa1')
INSERT [dbo].[Empresa] ([id], [nombre]) VALUES (2, N'empresa2')
INSERT [dbo].[Empresa] ([id], [nombre]) VALUES (3, N'empresa3')
INSERT [dbo].[Empresa] ([id], [nombre]) VALUES (4, N'empresa4')
INSERT [dbo].[Empresa] ([id], [nombre]) VALUES (5, N'e')
SET IDENTITY_INSERT [dbo].[Empresa] OFF
GO
ALTER TABLE [dbo].[Cheque]  WITH CHECK ADD  CONSTRAINT [FK_Cheque_Empresa] FOREIGN KEY([idEmpresa])
REFERENCES [dbo].[Empresa] ([id])
GO
ALTER TABLE [dbo].[Cheque] CHECK CONSTRAINT [FK_Cheque_Empresa]
GO
