USE [FBDB]
GO
/****** Object:  StoredProcedure [dbo].[login_FB]    Script Date: 2020/9/25 10:34:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[login_FB](@userId varchar(20),@passWord varchar(20),@result bit out,@msg nvarchar(200) out )
as
begin
	begin try
		if not exists(select userID from User_FB where userID=@userId)begin
			select @result=0,@msg='账号不存在！'
		end else if not exists(select * from User_FB where userID=@userId and userPassword=@passWord)begin
			select @result=0,@msg='密码错误！'
		end else begin
		    if exists(select userID from User_FB where @userId='user123')begin
				set @result=0
				set @msg='用户'
			end else if exists(select userID from User_FB where @userId='admin')begin
				set @result=1
				set @msg='管理员'
			end
			--select * from User_FB where userID=@userId
		end
	end try
	begin catch
	set @result=0
			set @msg=ERROR_MESSAGE()
		

	end catch
		select @result as result,@msg as msg
end