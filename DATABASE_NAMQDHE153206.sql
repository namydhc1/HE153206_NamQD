USE [master]
GO
/****** Object:  Database [PRJ301_ISE_SE1723]    Script Date: 2/19/2023 9:16:45 PM ******/
CREATE DATABASE PRJ301_ISE_SE1723
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_ISE_SE1723', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301_ISE_SE1723.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_ISE_SE1723_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301_ISE_SE1723_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_ISE_SE1723].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET  MULTI_USER 
GO
ALTER DATABASE [PPRJ301_ISE_SE1723] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET QUERY_STORE = OFF
GO
USE [PRJ301_ISE_SE1723]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
	[sid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[aid] [int] NOT NULL,
	[aname] [varchar](150) NOT NULL,
	[weight] [float] NOT NULL,
	[cid] [int] NOT NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[cid] [int] NOT NULL,
	[cname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NOT NULL,
	[aid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[score] [float] NOT NULL,
	[date] [date] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Course]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Course](
	[gid] [int] NOT NULL,
	[cid] [int] NOT NULL,
 CONSTRAINT [PK_Group_Course] PRIMARY KEY CLUSTERED 
(
	[gid] ASC,
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Student]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Student](
	[sid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Group_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer_Course]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer_Course](
	[lid] [int] NOT NULL,
	[cid] [int] NOT NULL,
 CONSTRAINT [PK_Lecturer_Course] PRIMARY KEY CLUSTERED 
(
	[lid] ASC,
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer_Group]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer_Group](
	[lid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Lecturer_Group] PRIMARY KEY CLUSTERED 
(
	[lid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] NOT NULL,
	[lname] [varchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
	[address] [varchar](150) NOT NULL,
	[lphone] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Course]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Course](
	[sid] [int] NOT NULL,
	[cid] [int] NOT NULL,
 CONSTRAINT [PK_Student_Course] PRIMARY KEY CLUSTERED 
(
	[sid] ASC,
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [int] NOT NULL,
	[simg] [varchar](1500) NOT NULL,
	[scode] [varchar](150) NOT NULL,
	[sname] [varchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[address] [varchar](150) NOT NULL,
	[sphone] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transcript]    Script Date: 2/19/2023 9:16:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transcript](
	[tid] [int] NOT NULL,
	[as1] [float] NULL,
	[as2] [float] NULL,
	[pt1] [float] NULL,
	[pt2] [float] NULL,
	[pt3] [float] NULL,
	[pe] [float] NULL,
	[fe] [float] NULL,
	[cid] [int] NOT NULL,
	[sid] [int] NOT NULL,
 CONSTRAINT [PK_Transcript] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Student]
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Course] FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([cid])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Course]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Assessment] FOREIGN KEY([aid])
REFERENCES [dbo].[Assessment] ([aid])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Assessment]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Course] FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([cid])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Course]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Student]
GO
ALTER TABLE [dbo].[Group_Course]  WITH CHECK ADD  CONSTRAINT [FK_Group_Course_Course] FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([cid])
GO
ALTER TABLE [dbo].[Group_Course] CHECK CONSTRAINT [FK_Group_Course_Course]
GO
ALTER TABLE [dbo].[Group_Course]  WITH CHECK ADD  CONSTRAINT [FK_Group_Course_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Group_Course] CHECK CONSTRAINT [FK_Group_Course_Group]
GO
ALTER TABLE [dbo].[Group_Student]  WITH CHECK ADD  CONSTRAINT [FK_Group_Student_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Group_Student] CHECK CONSTRAINT [FK_Group_Student_Group]
GO
ALTER TABLE [dbo].[Group_Student]  WITH CHECK ADD  CONSTRAINT [FK_Group_Student_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Group_Student] CHECK CONSTRAINT [FK_Group_Student_Student]
GO
ALTER TABLE [dbo].[Lecturer_Course]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Course_Course] FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([cid])
GO
ALTER TABLE [dbo].[Lecturer_Course] CHECK CONSTRAINT [FK_Lecturer_Course_Course]
GO
ALTER TABLE [dbo].[Lecturer_Course]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Course_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Lecturer_Course] CHECK CONSTRAINT [FK_Lecturer_Course_Lecturer]
GO
ALTER TABLE [dbo].[Lecturer_Group]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Lecturer_Group] CHECK CONSTRAINT [FK_Lecturer_Group_Group]
GO
ALTER TABLE [dbo].[Lecturer_Group]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Group_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Lecturer_Group] CHECK CONSTRAINT [FK_Lecturer_Group_Lecturer]
GO
ALTER TABLE [dbo].[Student_Course]  WITH CHECK ADD  CONSTRAINT [FK_Student_Course_Course] FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([cid])
GO
ALTER TABLE [dbo].[Student_Course] CHECK CONSTRAINT [FK_Student_Course_Course]
GO
ALTER TABLE [dbo].[Student_Course]  WITH CHECK ADD  CONSTRAINT [FK_Student_Course_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Student_Course] CHECK CONSTRAINT [FK_Student_Course_Student]
GO
ALTER TABLE [dbo].[Transcript]  WITH CHECK ADD  CONSTRAINT [FK_Transcript_Course] FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([cid])
GO
ALTER TABLE [dbo].[Transcript] CHECK CONSTRAINT [FK_Transcript_Course]
GO
ALTER TABLE [dbo].[Transcript]  WITH CHECK ADD  CONSTRAINT [FK_Transcript_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Transcript] CHECK CONSTRAINT [FK_Transcript_Student]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_ISE_SE1723] SET  READ_WRITE 
GO
