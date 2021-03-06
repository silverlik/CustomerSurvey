USE [Survey]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 12/03/2017 10:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[QuestionId] [int] NOT NULL,
	[AnswerId] [int] NOT NULL,
	[Label] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 12/03/2017 10:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[QuestionId] [int] NOT NULL,
	[QuestionTitle] [nvarchar](200) NOT NULL,
	[QuestionType] [int] NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Responses]    Script Date: 12/03/2017 10:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responses](
	[QuestionId] [int] NOT NULL,
	[Response] [nvarchar](300) NULL,
	[ResponseId] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Responses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 1, N'0')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 2, N'1')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 3, N'2')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 4, N'3')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 5, N'4')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 6, N'5')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 7, N'6')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 8, N'7')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 9, N'8')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 10, N'9')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (1, 11, N'10')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (2, 12, N'Very satisfied')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (2, 13, N'Somewhat satisfied')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (2, 14, N'Neither satisfied nor dissatisfied')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (2, 15, N'Somewhat dissatisfied')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (2, 16, N'Very dissatisfied')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (3, 17, N'Reliable')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (3, 18, N'High quality')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (3, 19, N'Useful')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (3, 20, N'Unique')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (3, 21, N'Good value for money')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (3, 22, N'Overpriced')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (3, 23, N'Impractical')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (3, 24, N'Ineffective')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (3, 25, N'Poor quality')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (3, 26, N'Unreliable')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (4, 27, N'Extremely well')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (4, 28, N'
Very well')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (4, 29, N'Somewhat well')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (4, 30, N'Not so well')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (4, 31, N'Not at all well')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (5, 32, N'Very high quality')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (5, 33, N'High quality')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (5, 34, N'Neither high nor low quality')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (5, 35, N'Low quality')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (5, 36, N'Very low quality')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (6, 37, N'Excellent')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (6, 38, N'Above average')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (6, 39, N'Average')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (6, 40, N'Below average')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (6, 41, N'Poor')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (7, 42, N'Extremely responsive')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (7, 43, N'Very responsive')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (7, 44, N'Somewhat responsive')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (7, 45, N'Not so responsive')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (7, 46, N'Not applicable')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (8, 47, N'This is my first purchase')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (8, 48, N'Less than six months')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (8, 49, N'Six month to a year')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (8, 50, N'1-2 years')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (8, 51, N'3 or more years')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (8, 52, N'I haven''t made a purchase yet')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (9, 53, N'Extremely likely')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (9, 54, N'Very likely')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (9, 55, N'Somewhat likely')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (9, 56, N'Not so likely')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (9, 57, N'Not at all likely')
GO
INSERT [dbo].[Answers] ([QuestionId], [AnswerId], [Label]) VALUES (10, 58, N'')
GO
INSERT [dbo].[Questions] ([QuestionId], [QuestionTitle], [QuestionType]) VALUES (1, N'How likely is it that you would recommend this company to a friend or colleague?', 1)
GO
INSERT [dbo].[Questions] ([QuestionId], [QuestionTitle], [QuestionType]) VALUES (2, N'Overall, how satisfied or dissatisfied are you with our company?', 2)
GO
INSERT [dbo].[Questions] ([QuestionId], [QuestionTitle], [QuestionType]) VALUES (3, N'Which of the following words would you use to describe our products? Select all that apply.', 3)
GO
INSERT [dbo].[Questions] ([QuestionId], [QuestionTitle], [QuestionType]) VALUES (4, N'How well do our products meet your needs?', 2)
GO
INSERT [dbo].[Questions] ([QuestionId], [QuestionTitle], [QuestionType]) VALUES (5, N'How would you rate the quality of the product?', 2)
GO
INSERT [dbo].[Questions] ([QuestionId], [QuestionTitle], [QuestionType]) VALUES (6, N'How would you rate the value for money of the product?', 2)
GO
INSERT [dbo].[Questions] ([QuestionId], [QuestionTitle], [QuestionType]) VALUES (7, N'How responsive have we been to your questions or concerns about our products?', 2)
GO
INSERT [dbo].[Questions] ([QuestionId], [QuestionTitle], [QuestionType]) VALUES (8, N'How long have you been a customer of our company?', 2)
GO
INSERT [dbo].[Questions] ([QuestionId], [QuestionTitle], [QuestionType]) VALUES (9, N'How likely are you to purchase any of our products again?', 2)
GO
INSERT [dbo].[Questions] ([QuestionId], [QuestionTitle], [QuestionType]) VALUES (10, N'Do you have any other comments, questions, or concerns?', 4)
GO
SET IDENTITY_INSERT [dbo].[Responses] ON 

GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'3', 1, N'user', 1)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'14', 1, N'user', 2)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'0,0,0', 1, N'user', 3)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'29', 1, N'user', 4)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'34', 1, N'user', 5)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'39', 1, N'user', 6)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'44', 1, N'user', 7)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'49', 1, N'user', 8)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'55', 1, N'user', 9)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'jdkfjldfajl', 1, N'user', 10)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'1', 2, N'user', 11)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'12', 2, N'user', 12)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'0', 2, N'user', 13)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'27', 2, N'user', 14)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'32', 2, N'user', 15)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'37', 2, N'user', 16)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'42', 2, N'user', 17)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'47', 2, N'user', 18)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'53', 2, N'user', 19)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'adjfkdsjfkdsf', 2, N'user', 20)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'2', 3, N'user', 21)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'13', 3, N'user', 22)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'18', 3, N'user', 23)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'28', 3, N'user', 24)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'0', 3, N'user', 25)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'0', 3, N'user', 26)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'0', 3, N'user', 27)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'0', 3, N'user', 28)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'0', 3, N'user', 29)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (1, N'adjfkdsjfkdsf', 3, N'user', 30)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (2, N'11', 4, N'user', 31)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (3, N'16', 4, N'user', 32)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (4, N'26', 4, N'user', 33)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (5, N'31', 4, N'user', 34)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (6, N'36', 4, N'user', 35)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (7, N'41', 4, N'user', 36)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (8, N'46', 4, N'user', 37)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (9, N'52', 4, N'user', 38)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (10, N'57', 4, N'user', 39)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (11, N'adjfkdsjfkdsf', 4, N'user', 40)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (2, N'4', 5, N'', 41)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (3, N'13', 5, N'', 42)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (4, N'18,19', 5, N'', 43)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (5, N'28', 5, N'', 44)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (6, N'33', 5, N'', 45)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (7, N'38', 5, N'', 46)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (8, N'43', 5, N'', 47)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (9, N'48', 5, N'', 48)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (10, N'54', 5, N'', 49)
GO
INSERT [dbo].[Responses] ([QuestionId], [Response], [ResponseId], [UserName], [Id]) VALUES (11, N'adjfkdsjfkdsf', 5, N'', 50)
GO
SET IDENTITY_INSERT [dbo].[Responses] OFF
GO
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([QuestionId])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions]
GO
