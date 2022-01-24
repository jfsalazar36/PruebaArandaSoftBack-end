USE [BD_ArandaSoft]
GO
/****** Object:  Table [dbo].[Permisos]    Script Date: 23/01/2022 9:18:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permisos](
	[PermisoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
 CONSTRAINT [PK_Permisos] PRIMARY KEY CLUSTERED 
(
	[PermisoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermisosPorRol]    Script Date: 23/01/2022 9:18:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisosPorRol](
	[PermisoPorRolId] [int] IDENTITY(1,1) NOT NULL,
	[RolId] [int] NOT NULL,
	[PermisoId] [int] NOT NULL,
 CONSTRAINT [PK_PermisosPorRol] PRIMARY KEY CLUSTERED 
(
	[PermisoPorRolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 23/01/2022 9:18:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesPorUsuario]    Script Date: 23/01/2022 9:18:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesPorUsuario](
	[RolPorUsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[RolId] [int] NOT NULL,
 CONSTRAINT [PK_RolesPorUsuario] PRIMARY KEY CLUSTERED 
(
	[RolPorUsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 23/01/2022 9:18:30 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Password] [varchar](20) NULL,
	[PrimerNombre] [varchar](80) NULL,
	[SegundoNombre] [varchar](80) NULL,
	[PrimerApellido] [varchar](80) NULL,
	[SegundoApellido] [varchar](80) NULL,
	[Direccion] [varchar](120) NULL,
	[Telefono] [varchar](12) NULL,
	[Email] [varchar](50) NULL,
	[Edad] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Permisos] ON 

INSERT [dbo].[Permisos] ([PermisoId], [Nombre]) VALUES (1, N'MostrarMensaje')
INSERT [dbo].[Permisos] ([PermisoId], [Nombre]) VALUES (2, N'MostrarNoticias')
INSERT [dbo].[Permisos] ([PermisoId], [Nombre]) VALUES (3, N'Consultar')
INSERT [dbo].[Permisos] ([PermisoId], [Nombre]) VALUES (4, N'Editar')
INSERT [dbo].[Permisos] ([PermisoId], [Nombre]) VALUES (5, N'Crear')
INSERT [dbo].[Permisos] ([PermisoId], [Nombre]) VALUES (6, N'Eliminar')
SET IDENTITY_INSERT [dbo].[Permisos] OFF
SET IDENTITY_INSERT [dbo].[PermisosPorRol] ON 

INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (1, 4, 1)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (2, 4, 2)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (3, 4, 3)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (4, 4, 4)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (5, 4, 5)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (6, 4, 6)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (7, 1, 1)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (8, 1, 2)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (9, 2, 1)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (10, 2, 3)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (11, 3, 1)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (12, 3, 3)
INSERT [dbo].[PermisosPorRol] ([PermisoPorRolId], [RolId], [PermisoId]) VALUES (13, 3, 4)
SET IDENTITY_INSERT [dbo].[PermisosPorRol] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RolId], [Nombre]) VALUES (1, N'Visitante')
INSERT [dbo].[Roles] ([RolId], [Nombre]) VALUES (2, N'Asistente')
INSERT [dbo].[Roles] ([RolId], [Nombre]) VALUES (3, N'Editor')
INSERT [dbo].[Roles] ([RolId], [Nombre]) VALUES (4, N'Administrador')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[RolesPorUsuario] ON 

INSERT [dbo].[RolesPorUsuario] ([RolPorUsuarioId], [UsuarioId], [RolId]) VALUES (1, 1, 4)
SET IDENTITY_INSERT [dbo].[RolesPorUsuario] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([UsuarioId], [Nombre], [Password], [PrimerNombre], [SegundoNombre], [PrimerApellido], [SegundoApellido], [Direccion], [Telefono], [Email], [Edad]) VALUES (1, N'admon', N'123', N'Administrador', NULL, N'ArandaSoft', NULL, NULL, NULL, N'admin@arandasoft.com', NULL)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
ALTER TABLE [dbo].[PermisosPorRol]  WITH CHECK ADD  CONSTRAINT [FK_PermisosPorRol_Permisos] FOREIGN KEY([PermisoId])
REFERENCES [dbo].[Permisos] ([PermisoId])
GO
ALTER TABLE [dbo].[PermisosPorRol] CHECK CONSTRAINT [FK_PermisosPorRol_Permisos]
GO
ALTER TABLE [dbo].[PermisosPorRol]  WITH CHECK ADD  CONSTRAINT [FK_PermisosPorRol_Roles] FOREIGN KEY([RolId])
REFERENCES [dbo].[Roles] ([RolId])
GO
ALTER TABLE [dbo].[PermisosPorRol] CHECK CONSTRAINT [FK_PermisosPorRol_Roles]
GO
ALTER TABLE [dbo].[RolesPorUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RolesPorUsuario_Roles] FOREIGN KEY([RolId])
REFERENCES [dbo].[Roles] ([RolId])
GO
ALTER TABLE [dbo].[RolesPorUsuario] CHECK CONSTRAINT [FK_RolesPorUsuario_Roles]
GO
ALTER TABLE [dbo].[RolesPorUsuario]  WITH CHECK ADD  CONSTRAINT [FK_RolesPorUsuario_Usuarios] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[RolesPorUsuario] CHECK CONSTRAINT [FK_RolesPorUsuario_Usuarios]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Usuarios] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([UsuarioId])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Usuarios]
GO
