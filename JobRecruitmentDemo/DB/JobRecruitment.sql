/*
 Navicat Premium Data Transfer

 Source Server         : .
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : 127.0.0.1:1433
 Source Catalog        : JobRecruitment
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 05/11/2021 22:21:37
*/


-- ----------------------------
-- Table structure for Cities
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Cities]') AND type IN ('U'))
	DROP TABLE [dbo].[Cities]
GO

CREATE TABLE [dbo].[Cities] (
  [Id] int  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [CityName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [AdministrativeLevel] int  NULL
)
GO

ALTER TABLE [dbo].[Cities] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Cities
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Cities] ON
GO

INSERT INTO [dbo].[Cities] ([Id], [CityName], [AdministrativeLevel]) VALUES (N'1', N'苏州', N'1')
GO

INSERT INTO [dbo].[Cities] ([Id], [CityName], [AdministrativeLevel]) VALUES (N'2', N'无锡', N'1')
GO

INSERT INTO [dbo].[Cities] ([Id], [CityName], [AdministrativeLevel]) VALUES (N'3', N'常州', N'1')
GO

INSERT INTO [dbo].[Cities] ([Id], [CityName], [AdministrativeLevel]) VALUES (N'4', N'镇江', N'1')
GO

INSERT INTO [dbo].[Cities] ([Id], [CityName], [AdministrativeLevel]) VALUES (N'5', N'南京', N'1')
GO

SET IDENTITY_INSERT [dbo].[Cities] OFF
GO


-- ----------------------------
-- Table structure for Companys
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Companys]') AND type IN ('U'))
	DROP TABLE [dbo].[Companys]
GO

CREATE TABLE [dbo].[Companys] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CompanyName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CompanyNature] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CompanySize] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [IndustryType] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CompanyAddress] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [CompanyIntroduce] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Companys] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Companys
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Companys] ON
GO

INSERT INTO [dbo].[Companys] ([Id], [CompanyName], [CompanyNature], [CompanySize], [IndustryType], [CompanyAddress], [CompanyIntroduce]) VALUES (N'1', N'XXXX科技有限公司', N'合资企业', N'100-500人', N'计算机行业', N'XX市XX区XX路XX号', N'我们专注于IT在线教育，注重服务与口碑，解决升职与加薪的难题。当下专注于.Net领域在线教育，开设有.Net架构班、.Net高级进阶班、.Net全栈实战班、Sql+Winform零基础快速就业班，C#+AutoCAD高薪就业班，致力于打造高品质在线教育，赋能IT人，赋能企业！升职加薪，只争朝夕！')
GO

SET IDENTITY_INSERT [dbo].[Companys] OFF
GO


-- ----------------------------
-- Table structure for Jobs
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Jobs]') AND type IN ('U'))
	DROP TABLE [dbo].[Jobs]
GO

CREATE TABLE [dbo].[Jobs] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [JobName] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [JobPay] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Welfare] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [Education] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [WorkExperience] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CityId] int  NOT NULL,
  [WorkArea] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [PublishTime] datetime  NULL,
  [PositionInfo] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [CompanyId] int  NULL
)
GO

ALTER TABLE [dbo].[Jobs] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Jobs
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Jobs] ON
GO

INSERT INTO [dbo].[Jobs] ([Id], [JobName], [JobPay], [Welfare], [Education], [WorkExperience], [CityId], [WorkArea], [PublishTime], [PositionInfo], [CompanyId]) VALUES (N'1', N'C#/.NET全栈工程师', N'1-1.5万/月', N'五险一金,员工旅游,年终奖金,定期体检', N'本科', N'5年', N'1', N'苏州-工业园区   ', N'2020-03-15 20:08:00.000', N'<p class="j-pad-title">职位信息</p>
                <p style="text-indent: 2em;">学历要求：计算机等相关专业本科及以上学历</p>
                <p style="text-indent: 2em;">工作经验：具有1年及以上实际开发经验</p>
                <p style="text-indent: 2em;">专业技能：</p>
                <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1)&nbsp;熟练掌握C#常规开发技能；</p>
                <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2)&nbsp;熟练掌握ASP.NET、MVC、WebService的开发，熟悉BS架构开发；</p>
                <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3)&nbsp;至少掌握SQL Server、MySql、Oracle等数据库中的一种；</p>
                <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4)&nbsp;熟练使用jQuery、Ajax技术、CSS。</p>
                <p style="text-indent: 2em;"><span>其他要求：</span></p>
                <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1) 有大数据相关开发技能者优先；</p>
                <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2)&nbsp;善于交流沟通、具有良好的团队精神与协作能力；</p>
                <p>&nbsp; &nbsp; &nbsp; 岗位职责：</p>
                <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1)&nbsp;参与公司.NET相关应用系统的开发及运维工作，负责软件编码和验证；</p>
                <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2) 相关技术文档的编写工作；</p>
                <div class="mt10">
                    <p class="fp"><span class="label">职能类别：</span><a class="el tdn"
                            href="https://jobs.51job.com/suzhou/ruanjian/">软件工程师</a></p>
                </div>', N'1')
