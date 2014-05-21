use OnlineStore

alter proc Add_New_Employee @FirstName nvarchar(50),@MiddleName nvarchar(50),@LastName nvarchar(50),@UserName nvarchar(50),
						@Password varchar(15),@Role nvarchar(20),@Question nvarchar(50),@Answer nvarchar(50)
						as
						insert into Employee
						values(@FirstName,@MiddleName,@LastName,@UserName,@Password,@Role,@Question,@Answer)

Create Proc Add_New_Product @Name nvarchar(50),@NO int,@price money,@Cat_Id int
			as
			insert into Product
			values(@Name,@NO,@price,@Cat_Id)


create proc Request_Oreder @OrderNo int,@Customer_Id int,@EmployeeId int
			as
			insert into [Order]
			values (@OrderNo,@Customer_Id,@EmployeeId)


alter Proc AdminLogin @UserName nvarchar(50),@Password nvarchar(15) 
			as
			select FirstName+' '+MiddleName+' '+LastName as 'Full Name' From Employee
			where ((UserName=@UserName) and (Password=@Password)  and  (Role='admin'))


		
			AdminLogin 'mohamedibrahim','123_mohamed'


Create Proc EmployeeLogin @UserName nvarchar(50),@Password nvarchar(15)
			as
			select FirstName+' '+MiddleName+' '+LastName as 'Full Name' From Employee
			where ((UserName=@UserName) and (Password=@Password)  and  (Role!='admin'))
			 
			EmployeeLogin'omarhamed','123_omar'

Alter Proc Show_Customer_Order @Customer_Id int
	   as
	   declare @Emp_Name nvarchar(50)
	   select @Emp_Name=(select UserName as CustomerUserName From Customer
	   where Customer_Id=@Customer_Id)
	   select ord.[Order_Id],[OrderNO],[OrderDate],de.DeatilsBody,de.OrderDeatailsDate,de.OrderDeatailsPrice ,
	   p.ProductName,p.ProductNO,p.ProductPrice,cat.CategoryName,cat.Model,cat.Available
	   from [Order] as ord
			inner join [OrderDeatails] as De
				on ord.[Order_Id]=De.[Order_Id]
					inner join Product as p
					on p.Product_Id=de.Product_Id
						inner join Category as cat
						on cat.Category_Id=p.Category_Id
		select @Emp_Name

						Show_Customer_Order 1

----------------------------------------------------------Not Used------------------------------------------
alter Proc Add_New_Customer @UserName nvarchar(50) ,@Password nvarchar(15),@mail varchar(50),@ContactNumber varchar(11),
			@Question nvarchar(50),@Answer nvarchar(50)
			as
			insert into Customer
			values
			(@UserName,@Password,@mail,@ContactNumber,@Question,@Answer)

