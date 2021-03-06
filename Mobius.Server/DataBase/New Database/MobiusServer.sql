USE [master]
GO

/****** Object:  Database [MobiusServer]    Script Date: 05/26/2009 15:25:19 ******/
CREATE DATABASE [MobiusServer] ON  PRIMARY 
( NAME = N'MobiusServer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\MobiusServer.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MobiusServer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\MobiusServer_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [MobiusServer] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobiusServer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [MobiusServer] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [MobiusServer] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [MobiusServer] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [MobiusServer] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [MobiusServer] SET ARITHABORT OFF 
GO

ALTER DATABASE [MobiusServer] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [MobiusServer] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [MobiusServer] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [MobiusServer] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [MobiusServer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [MobiusServer] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [MobiusServer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [MobiusServer] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [MobiusServer] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [MobiusServer] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [MobiusServer] SET  DISABLE_BROKER 
GO

ALTER DATABASE [MobiusServer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [MobiusServer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [MobiusServer] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [MobiusServer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [MobiusServer] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [MobiusServer] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [MobiusServer] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [MobiusServer] SET  READ_WRITE 
GO

ALTER DATABASE [MobiusServer] SET RECOVERY FULL 
GO

ALTER DATABASE [MobiusServer] SET  MULTI_USER 
GO

ALTER DATABASE [MobiusServer] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [MobiusServer] SET DB_CHAINING OFF 
GO







USE [MobiusServer]
GO
/****** Object:  Table [dbo].[911Field]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[911Field](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_TemplateColumn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[911DataType]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[911DataType](
	[ID] [int] NOT NULL,
	[DataType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_911DataType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permission](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patient911Information]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient911Information](
	[UserGuid] [uniqueidentifier] NOT NULL,
	[FieldData911] [text] NULL,
	[CategoryData911] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjectType]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObjectType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_ObjectType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NetworkConfigurationInfo]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NetworkConfigurationInfo](
	[ID] [int] NOT NULL,
	[ServerName] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[UserID] [varchar](50) NULL,
	[FolderName] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MailConfigurtationInfo]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MailConfigurtationInfo](
	[ID] [int] NOT NULL,
	[XMLTemplate] [varchar](max) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Group]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[Certificate] [varchar](1024) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedOn] [datetime] NULL,
	[CanBeDeleted] [bit] NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FTPConfigurationInfo]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FTPConfigurationInfo](
	[ID] [int] NOT NULL,
	[ServerName] [varchar](255) NULL,
	[FTPID] [varchar](50) NULL,
	[Password] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacilityAssociation]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacilityAssociation](
	[AssociationId] [int] IDENTITY(1,1) NOT NULL,
	[FacilityID] [uniqueidentifier] NOT NULL,
	[Description] [varchar](255) NULL,
	[Certificate] [varchar](1024) NULL,
	[Name] [varchar](255) NULL,
	[Address] [varchar](512) NULL,
	[Logo] [varchar](255) NULL,
 CONSTRAINT [PK_FacilityAssociation] PRIMARY KEY CLUSTERED 
(
	[AssociationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facility]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facility](
	[ID] [uniqueidentifier] NOT NULL,
	[FacilityShortName] [varchar](255) NOT NULL,
	[FacilityName] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Zip] [varchar](10) NULL,
	[Description] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Website] [varchar](255) NULL,
	[ContactNo] [varchar](50) NULL,
	[Logo] [varchar](50) NULL,
	[URI] [varchar](50) NULL,
	[Certificate] [varchar](1024) NULL,
	[DefaultPassword] [varchar](20) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Facility] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EncounterInfo]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EncounterInfo](
	[DataSyncID] [int] NOT NULL,
	[EncounterID] [uniqueidentifier] NOT NULL,
	[SyncDate] [datetime] NOT NULL,
	[Data] [varchar](max) NOT NULL,
	[SynchronizedWithEIC] [bit] NULL,
	[SynchronizedWithAHLTA] [bit] NULL,
 CONSTRAINT [PK_EncounterInfo] PRIMARY KEY CLUSTERED 
(
	[DataSyncID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EICInfo]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EICInfo](
	[EICSerialID] [varchar](50) NOT NULL,
	[EICName] [varchar](50) NULL,
	[Certificate] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[EICGUID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[AssignedTo] [uniqueidentifier] NULL,
 CONSTRAINT [PK_EICInfo] PRIMARY KEY CLUSTERED 
(
	[EICGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Constraint]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Constraint](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
	[DataType] [varchar](50) NULL,
 CONSTRAINT [PK_Constraint] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ActiveConfigurations]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ActiveConfigurations](
	[SyncID] [int] NOT NULL,
	[Type] [varchar](10) NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_ActiveConfigurations] PRIMARY KEY CLUSTERED 
(
	[SyncID] ASC,
	[Type] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [uniqueidentifier] NOT NULL,
	[LoginName] [varchar](50) NOT NULL,
	[FirstName] [varchar](128) NULL,
	[MidName] [varchar](10) NULL,
	[LastName] [varchar](128) NULL,
	[Password] [varchar](1024) NULL,
	[DOB] [datetime] NULL,
	[Email] [varchar](255) NULL,
	[IsActive] [bit] NULL,
	[Sex] [varchar](10) NULL,
	[Certificate] [varchar](1024) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedOn] [datetime] NULL,
	[CanBeDeleted] [bit] NULL,
	[PasswordHash] [nvarchar](255) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[User_ID] [uniqueidentifier] NOT NULL,
	[Group_ID] [uniqueidentifier] NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[911FieldDetail]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[911FieldDetail](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[911Field_ID] [int] NOT NULL,
	[SubFieldName] [nvarchar](50) NULL,
	[SubFieldDataType] [nvarchar](50) NULL,
 CONSTRAINT [PK_911SubCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjectsPermission]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjectsPermission](
	[ID] [int] NOT NULL,
	[SourceFacilityGUID] [uniqueidentifier] NOT NULL,
	[SourceObjectGUID] [uniqueidentifier] NOT NULL,
	[SourceObjectTypeID] [int] NOT NULL,
	[TargetFacilityGUID] [uniqueidentifier] NULL,
	[TargetObjectGUID] [uniqueidentifier] NULL,
	[TargetObjectTypeID] [int] NULL,
	[AppliedFromDate] [datetime] NULL,
	[AppliedTillDate] [datetime] NULL,
 CONSTRAINT [PK_ObjectsPermission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionCategory]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectsPermission_ID] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Permission_ID] [int] NOT NULL,
	[PermissionState] [bit] NULL,
 CONSTRAINT [PK_PermissionCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionConstraint]    Script Date: 05/26/2009 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PermissionConstraint](
	[PermissionCategory_ID] [int] NOT NULL,
	[Constraint_ID] [int] NOT NULL,
	[Value] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_EICInfo_EICGUID]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[EICInfo] ADD  CONSTRAINT [DF_EICInfo_EICGUID]  DEFAULT (newid()) FOR [EICGUID]
GO
/****** Object:  Default [DF_Group_CanBeDeleted]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_CanBeDeleted]  DEFAULT ((1)) FOR [CanBeDeleted]
GO
/****** Object:  ForeignKey [FK_911SubCategory_911Field]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[911FieldDetail]  WITH CHECK ADD  CONSTRAINT [FK_911SubCategory_911Field] FOREIGN KEY([911Field_ID])
REFERENCES [dbo].[911Field] ([ID])
GO
ALTER TABLE [dbo].[911FieldDetail] CHECK CONSTRAINT [FK_911SubCategory_911Field]
GO
/****** Object:  ForeignKey [FK_ObjectsPermission_SourceObjectType]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[ObjectsPermission]  WITH CHECK ADD  CONSTRAINT [FK_ObjectsPermission_SourceObjectType] FOREIGN KEY([SourceObjectTypeID])
REFERENCES [dbo].[ObjectType] ([ID])
GO
ALTER TABLE [dbo].[ObjectsPermission] CHECK CONSTRAINT [FK_ObjectsPermission_SourceObjectType]
GO
/****** Object:  ForeignKey [FK_ObjectsPermission_TargetObjectType]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[ObjectsPermission]  WITH CHECK ADD  CONSTRAINT [FK_ObjectsPermission_TargetObjectType] FOREIGN KEY([TargetObjectTypeID])
REFERENCES [dbo].[ObjectType] ([ID])
GO
ALTER TABLE [dbo].[ObjectsPermission] CHECK CONSTRAINT [FK_ObjectsPermission_TargetObjectType]
GO
/****** Object:  ForeignKey [FK_PermissionCategory_Category]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[PermissionCategory]  WITH CHECK ADD  CONSTRAINT [FK_PermissionCategory_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[PermissionCategory] CHECK CONSTRAINT [FK_PermissionCategory_Category]
GO
/****** Object:  ForeignKey [FK_PermissionCategory_ObjectsPermission]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[PermissionCategory]  WITH CHECK ADD  CONSTRAINT [FK_PermissionCategory_ObjectsPermission] FOREIGN KEY([ObjectsPermission_ID])
REFERENCES [dbo].[ObjectsPermission] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionCategory] CHECK CONSTRAINT [FK_PermissionCategory_ObjectsPermission]
GO
/****** Object:  ForeignKey [FK_PermissionCategory_Permission]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[PermissionCategory]  WITH CHECK ADD  CONSTRAINT [FK_PermissionCategory_Permission] FOREIGN KEY([Permission_ID])
REFERENCES [dbo].[Permission] ([ID])
GO
ALTER TABLE [dbo].[PermissionCategory] CHECK CONSTRAINT [FK_PermissionCategory_Permission]
GO
/****** Object:  ForeignKey [FK_PermissionConstraint_Constraint]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[PermissionConstraint]  WITH CHECK ADD  CONSTRAINT [FK_PermissionConstraint_Constraint] FOREIGN KEY([Constraint_ID])
REFERENCES [dbo].[Constraint] ([ID])
GO
ALTER TABLE [dbo].[PermissionConstraint] CHECK CONSTRAINT [FK_PermissionConstraint_Constraint]
GO
/****** Object:  ForeignKey [FK_PermissionConstraint_PermissionCategory]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[PermissionConstraint]  WITH CHECK ADD  CONSTRAINT [FK_PermissionConstraint_PermissionCategory] FOREIGN KEY([PermissionCategory_ID])
REFERENCES [dbo].[PermissionCategory] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PermissionConstraint] CHECK CONSTRAINT [FK_PermissionConstraint_PermissionCategory]
GO
/****** Object:  ForeignKey [FK_User_User]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User] FOREIGN KEY([ID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User]
GO
/****** Object:  ForeignKey [FK_User_Group_Group]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_User_Group_Group] FOREIGN KEY([Group_ID])
REFERENCES [dbo].[Group] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserGroup] CHECK CONSTRAINT [FK_User_Group_Group]
GO
/****** Object:  ForeignKey [FK_User_Group_User]    Script Date: 05/26/2009 15:28:13 ******/
ALTER TABLE [dbo].[UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_User_Group_User] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserGroup] CHECK CONSTRAINT [FK_User_Group_User]
GO