GO

INSERT INTO [dbo].[Jobs] ([Id], [JobName], [JobPay], [Welfare], [Education], [WorkExperience], [CityId], [WorkArea], [PublishTime], [PositionInfo], [CompanyId]) VALUES (N'2', N'IT软件工程师', N'6-8千/月', N'五险一金,员工旅游,年终奖金', N'专科', N'2年', N'2', N'无锡-新区     ', N'2020-03-16 20:08:00.000', N'<p><span>任职要求：</span><br><span>1、***1名，年龄30岁左右，大专以上学历，计算机、电子工程及相关专业；</span><br><span>2、年以上运维相关经验；</span><br><span>3、熟悉C#、C++、Net编程具有VS的B/S架板下开发经右；</span><br><span>4、熟悉MYSQL\SQLSERVER数据库设计及开发工作；</span><br><br><span>主要工作内容：</span><br><span>1、服务器相关维护；</span><br><span>2、维护公司MES系统适时增加查询报表；</span><br><span>3、适时开发小程序，优化办公人员数据处理；</span><br><span>4、维护公司网站相关，适时开发；</span><br><span>5、维护公司ERP系统，适时开发报表；</span><br><span>6、维护公司SQL相关数据库；</span><br><br><span>坐车路线：</span><br><span>1、昆山新客站坐”124“路公交车到日本工业园伟时电子站下车，下车后向西步行300M即可；</span><br><span>2、陆家”224“到坚田公司门口下车即可。</span><br></p>', N'1')
GO

