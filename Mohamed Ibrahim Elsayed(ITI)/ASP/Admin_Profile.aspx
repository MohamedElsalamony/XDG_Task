<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Admin_Profile.aspx.cs" Inherits="Admin_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head />
    <p>
        <br />
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Contacts" NodeIndent="10" >
            <HoverNodeStyle Font-Underline="False" />
            <Nodes>
                <asp:TreeNode Text="Insert New Employee" Value="Insert New Employee" NavigateUrl="~/Insert_New_Employee.aspx"></asp:TreeNode>
                <asp:TreeNode Text="Insert New Product" Value="Insert New Product" NavigateUrl="~/Insert New Product.aspx"></asp:TreeNode>
                <asp:TreeNode Text="Show Customer Order" Value="Show Employee Order" NavigateUrl="~/Show_Customer_Order.aspx"></asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </p>
</asp:Content>

