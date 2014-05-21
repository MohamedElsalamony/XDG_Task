﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;

public partial class OnlineStoreEntities : DbContext
{
    public OnlineStoreEntities()
        : base("name=OnlineStoreEntities")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public DbSet<Category> Categories { get; set; }
    public DbSet<Customer> Customers { get; set; }
    public DbSet<Employee> Employees { get; set; }
    public DbSet<Order> Orders { get; set; }
    public DbSet<OrderDeatail> OrderDeatails { get; set; }
    public DbSet<Product> Products { get; set; }
    public DbSet<sysdiagram> sysdiagrams { get; set; }

    public virtual ObjectResult<string> f_Login(string userName, string password, string role)
    {
        var userNameParameter = userName != null ?
            new ObjectParameter("UserName", userName) :
            new ObjectParameter("UserName", typeof(string));

        var passwordParameter = password != null ?
            new ObjectParameter("Password", password) :
            new ObjectParameter("Password", typeof(string));

        var roleParameter = role != null ?
            new ObjectParameter("Role", role) :
            new ObjectParameter("Role", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("f_Login", userNameParameter, passwordParameter, roleParameter);
    }

    public virtual int Add_New_Customer(string userName, string password, string mail, string contactNumber, string question, string answer)
    {
        var userNameParameter = userName != null ?
            new ObjectParameter("UserName", userName) :
            new ObjectParameter("UserName", typeof(string));

        var passwordParameter = password != null ?
            new ObjectParameter("Password", password) :
            new ObjectParameter("Password", typeof(string));

        var mailParameter = mail != null ?
            new ObjectParameter("mail", mail) :
            new ObjectParameter("mail", typeof(string));

        var contactNumberParameter = contactNumber != null ?
            new ObjectParameter("ContactNumber", contactNumber) :
            new ObjectParameter("ContactNumber", typeof(string));

        var questionParameter = question != null ?
            new ObjectParameter("Question", question) :
            new ObjectParameter("Question", typeof(string));

        var answerParameter = answer != null ?
            new ObjectParameter("Answer", answer) :
            new ObjectParameter("Answer", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Add_New_Customer", userNameParameter, passwordParameter, mailParameter, contactNumberParameter, questionParameter, answerParameter);
    }

    public virtual int Add_New_Employee(string firstName, string middleName, string lastName, string userName, string password, string role, string question, string answer)
    {
        var firstNameParameter = firstName != null ?
            new ObjectParameter("FirstName", firstName) :
            new ObjectParameter("FirstName", typeof(string));

        var middleNameParameter = middleName != null ?
            new ObjectParameter("MiddleName", middleName) :
            new ObjectParameter("MiddleName", typeof(string));

        var lastNameParameter = lastName != null ?
            new ObjectParameter("LastName", lastName) :
            new ObjectParameter("LastName", typeof(string));

        var userNameParameter = userName != null ?
            new ObjectParameter("UserName", userName) :
            new ObjectParameter("UserName", typeof(string));

        var passwordParameter = password != null ?
            new ObjectParameter("Password", password) :
            new ObjectParameter("Password", typeof(string));

        var roleParameter = role != null ?
            new ObjectParameter("Role", role) :
            new ObjectParameter("Role", typeof(string));

        var questionParameter = question != null ?
            new ObjectParameter("Question", question) :
            new ObjectParameter("Question", typeof(string));

        var answerParameter = answer != null ?
            new ObjectParameter("Answer", answer) :
            new ObjectParameter("Answer", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Add_New_Employee", firstNameParameter, middleNameParameter, lastNameParameter, userNameParameter, passwordParameter, roleParameter, questionParameter, answerParameter);
    }

    public virtual int Request_Oreder(Nullable<int> orderNo, Nullable<int> customer_Id, Nullable<int> employeeId)
    {
        var orderNoParameter = orderNo.HasValue ?
            new ObjectParameter("OrderNo", orderNo) :
            new ObjectParameter("OrderNo", typeof(int));

        var customer_IdParameter = customer_Id.HasValue ?
            new ObjectParameter("Customer_Id", customer_Id) :
            new ObjectParameter("Customer_Id", typeof(int));

        var employeeIdParameter = employeeId.HasValue ?
            new ObjectParameter("EmployeeId", employeeId) :
            new ObjectParameter("EmployeeId", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Request_Oreder", orderNoParameter, customer_IdParameter, employeeIdParameter);
    }

    public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        var versionParameter = version.HasValue ?
            new ObjectParameter("version", version) :
            new ObjectParameter("version", typeof(int));

        var definitionParameter = definition != null ?
            new ObjectParameter("definition", definition) :
            new ObjectParameter("definition", typeof(byte[]));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
    }

    public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        var versionParameter = version.HasValue ?
            new ObjectParameter("version", version) :
            new ObjectParameter("version", typeof(int));

        var definitionParameter = definition != null ?
            new ObjectParameter("definition", definition) :
            new ObjectParameter("definition", typeof(byte[]));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
    }

    public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
    }

    public virtual ObjectResult<sp_helpdiagramdefinition_Result> sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagramdefinition_Result>("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
    }

    public virtual ObjectResult<sp_helpdiagrams_Result> sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagrams_Result>("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
    }

    public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
    {
        var diagramnameParameter = diagramname != null ?
            new ObjectParameter("diagramname", diagramname) :
            new ObjectParameter("diagramname", typeof(string));

        var owner_idParameter = owner_id.HasValue ?
            new ObjectParameter("owner_id", owner_id) :
            new ObjectParameter("owner_id", typeof(int));

        var new_diagramnameParameter = new_diagramname != null ?
            new ObjectParameter("new_diagramname", new_diagramname) :
            new ObjectParameter("new_diagramname", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
    }

    public virtual int sp_upgraddiagrams()
    {
        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
    }

    public virtual ObjectResult<string> AdminLogin(string userName, string password)
    {
        var userNameParameter = userName != null ?
            new ObjectParameter("UserName", userName) :
            new ObjectParameter("UserName", typeof(string));

        var passwordParameter = password != null ?
            new ObjectParameter("Password", password) :
            new ObjectParameter("Password", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("AdminLogin", userNameParameter, passwordParameter);
    }

    public virtual ObjectResult<string> EmployeeLogin(string userName, string password)
    {
        var userNameParameter = userName != null ?
            new ObjectParameter("UserName", userName) :
            new ObjectParameter("UserName", typeof(string));

        var passwordParameter = password != null ?
            new ObjectParameter("Password", password) :
            new ObjectParameter("Password", typeof(string));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("EmployeeLogin", userNameParameter, passwordParameter);
    }

    public virtual int Add_New_Product(string name, Nullable<int> nO, Nullable<decimal> price, Nullable<int> cat_Id)
    {
        var nameParameter = name != null ?
            new ObjectParameter("Name", name) :
            new ObjectParameter("Name", typeof(string));

        var nOParameter = nO.HasValue ?
            new ObjectParameter("NO", nO) :
            new ObjectParameter("NO", typeof(int));

        var priceParameter = price.HasValue ?
            new ObjectParameter("price", price) :
            new ObjectParameter("price", typeof(decimal));

        var cat_IdParameter = cat_Id.HasValue ?
            new ObjectParameter("Cat_Id", cat_Id) :
            new ObjectParameter("Cat_Id", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Add_New_Product", nameParameter, nOParameter, priceParameter, cat_IdParameter);
    }

    public virtual ObjectResult<Show_Customer_Order_Result> Show_Customer_Order(Nullable<int> customer_Id)
    {
        var customer_IdParameter = customer_Id.HasValue ?
            new ObjectParameter("Customer_Id", customer_Id) :
            new ObjectParameter("Customer_Id", typeof(int));

        return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Show_Customer_Order_Result>("Show_Customer_Order", customer_IdParameter);
    }
}