INSERT INTO [dbo].[Jobs] ([Id], [JobName], [JobPay], [Welfare], [Education], [WorkExperience], [CityId], [WorkArea], [PublishTime], [PositionInfo], [CompanyId]) VALUES (N'3', N'.NET开发工程师', N'0.5-1.5万/月', N'五险一金,年终奖金', N'本科', N'2年', N'3', N'常州-新北区    ', N'2020-03-17 20:08:00.000', N'<p>工作职责：</p><p>1. 主要负责公司产品建设与维护；</p><p>2. 按照公司业务需求、设计开发指定的功能模块；</p><p>任职资格：</p><p>1. 2年以上.NET开发经验，熟悉C# ASP.NET MVC开发，良好的WEB架构设计和实施经验,有NET Core 分布式 Sass 经验更优.</p><p>2. 熟练运用WEB常用技术或框架：Jquery/Bootstrap/React/Vue/Angular/CSS3/HTML5等。</p><p>3. 熟悉 MySQL, SQL Server 2008 及以上版本，熟练使用存储过程/函数/触发器/性能调优。</p><p>4. 熟练使用 GitHub 源代码托管平台。</p><p>3. 需具备良好的编码风格, 具有敬业精神，有团队意识、学习能力强；</p><p>联系人:俞总13962665962   </p><p><br></p><p><br></p>
                <div class="mt10">
                                        <p class="fp"><span class="label">职能类别：</span><a class="el tdn" href="https://jobs.51job.com/suzhou-gyyq/ruanjian/">软件工程师</a><a class="el tdn" href="https://jobs.51job.com/suzhou-gyyq/gaojiruanjian/">高级软件工程师</a></p>', N'1')
GO

INSERT INTO [dbo].[Jobs] ([Id], [JobName], [JobPay], [Welfare], [Education], [WorkExperience], [CityId], [WorkArea], [PublishTime], [PositionInfo], [CompanyId]) VALUES (N'4', N'软件开发工程师', N'0.7-1.5万/月', N'五险一金,专业培训,免费班车,员工旅游,绩效奖金,年终奖金', N'本科', N'3年', N'4', N'镇江-新区     ', N'2020-03-18 20:08:00.000', N'  <p>工作内容：</p><p>Develop  application systems according to user requirements</p><p>根据用户需求，定制化开发公司相关应用系统。</p><p><br></p><p>岗位要求：</p><p>1.At least 1 year       experience in Java and Java web development</p><p>具有一年及以上java与java web开发经验</p><p>2.Familiar with Spring,       Springboot, SpringMVC, MyBatis and other frameworks&nbsp;</p><p>熟悉Spring、Springboot、SpringMVC、MyBatis等主流开源框架</p><p>3.Proficient in HTML, JavaScript,       CSS, C#, WPF, WCF, WinForm development       technologies&nbsp;</p><p>精通HTML, JavaScript, CSS, C#, WPF, WCF, WinForm等开发技术</p><p>4.Familiar with Oracle,       SqlServer database</p><p>熟悉Oracle, SqlServer常用数据库</p><p>5.Proficient in Eclipse,       IDEA, Visual Studio, Git, Maven, Nginx and other tools&nbsp;</p><p>熟练使用Eclipse, IDEA,  Visual Studio, Git, Maven, Nginx等工具</p><p>6.Have the  preciseness logical ideation, excellent analysis and good judgement.</p><p>                                                                </p><p>具有严谨的逻辑思维与分析、判断能力</p>
                <div class="mt10">
                                        <p class="fp"><span class="label">职能类别：</span><a class="el tdn" href="https://jobs.51job.com/suzhou/ruanjian/">软件工程师</a></p>
                                </div>', N'1')
GO

SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO


-- ----------------------------
-- Table structure for Requirements
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Requirements]') AND type IN ('U'))
	DROP TABLE [dbo].[Requirements]
GO

CREATE TABLE [dbo].[Requirements] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Educations] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [Welfares] nvarchar(max) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Requirements] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Requirements
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Requirements] ON
GO

INSERT INTO [dbo].[Requirements] ([Id], [Educations], [Welfares]) VALUES (N'1', N'1年', N'五险一金')
GO

INSERT INTO [dbo].[Requirements] ([Id], [Educations], [Welfares]) VALUES (N'2', N'2年', N'专业培训')
GO

INSERT INTO [dbo].[Requirements] ([Id], [Educations], [Welfares]) VALUES (N'3', N'3年', N'免费班车')
GO

INSERT INTO [dbo].[Requirements] ([Id], [Educations], [Welfares]) VALUES (N'4', N'4年', N'绩效奖金')
GO

INSERT INTO [dbo].[Requirements] ([Id], [Educations], [Welfares]) VALUES (N'5', N'5年', N'员工旅游')
GO

INSERT INTO [dbo].[Requirements] ([Id], [Educations], [Welfares]) VALUES (N'6', NULL, N'年终奖金')
GO

SET IDENTITY_INSERT [dbo].[Requirements] OFF
GO


-- ----------------------------
-- Auto increment value for Cities
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Cities]', RESEED, 5)
GO


-- ----------------------------
-- Primary Key structure for table Cities
-- ----------------------------
ALTER TABLE [dbo].[Cities] ADD CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Companys
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Companys]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Companys
-- ----------------------------
ALTER TABLE [dbo].[Companys] ADD CONSTRAINT [PK_Companys] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Jobs
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Jobs]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table Jobs
-- ----------------------------
ALTER TABLE [dbo].[Jobs] ADD CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Requirements
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Requirements]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table Requirements
-- ----------------------------
ALTER TABLE [dbo].[Requirements] ADD CONSTRAINT [PK_Requirements] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Jobs
-- ----------------------------
ALTER TABLE [dbo].[Jobs] ADD CONSTRAINT [FK_Jobs_Companys] FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Companys] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Jobs] ADD CONSTRAINT [FK_Jobs_Cities] FOREIGN KEY ([CityId]) REFERENCES [dbo].[Cities] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

