
/****** Object:  User [CTS\626470]    Script Date: 3/16/2018 3:54:33 PM ******/
/****** Object:  Table [dbo].[Accomplishment]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accomplishment](
	[AC_ID] [int] IDENTITY(1,1) NOT NULL,
	[AC_PF_ID] [int] NOT NULL,
	[AC_ACCOMPLISHMENTS] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[AD_ID] [int] IDENTITY(1,1) NOT NULL,
	[AD_ASSOCIATE_ID] [decimal](7, 0) NOT NULL,
	[AD_FIRSTNAME] [varchar](45) NOT NULL,
	[AD_LASTNAME] [varchar](45) NOT NULL,
	[AD_EMAIL_ID] [varchar](254) NOT NULL,
	[AD_ACTIVE] [char](1) NOT NULL CONSTRAINT [DF__Admin__AD_ACTIVE__22751F6C]  DEFAULT ('Y'),
	[AD_ROLE] [varchar](45) NOT NULL,
	[AD_TEMP_PWD_EXPIRES] [varchar](50) NULL,
	[AD_PASSWORD] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Admin__B5B611FB1DE57479] PRIMARY KEY CLUSTERED 
(
	[AD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Announcement](
	[AN_ID] [int] IDENTITY(1,1) NOT NULL,
	[AN_NAME] [varchar](200) NOT NULL,
	[AN_DESCRIPTION] [varchar](5000) NOT NULL,
	[AN_DATE] [datetime] NOT NULL,
	[AN_PUBLISHED] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blog](
	[BL_ID] [int] IDENTITY(1,1) NOT NULL,
	[BL_TITLE] [varchar](200) NULL,
	[BL_URL] [varchar](1000) NULL,
	[BL_DESCRIPTION] [varchar](1000) NULL,
	[BL_AUTHOR] [varchar](50) NULL,
	[BL_DATE] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[BL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cand_Career_Change_Log]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cand_Career_Change_Log](
	[CL_ID] [int] IDENTITY(1,1) NOT NULL,
	[CL_CA_ID] [int] NOT NULL,
	[CL_LOCATION] [varchar](45) NOT NULL,
	[CL_DOJ] [date] NOT NULL,
	[CL_COURSE_FAMILY] [varchar](45) NOT NULL,
	[CL_CHANGE_DATE] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidate](
	[CA_ID] [int] IDENTITY(1,1) NOT NULL,
	[CA_CANDIDATE_ID] [varchar](45) NOT NULL,
	[CA_USERNAME] [varchar](45) NOT NULL,
	[CA_LO_ID] [int] NULL,
	[CA_TR_ID] [int] NULL,
	[CA_CP_ID] [int] NULL,
	[CA_FIRST_NAME] [varchar](45) NOT NULL,
	[CA_MIDDLE_NAME] [varchar](45) NULL,
	[CA_LAST_NAME] [varchar](45) NOT NULL,
	[CA_GENDER] [varchar](45) NOT NULL,
	[CA_DOB] [date] NULL,
	[CA_EMAIL] [varchar](254) NULL,
	[CA_MOBILE] [varchar](45) NULL,
	[CA_PROFILE_URL] [varchar](1000) NULL,
	[CA_PASSWORD] [varchar](45) NULL,
	[CA_DOJ] [date] NULL,
	[CA_NOTIFICATION_SENT] [char](1) NULL,
	[CA_ACTIVE] [char](1) NULL,
	[CA_REGISTERED] [char](1) NULL,
	[CA_PASSWORD_CHANGED] [char](1) NULL,
	[CA_FORGET_ID] [varchar](50) NULL,
	[CA_IN_ID] [int] NULL,
	[CA_UN_ID] [int] NULL,
	[CA_ENROLL] [datetime] NULL,
	[CA_UNIVERSITY_ID] [varchar](45) NOT NULL,
	[CA_CN_ID] [int] NULL,
	[CA_STATE] [varchar](40) NULL,
	[CA_ANNOUNCEMENT_TIME] [datetime] NULL,
	[CA_TR_ENROLL] [datetime] NULL,
	[CA_LAST_LOGIN] [datetime] NULL,
	[CA_DEPT] [varchar](100) NULL,
	[CA_PASSOUT_YEAR] [int] NULL,
	[CA_LEVEL] [varchar](45) NULL,
	[CA_RANK] [int] NULL,
	[CA_GOLD_COINS] [int] NULL,
	[CA_PROGRESS] [decimal](5, 2) NULL,
	[CA_DG_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Candidate_Academic_Details]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidate_Academic_Details](
	[CD_ID] [int] IDENTITY(1,1) NOT NULL,
	[CD_PF_ID] [int] NOT NULL,
	[CD_DEGREE] [varchar](100) NULL,
	[CD_IN_ID] [int] NULL,
	[CD_UN_ID] [int] NULL,
	[CD_START_YEAR] [int] NULL,
	[CD_END_YEAR] [int] NULL,
	[CD_PERCENTAGE] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[CD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Candidate_Course]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate_Course](
	[CS_ID] [int] IDENTITY(1,1) NOT NULL,
	[CS_CA_ID] [int] NULL,
	[CS_CU_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Candidate_POC]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidate_POC](
	[PO_ID] [int] IDENTITY(1,1) NOT NULL,
	[PO_FIRST_NAME] [varchar](45) NOT NULL,
	[PO_LAST_NAME] [varchar](45) NOT NULL,
	[PO_ASSOCIATE_ID] [int] NOT NULL,
	[PO_EMAIL] [varchar](254) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cert_Attempt]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cert_Attempt](
	[CT_ID] [int] IDENTITY(1,1) NOT NULL,
	[CT_CA_ID] [int] NOT NULL,
	[CT_CY_ID] [int] NOT NULL,
	[CT_CE_ID] [int] NULL,
	[CT_DATE] [date] NOT NULL,
	[CT_START_TIME] [datetime] NULL,
	[CT_END_TIME] [datetime] NULL,
	[CT_SCORE] [int] NULL,
	[CT_STATUS] [varchar](20) NOT NULL,
	[CT_COMMENTS] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cert_Facility]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cert_Facility](
	[CY_ID] [int] IDENTITY(1,1) NOT NULL,
	[CY_NAME] [varchar](45) NULL,
	[CY_CP_ID] [int] NOT NULL,
	[CY_ADDR_1] [varchar](100) NOT NULL,
	[CY_ADDR_2] [varchar](100) NULL,
	[CY_LOCALITY] [varchar](45) NOT NULL,
	[CY_CITY] [varchar](45) NOT NULL,
	[CY_STATE] [varchar](45) NOT NULL,
	[CY_CN_ID] [int] NOT NULL,
	[CY_PINCODE] [varchar](15) NOT NULL,
	[CY_SEATING_CAPACITY] [int] NULL,
	[CY_MAP_LINK] [varchar](700) NULL,
PRIMARY KEY CLUSTERED 
(
	[CY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cert_Facility_Has_Cert]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cert_Facility_Has_Cert](
	[CC_ID] [int] IDENTITY(1,1) NOT NULL,
	[CC_CE_ID] [int] NOT NULL,
	[CC_CF_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cert_Facility_Holiday]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cert_Facility_Holiday](
	[CH_ID] [int] IDENTITY(1,1) NOT NULL,
	[CH_CY_ID] [int] NOT NULL,
	[CH_DATE] [date] NOT NULL,
	[CH_NAME] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cert_Partner]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cert_Partner](
	[CP_ID] [int] IDENTITY(1,1) NOT NULL,
	[CP_NAME] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Certification]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Certification](
	[CE_ID] [int] IDENTITY(1,1) NOT NULL,
	[CE_NAME] [varchar](200) NOT NULL,
	[CE_ACTIVE] [char](1) NOT NULL DEFAULT ('Y'),
	[CE_PASS_PERCENT] [int] NOT NULL,
	[CE_DURATION_MINUTES] [int] NOT NULL,
	[CE_EXT_REF_ID] [varchar](45) NULL,
	[CE_EXT_REF_URL] [varchar](1000) NULL,
	[CE_TR_ID] [int] NULL,
	[CE_CODE] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[CO_ID] [int] IDENTITY(1,1) NOT NULL,
	[CO_NAME] [varchar](65) NOT NULL,
	[CO_ACTIVE] [char](1) NOT NULL DEFAULT ('Y'),
	[CO_PROFILE_URL] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[CO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[CN_ID] [int] IDENTITY(1,1) NOT NULL,
	[CN_NAME] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[CU_ID] [int] IDENTITY(1,1) NOT NULL,
	[CU_NAME] [varchar](200) NOT NULL,
	[CU_URL] [varchar](1000) NOT NULL,
	[CU_KP_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Course_Track]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Track](
	[CT_ID] [int] IDENTITY(1,1) NOT NULL,
	[CT_TR_ID] [int] NOT NULL,
	[CT_CF_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Degree]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Degree](
	[DG_ID] [int] IDENTITY(1,1) NOT NULL,
	[DG_DEGREE] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Demand]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Demand](
	[DE_ID] [int] IDENTITY(1,1) NOT NULL,
	[DE_LO_ID] [int] NOT NULL,
	[DE_CO_ID] [int] NOT NULL,
	[DE_TR_ID] [int] NOT NULL,
	[DE_PERIOD] [date] NOT NULL,
	[DE_COUNT] [int] NOT NULL,
	[DE_COMMENTS] [varchar](400) NULL,
	[DE_FULFILLED_COUNT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Experience]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Experience](
	[EX_ID] [int] IDENTITY(1,1) NOT NULL,
	[EX_PF_ID] [int] NOT NULL,
	[EX_EXPERIENCE] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[EX_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Faq]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Faq](
	[FQ_ID] [int] IDENTITY(1,1) NOT NULL,
	[FQ_QUESTION] [varchar](700) NULL,
	[FQ_ANSWER] [varchar](1500) NULL,
PRIMARY KEY CLUSTERED 
(
	[FQ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[FB_ID] [int] IDENTITY(1,1) NOT NULL,
	[FB_COURSE_ID] [int] NULL,
	[FB_CANDIDATE_ID] [int] NULL,
	[FB_COMMENTS] [varchar](700) NULL,
PRIMARY KEY CLUSTERED 
(
	[FB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback_Detail]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback_Detail](
	[FD_ID] [int] IDENTITY(1,1) NOT NULL,
	[FD_FB_ID] [int] NULL,
	[FD_FQ_ID] [int] NULL,
	[FD_RATING] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback_Question]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback_Question](
	[FQ_ID] [int] IDENTITY(1,1) NOT NULL,
	[FQ_QUESTION] [varchar](600) NULL,
PRIMARY KEY CLUSTERED 
(
	[FQ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inbox]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inbox](
	[IB_ID] [int] IDENTITY(1,1) NOT NULL,
	[IB_CA_ID] [int] NOT NULL,
	[IB_RECIPIENT] [varchar](45) NOT NULL,
	[IB_SUBJECT] [varchar](100) NOT NULL,
	[IB_MAIL_CONTENT] [text] NOT NULL,
	[IB_DATE] [datetime] NOT NULL,
	[IB_AD_STATUS] [varchar](45) NOT NULL,
	[IB_CA_STATUS] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Institution]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Institution](
	[IN_ID] [int] IDENTITY(1,1) NOT NULL,
	[IN_NAME] [varchar](250) NOT NULL,
	[IN_CN_ID] [int] NOT NULL,
	[IN_PARTNER] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Institution_Admin]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Institution_Admin](
	[IA_ID] [int] IDENTITY(1,1) NOT NULL,
	[IA_IN_ID] [int] NOT NULL,
	[IA_NAME] [varchar](100) NULL,
	[IA_EMAIL] [varchar](100) NOT NULL,
	[IA_MOBILE] [varchar](15) NULL,
	[IA_PASSWORD] [varchar](100) NULL,
	[IA_FORGET_ID] [varchar](100) NULL,
	[IA_LAST_LOGIN] [datetime] NULL,
	[IA_PASSWORD_CHANGED] [char](1) NULL,
	[IA_STUDENT_DETAILS] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Knowledge_Partner]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Knowledge_Partner](
	[KP_ID] [int] IDENTITY(1,1) NOT NULL,
	[KP_NAME] [varchar](45) NOT NULL,
	[KP_URL] [varchar](1000) NULL,
	[KP_POC_NAME] [varchar](45) NULL,
	[KP_POC_EMAIL] [varchar](254) NULL,
	[KP_POC_MOBILE] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[KP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Knowledger_Partner_Contract]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Knowledger_Partner_Contract](
	[KC_ID] [int] IDENTITY(1,1) NOT NULL,
	[KC_KP_ID] [int] NOT NULL,
	[KC_START_DATE] [date] NULL,
	[KC_END_DATE] [date] NULL,
	[KC_ACTIVE] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[KC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Location]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Location](
	[LO_ID] [int] IDENTITY(1,1) NOT NULL,
	[LO_NAME] [varchar](45) NOT NULL,
	[LO_ACTIVE] [char](1) NOT NULL DEFAULT ('Y'),
	[LO_CITY] [varchar](45) NOT NULL,
	[LO_STATE] [varchar](45) NOT NULL,
	[LO_COUNTRY] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[News_Feed]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News_Feed](
	[NF_ID] [int] IDENTITY(1,1) NOT NULL,
	[NF_FEED_URL] [varchar](1000) NOT NULL,
	[NF_ACTIVE] [char](1) NOT NULL DEFAULT ('N'),
	[NF_CATEGORY] [varchar](45) NOT NULL,
	[NF_DESCRIPTION] [varchar](1000) NULL,
	[NF_AUTHOR] [varchar](50) NULL,
	[NF_DATE] [date] NULL DEFAULT (NULL),
	[NF_TITLE] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[NF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profile](
	[PF_ID] [int] IDENTITY(1,1) NOT NULL,
	[PF_CA_ID] [int] NOT NULL,
	[PF_EXPERIENCE] [varchar](500) NULL,
	[PF_CITY] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Project]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Project](
	[PT_ID] [int] IDENTITY(1,1) NOT NULL,
	[PT_PF_ID] [int] NOT NULL,
	[PT_TITLE] [varchar](500) NULL,
	[PT_DESCRIPTION] [varchar](1500) NULL,
	[PT_ROLE] [varchar](45) NULL,
	[PT_START_DATE] [date] NULL,
	[PT_END_DATE] [date] NULL,
	[PT_TECHNOLOGY] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[PT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Technologies]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Technologies](
	[TE_ID] [int] IDENTITY(1,1) NOT NULL,
	[TE_PF_ID] [int] NOT NULL,
	[TE_TECHNOLOGY] [varchar](100) NULL,
	[TE_VERSION] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[TE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Track]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Track](
	[TR_ID] [int] IDENTITY(1,1) NOT NULL,
	[TR_NAME] [varchar](45) NOT NULL,
	[TR_CN_ID] [int] NULL DEFAULT (NULL),
PRIMARY KEY CLUSTERED 
(
	[TR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[University]    Script Date: 3/16/2018 3:54:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[University](
	[UN_ID] [int] IDENTITY(1,1) NOT NULL,
	[UN_NAME] [varchar](250) NOT NULL,
	[UN_CN_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accomplishment] ON 

INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (2, 149322, N'State level Awardee in Kho-Kho')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (3, 149322, N'Presented a Paper in Inter-National Conference')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (4, 149323, N'National level Awardee in Chess')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (5, 149323, N'Rajapuraskar Awardee in NSS')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (6, 149323, N'Presented a Paper in National Conference')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (7, 149324, N'State level Rank in 10Th')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (8, 149324, N'Completed Intership for 3 Months in Cognizant')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (9, 149327, N'fd nfg')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (10, 149333, N'Developed an android app in 3rd semester that provides information f')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (11, 149330, N'java,java')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (12, 149334, N'thbdgfx gfn hdb gffgndfg vgff ndxgn')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (13, 149332, N'Developed an android app in 3rd semester')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (14, 149336, N'xgdfjktyf')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (15, 149341, N'Example: Developed an android app in 3rd semester that provides information for an individual student where he can see all his marks, attendance and the dues what he/she have, Published paper on Internet of things in IEEE.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (16, 149338, N'bgfnj,lk jyhjhyj vhnmghmkj nmnnnnnnn')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (17, 149339, N'Developed android app.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (18, 149347, N'rtrytuykiyo hyjutyuii')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (19, 149337, N'Example: Developed an android app in 3rd semester that provides information for an individual student where he can see all his marks, attendance and the dues what he/she have, Published paper on Internet of things in IEEE.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (20, 149355, N'xczxczxczxczx')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (21, 149355, N'zxczxczxc')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (22, 149355, N'zxczxczxc')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (23, 149355, N'Developed an android app in 3rd semester that provides information for an individual student where he can see all his marks, attendance and the dues what he/she have, Published paper on Internet of things in IEEE.Developed an android app in 3rd semester that provides information for an individual student where he can see all his marks, attendance and the dues what he/she have, Published paper on Internet of things in IEEE.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (24, 149355, N'Developed an android app in 3rd semester that provides information for an individual student where he can see all his marks, attendance and the dues what he/she have, Published paper on Internet of things in IEEE.Developed an android app in 3rd semester that provides information for an individual student where he can see all his marks, attendance and the dues what he/she have, Published paper on Internet of things in IEEE.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (25, 149359, N'Developed android application.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (26, 149383, N'swws')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (27, 149383, N'sxsax')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (28, 149386, N'test')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (29, 149386, N'test')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (30, 149386, N'test')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (31, 149386, N'test')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (32, 149386, N'test')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (33, 149386, N'test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (34, 149386, N'test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test  test test')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (35, 149444, N'hgfhjgh')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (36, 149445, N'xc vxcvxcv')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (37, 149469, N'zxcxzczxcxc')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (38, 149420, N'Developed an Android app')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (39, 149421, N'Won best coordinator for technical and workshop program in college \nVolleyball championship series won in college')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (40, 149651, N'abcdefghijklmnopqrstuvwxyz')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (41, 150028, N'Nil')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (42, 150005, N'developed a kit for detecting the water level in the borewell')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (43, 149813, N'jasdfgkf')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (44, 149813, N'mxzgfsdkfhlm')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (45, 149999, N'Completed emissivity testing for silicon carbide based coated furnace bricks as final year project.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (46, 149690, N'Done Mobile Controlled Robot using Arduino controller')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (47, 150026, N'prosthetic leg')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (48, 149755, N'PROJECT')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (49, 149839, N'nothing')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (50, 149982, N'Attended pcb fabrication and circuit debugging training')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (51, 150047, N'First prize in elaquotion in Distric level Competitions.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (52, 149904, N'asdfasdfasdf')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (53, 149403, N'20 problems solved in Hacker Rank')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (54, 149403, N'Global Rank 1193 with 253 problems solved in Spoj')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (55, 150215, N'dfvddsf')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (56, 150215, N'dfds  dfds dfds dfds dfds dfds')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (57, 150247, N'Developed an Hybrid app in sixth semester that helps to overcome hierarichal flow of communication between students and faculties in a college.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (58, 150390, N'Created a new tech blog named www.tensbit.com for posting tech guides and news in the year 2015.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (59, 150390, N'Developed a web app for Twitter Sentiment Analysis using JEE, HDFS and Apache Spark with Python.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (60, 150390, N'Developed a e-commerce website for mobiles using JEE and Oracle in July, 2016.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (61, 150390, N'Developed an Android note taking application named ClipNotes.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (62, 150390, N'2nd Runner Up in FantaC, Annual coding competition in colleges annual tech fest Tech Storm.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (63, 150390, N'1st Runner Up in Language Quiz, A quiz contest in colleges annual language fest.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (64, 150390, N'Developed a Course Management System using Java Swing and Oracle.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (65, 150492, N'Done a project using Java JDBC for IRCTC Ticket booking algoritm.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (66, 150463, N'Participated and won 4th place and a cash award in SMART INDIA HACKATHON 2017 under MINISTRY OF SCIENCE AND TECHNOLOGY')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (67, 150463, N'Submitted a PROJECT PROPOSAL to Ministry of Science and Technology, Government of India for further implementation of our App developed during the Smart India Hackathon 2017.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (68, 150463, N'Passed Business English Certification (BEC) PRELIMINARY Exam with DISTINCTION at Level B2.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (69, 150463, N'Attended Applied CS with Android Workshop conducted by GOOGLE.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (70, 150463, N'Active Participant of CODING CLUB.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (71, 150463, N'Passed C Test conducted by Spoken Tutorial Project, IIT Bombay during April 27th, 2016.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (72, 150463, N'Passed JAVA Test conducted by Spoken Tutorial Project, IIT Bombay during June 20th, 2017.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (73, 149403, N'Participated in 3 competitions in TopCoder')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (74, 149403, N'Solved 31 problems in ProjectEuler')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (75, 149403, N'In github, created 21 projects, contributed to 37 repositories and I have 31 followers')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (76, 149403, N'Accomplishments in  StackOverflow - Reputations:576; Questions:68; Answers: 6; Accepted Answers:3')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (77, 150717, N'Developed a website regarding technology during 3rd year.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (78, 150783, N'First in Smart India Hackathon 2017 in April 2017  organised by Government of India, Department of Atomic Energy and AICTE in Mumbai. Developed a cloud based software for automatically detecting brain cancer using refractive index as the prime biological marker, to be used by radiologists for diagnosis.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (79, 150783, N'First in Grey Matter (Annual Intra - College Quiz Competition) in September 2016 organised by B. P. Poddar Institute of Management and Technology.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (80, 150783, N'First in Innovation Pitch Contest in August 2016 organised by IIEST Shibpur and NRDC.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (81, 150783, N'First in Website Design Competition in Aug 2016 organised by B. P. Poddar Institute of Management and Technology for creating best departmental website for Department of Electronics and Communication Engineering.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (82, 150783, N'First Runner Up in Hackathon - "Building Apps For the Future" in July 2016 organised by Microsoft, American Consulate General and Nasscom 10000 Start-Ups for building a VR simulation software for diagnosing psychiatric diseases.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (83, 150783, N'First in Ro-Aspro in Techstorm 2.16 in May 2016 organised by B. P. Poddar Institute of Management and Technology and IET. The competition tested our knowledge in Arduino through problem solving.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (84, 150783, N'First in Ro-Display in Techstorm 2.16 in May 2016 organised by B. P. Poddar Institute of Management and Technology and IET. In this competition we had to generate given patterns in a 3x3 LED matrix in least time.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (85, 150783, N'First in Canvas in E-week 2016 in Mar 2016 organised by B. P. Poddar Institute of Management and Technology. It was a business plan competition where we presented a business plan based on cheap motion detecting security cameras.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (86, 150783, N'First in Showcase in E-Week 2016 in March 2016 organised by B. P. Poddar Institute of Management and Technology. In this technology showcase challenge we presented a cheap motion detecting security camera.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (87, 150783, N'First runner up in E-nnovation in Techstorm 2.15 in February 2015 organised by B. P. Poddar Institute of Management and Technology and IET. In this comptition we gave a game proposal on Clean India.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (88, 150783, N'Paper on Scope for solar hydrogen power plants along Indian coasts published on September 26, 2016 in SPIE Proceedings Vol. 9935: Solar Hydrogen and Nanotechnology XI Chung-Li Dong, Editor.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (89, 150814, N'Developed a Windows 10 app in 4th semester to provide informations regarding BPPIMT fests. The app is available at https://www.microsoft.com/store/apps/9NBLGGH4PVHM')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (90, 150814, N'Developed a Windows 10 app in 6th smester to provide informations regarding annual techfest of BPPIMT. The app is available at https://www.microsoft.com/store/productid/9NW0FCP8MDXC')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (91, 149832, N'a')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (92, 149832, N'gytfy')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (93, 150874, N'Developed an algorithm that predicts tornado occurences in the United States, using an Artificial Neural Network in MATLAB')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (94, 150874, N'Created a bot that functions as an automated librarian using STM32L476 MCU that navigates across a predefined path on the library floor and checks for a certain book, through its RFID tag. Based on the outcome of the search it marks the book lost or not.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (95, 150874, N'Developed an algorithm in MATLAB to solve a Rubiks Cube')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (96, 150874, N'Implemented home automation using IoT, using Arduino UNO and Bluetooth module.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (103, 149320, N'MATLAB Certificate')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (105, 149320, N'cloud computing')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (106, 151178, N'Cloud Computing')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (107, 151184, N'MATLAB R2008 Certification')
GO
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (108, 151185, N'Solved 20 problems in Hacker Rank.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (109, 151185, N'Salem Beauty')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (112, 151184, N'xfg')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (116, 151225, N'sfdgsfd')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (117, 151225, N'ryjtyjtyj')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (118, 151231, N'Full Stack Developer')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (119, 151240, N'ujtfuityi8yiy g, ikuuo')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (121, 151243, N'FSDFDS')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (123, 151253, N'Microsoft Certified')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (124, 151261, N'fdgfdg')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (126, 151266, N'This is nice to learning')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (128, 151273, N'AIEEE')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (129, 151304, N'vbvcbv')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (131, 151332, N'project1')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (132, 151335, N'vscs')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (133, 151338, N'dfsd')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (134, 151334, N'.net')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (136, 151339, N'HGHJBHBHJGHGHJ')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (140, 151383, N'fbfcb')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (141, 151392, N'Compe10cy')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (142, 151396, N'Bus tracking sysytem')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (143, 151402, N'bug tracking system')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (144, 151262, N'Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (146, 151430, N'You can also type a keyword to search online for the video that best fits your document.')
INSERT [dbo].[Accomplishment] ([AC_ID], [AC_PF_ID], [AC_ACCOMPLISHMENTS]) VALUES (148, 151433, N'Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document.')
SET IDENTITY_INSERT [dbo].[Accomplishment] OFF
SET IDENTITY_INSERT [dbo].[Admin] ON 

