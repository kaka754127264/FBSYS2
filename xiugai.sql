USE [FBDB]
GO
/****** Object:  StoredProcedure [dbo].[select_User]    Script Date: 2020/9/27 11:06:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[select_User]
as
begin
	select proNumber 序列号,proName 产品,imageDescription 图片,applicant 申请人,proDescription 问题描述,auditor 审核人,reviewDate 审核日期,upLoadTime 时间 from SYS_User
end