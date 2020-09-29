USE [FBDB]
GO
/****** Object:  StoredProcedure [dbo].[select_ZS]    Script Date: 2020/9/29 12:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[select_ZS]
as
begin
	
	--select SYS_ZS.proNumber 管理序列号,developer 开发者,tester 测试人员,proTestDate 产品测试日期,SYS_ZS.upLoadTime 管理上传时间,SYS_User.proName 用户产品,applicant 申请人,proDescription 问题描述,auditor 审核人,reviewDate 审核日期,imageDescription 图片,SYS_User.upLoadTime 用户上传时间,SYS_User.proNumber 用户序列号,SYS_PIC.ID 图片序号,PIC1 图片一,PIC2 图片二,PIC3 图片三,PIC4 图片四,PIC5 图片五,PIC6 图片六,PIC7 图片七,PIC8 图片八,PIC9 图片九,PIC10 图片十,PIC_NO 图片序列 from SYS_User full join SYS_ZS on SYS_ZS.proNumber=SYS_User.proNumber  join SYS_PIC on SYS_PIC.ID=SYS_User.ID
	select * from SYS_ZS full join SYS_User on SYS_ZS.proNumber=SYS_User.proNumber join SYS_PIC on SYS_PIC.ID=SYS_User.ID
end