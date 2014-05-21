<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Insert_New_Employee.aspx.cs" Inherits="Insert_New_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table style="width: 100%; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; color: #FF00FF;">
        <tr>
            <td style="width: 339px">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_FirstName" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 339px">
                <asp:Label ID="Label2" runat="server" Text="Middle Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_MiddleName" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 339px">
                <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_LastName" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 339px">
                <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_UserName" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 339px">
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Password" runat="server" TextMode="Password" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 339px">
                <asp:Label ID="Label6" runat="server" Text="Role"></asp:Label>
            </td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="DDL_Role" runat="server" AutoPostBack="True" Height="16px" Width="278px">
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Employee</asp:ListItem>
                        </asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td style="width: 339px">
                <asp:Label ID="Label7" runat="server" Text="Security Question"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_SecurityQuestion" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 339px">
                <asp:Label ID="Label8" runat="server" Text="Security Answer "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Answer" runat="server" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 339px">&nbsp;</td>
            <td>
                <asp:Button ID="bt_Add" runat="server" OnClick="bt_Add_Click" Text="Add" />
            </td>
        </tr>
        <tr>
            <td style="width: 339px">&nbsp;</td>
            <td>
                <asp:Label ID="lbl_Result" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 339px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>

