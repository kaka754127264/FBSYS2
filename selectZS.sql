USE [FBDB]
GO
/****** Object:  StoredProcedure [dbo].[select_ZS]    Script Date: 2020/9/27 12:45:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[select_ZS]
as
begin
	select SYS_ZS.proNumber 管理序列号,developer 开发者,tester 测试人员,proTestDate 产品测试日期,SYS_ZS.upLoadTime 管理上传时间,SYS_User.proName 用户产品,applicant 申请人,proDescription 问题描述,auditor 审核人,reviewDate 审核日期,imageDescription 图片,SYS_User.upLoadTime 用户上传时间,SYS_User.proNumber 用户序列号 from SYS_ZS full join SYS_User on SYS_ZS.proNumber=SYS_User.proNumber
end