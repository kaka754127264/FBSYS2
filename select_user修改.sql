USE [FBDB]
GO
/****** Object:  StoredProcedure [dbo].[select_User]    Script Date: 2020/9/27 11:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[select_User]
as
begin
	select SYS_ZS.proNumber 序列号,SYS_User.proName 产品,imageDescription 图片,applicant 申请人,proDescription 问题描述,
auditor 审核人,reviewDate 审核日期,SYS_User.upLoadTime 时间 from SYS_User right join SYS_ZS
	on SYS_ZS.proNumber=SYS_User.proNumber
end