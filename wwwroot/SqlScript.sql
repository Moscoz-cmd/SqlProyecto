USE [master]
GO
/****** Object:  Database [SqlProyecto]    Script Date: 10/7/2025 14:17:53 ******/
CREATE DATABASE [SqlProyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SqlProyecto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SqlProyecto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SqlProyecto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SqlProyecto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SqlProyecto] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SqlProyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SqlProyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SqlProyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SqlProyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SqlProyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SqlProyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [SqlProyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SqlProyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SqlProyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SqlProyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SqlProyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SqlProyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SqlProyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SqlProyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SqlProyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SqlProyecto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SqlProyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SqlProyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SqlProyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SqlProyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SqlProyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SqlProyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SqlProyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SqlProyecto] SET RECOVERY FULL 
GO
ALTER DATABASE [SqlProyecto] SET  MULTI_USER 
GO
ALTER DATABASE [SqlProyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SqlProyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SqlProyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SqlProyecto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SqlProyecto] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SqlProyecto', N'ON'
GO
ALTER DATABASE [SqlProyecto] SET QUERY_STORE = OFF
GO
USE [SqlProyecto]
GO
/****** Object:  User [alumno]    Script Date: 10/7/2025 14:17:53 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
USE [master]
GO
ALTER DATABASE [SqlProyecto] SET  READ_WRITE 
GO
