<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Insert New Product.aspx.cs" Inherits="Insert_New_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width: 100%; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; color: #FF00FF;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                </td>
                <td style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; color: #FF00FF">
                    <asp:TextBox ID="txt_ProductName" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Product Number"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_ProductNumber" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_Price" runat="server" Width="276px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Category"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DDL_Category" runat="server" AutoPostBack="True" DataSourceID="DS_Cat" DataTextField="CategoryName" DataValueField="Category_Id" Height="16px" Width="285px">
                    </asp:DropDownList>
                    <asp:EntityDataSource ID="Entity_Cat" runat="server">
                    </asp:EntityDataSource>
                    <asp:SqlDataSource ID="DS_Cat" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineStoreConnectionString %>" SelectCommand="SELECT [Category_Id], [CategoryName] FROM [Category] WHERE ([Category_Id] = @Category_Id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DDL_Category" Name="Category_Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button runat="server" id="btn_Add" type="button" value="Add" OnClick="btn_Add_Click" Text="Add Product" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lbl_Result" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
        <br />
    </p>
</asp:Content>

