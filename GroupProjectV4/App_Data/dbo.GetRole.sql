CREATE PROCEDURE [dbo].[GetRole]
	@name nvarchar(50)
AS
	BEGIN
		declare @role nvarchar(50)
		select @role = Role
		from Users 
		where Name = @name
	END