
USE master
IF DB_ID (N'AdWorks') IS NOT NULL
	ALTER DATABASE [AdWorks] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
go
IF DB_ID (N'AdWorks') IS NOT NULL
	DROP DATABASE AdWorks;
GO
IF DB_ID (N'AdWorks') IS  NULL CREATE DATABASE AdWorks;
ALTER DATABASE AdWorks SET COMPATIBILITY_LEVEL = 130
IF (1 = FullTextServiceProperty('IsFullTextInstalled'))
BEGIN
/****** Object:  FullTextCatalog [AW2016FullTextCatalog]    Script Date: 08/02/2021 10:09:54 ******/
EXEC AdWorks.dbo.sp_fulltext_database @action = 'enable'
END
GO


ALTER DATABASE AdWorks SET ANSI_NULL_DEFAULT OFF 
ALTER DATABASE AdWorks SET ANSI_NULLS ON 
ALTER DATABASE AdWorks SET ANSI_PADDING ON 
ALTER DATABASE AdWorks SET ANSI_WARNINGS ON 
ALTER DATABASE AdWorks SET ARITHABORT ON 
ALTER DATABASE AdWorks SET AUTO_CLOSE OFF 
ALTER DATABASE AdWorks SET AUTO_SHRINK OFF 
ALTER DATABASE AdWorks SET AUTO_UPDATE_STATISTICS ON 
ALTER DATABASE AdWorks SET CURSOR_CLOSE_ON_COMMIT OFF 
ALTER DATABASE AdWorks SET CURSOR_DEFAULT  GLOBAL 
ALTER DATABASE AdWorks SET CONCAT_NULL_YIELDS_NULL ON 
ALTER DATABASE AdWorks SET NUMERIC_ROUNDABORT OFF 
ALTER DATABASE AdWorks SET QUOTED_IDENTIFIER ON 
ALTER DATABASE AdWorks SET RECURSIVE_TRIGGERS OFF 
ALTER DATABASE AdWorks SET  DISABLE_BROKER 
ALTER DATABASE AdWorks SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
ALTER DATABASE AdWorks SET DATE_CORRELATION_OPTIMIZATION OFF 
ALTER DATABASE AdWorks SET TRUSTWORTHY OFF 
ALTER DATABASE AdWorks SET ALLOW_SNAPSHOT_ISOLATION OFF 
ALTER DATABASE AdWorks SET PARAMETERIZATION SIMPLE 
ALTER DATABASE AdWorks SET READ_COMMITTED_SNAPSHOT OFF 
ALTER DATABASE AdWorks SET HONOR_BROKER_PRIORITY OFF 
ALTER DATABASE AdWorks SET RECOVERY SIMPLE 
ALTER DATABASE AdWorks SET  MULTI_USER 
ALTER DATABASE AdWorks SET PAGE_VERIFY CHECKSUM  
ALTER DATABASE AdWorks SET DB_CHAINING OFF 
ALTER DATABASE AdWorks SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
ALTER DATABASE AdWorks SET TARGET_RECOVERY_TIME = 60 SECONDS 
ALTER DATABASE AdWorks SET DELAYED_DURABILITY = DISABLED 
ALTER DATABASE AdWorks SET QUERY_STORE = OFF
GO
