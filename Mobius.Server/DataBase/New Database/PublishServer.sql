USE [master]
GO

/****** Object:  Database [PublishServer]    Script Date: 05/26/2009 15:50:55 ******/
CREATE DATABASE [PublishServer] ON  PRIMARY 
( NAME = N'PublishServer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\PublishServer.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PublishServer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\PublishServer.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

--ALTER DATABASE [PublishServer] SET COMPATIBILITY_LEVEL = 90
--GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PublishServer].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO

ALTER DATABASE [PublishServer] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [PublishServer] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [PublishServer] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [PublishServer] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [PublishServer] SET ARITHABORT OFF 
GO

ALTER DATABASE [PublishServer] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [PublishServer] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [PublishServer] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [PublishServer] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [PublishServer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [PublishServer] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [PublishServer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [PublishServer] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [PublishServer] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [PublishServer] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [PublishServer] SET  DISABLE_BROKER 
GO

ALTER DATABASE [PublishServer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [PublishServer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [PublishServer] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [PublishServer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [PublishServer] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [PublishServer] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [PublishServer] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [PublishServer] SET  READ_WRITE 
GO

ALTER DATABASE [PublishServer] SET RECOVERY FULL 
GO

ALTER DATABASE [PublishServer] SET  MULTI_USER 
GO

ALTER DATABASE [PublishServer] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [PublishServer] SET DB_CHAINING OFF 
GO








USE [PublishServer]
GO
/****** Object:  Table [dbo].[PublishedUsers]    Script Date: 05/26/2009 16:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PublishedUsers](
	[ID] [uniqueidentifier] NOT NULL,
	[FacilityID] [uniqueidentifier] NOT NULL,
	[LoginName] [varchar](50) NOT NULL,
	[FirstName] [varchar](128) NULL,
	[MidName] [varchar](10) NULL,
	[LastName] [varchar](128) NULL,
	[DOB] [datetime] NULL,
	[Email] [varchar](255) NULL,
	[Sex] [varchar](10) NULL,
	[PublishedOn] [datetime] NULL,
	[Certificate] [nvarchar](max) NULL,
	[PublishedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PublishedUsers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[FacilityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PublishedGroups]    Script Date: 05/26/2009 16:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PublishedGroups](
	[ID] [uniqueidentifier] NOT NULL,
	[FacilityID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](255) NULL,
	[PublishedOn] [datetime] NOT NULL,
	[Certificate] [nvarchar](max) NULL,
	[PublishedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PublishedGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[FacilityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PublishedFacilities]    Script Date: 05/26/2009 16:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PublishedFacilities](
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
	[PublishedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[Certificate] [nvarchar](max) NULL,
	[PublishedBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Facility] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PublishedUsersGroup]    Script Date: 05/26/2009 16:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishedUsersGroup](
	[User_ID] [uniqueidentifier] NOT NULL,
	[Group_ID] [uniqueidentifier] NOT NULL,
	[Facility_ID] [uniqueidentifier] NOT NULL,
	[PublishedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PublishedUsersGroup] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC,
	[Group_ID] ASC,
	[Facility_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacilityAssociation]    Script Date: 05/26/2009 16:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacilityAssociation](
	[SourceFacilityId] [uniqueidentifier] NOT NULL,
	[TargetFacilityId] [uniqueidentifier] NOT NULL,
	[ExpiresOn] [datetime] NULL,
	[Notes] [varchar](1024) NULL,
	[AssociatedBy] [uniqueidentifier] NOT NULL,
	[AssociatedOn] [datetime] NOT NULL,
	[PermissionInfo] [varchar](max) NULL,
 CONSTRAINT [PK_FacilityAssociation] PRIMARY KEY CLUSTERED 
(
	[SourceFacilityId] ASC,
	[TargetFacilityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_FacilityAssociation_SourceFacility]    Script Date: 05/26/2009 16:01:56 ******/
ALTER TABLE [dbo].[FacilityAssociation]  WITH CHECK ADD  CONSTRAINT [FK_FacilityAssociation_SourceFacility] FOREIGN KEY([SourceFacilityId])
REFERENCES [dbo].[PublishedFacilities] ([ID])
GO
ALTER TABLE [dbo].[FacilityAssociation] CHECK CONSTRAINT [FK_FacilityAssociation_SourceFacility]
GO
/****** Object:  ForeignKey [FK_FacilityAssociation_TargetFacility]    Script Date: 05/26/2009 16:01:56 ******/
ALTER TABLE [dbo].[FacilityAssociation]  WITH CHECK ADD  CONSTRAINT [FK_FacilityAssociation_TargetFacility] FOREIGN KEY([TargetFacilityId])
REFERENCES [dbo].[PublishedFacilities] ([ID])
GO
ALTER TABLE [dbo].[FacilityAssociation] CHECK CONSTRAINT [FK_FacilityAssociation_TargetFacility]
GO
/****** Object:  ForeignKey [FK_PublishedUsersGroup_PublishedGroups]    Script Date: 05/26/2009 16:01:56 ******/
ALTER TABLE [dbo].[PublishedUsersGroup]  WITH CHECK ADD  CONSTRAINT [FK_PublishedUsersGroup_PublishedGroups] FOREIGN KEY([Group_ID], [Facility_ID])
REFERENCES [dbo].[PublishedGroups] ([ID], [FacilityID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PublishedUsersGroup] CHECK CONSTRAINT [FK_PublishedUsersGroup_PublishedGroups]
GO
/****** Object:  ForeignKey [FK_PublishedUsersGroup_PublishedUsers]    Script Date: 05/26/2009 16:01:56 ******/
ALTER TABLE [dbo].[PublishedUsersGroup]  WITH CHECK ADD  CONSTRAINT [FK_PublishedUsersGroup_PublishedUsers] FOREIGN KEY([User_ID], [Facility_ID])
REFERENCES [dbo].[PublishedUsers] ([ID], [FacilityID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PublishedUsersGroup] CHECK CONSTRAINT [FK_PublishedUsersGroup_PublishedUsers]
GO
