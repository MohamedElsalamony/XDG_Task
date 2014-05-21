<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Show_Customer_Order.aspx.cs" Inherits="Show_Employee_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td>&nbsp;<asp:Label ID="Label1" runat="server" Text="Customer Name"></asp:Label>
&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="DS_CustomerName" DataTextField="UserName" DataValueField="Customer_Id" Height="16px"  Width="162px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="DS_CustomerName" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineStoreConnectionString %>" SelectCommand="SELECT [Customer_Id], [UserName] FROM [Customer]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Order_Id" DataSourceID="DS_ShowCustomerOrder" Width="856px">
                        <Columns>
                            <asp:BoundField DataField="Order_Id" HeaderText="Order_Id" InsertVisible="False" ReadOnly="True" SortExpression="Order_Id" />
                            <asp:BoundField DataField="OrderNO" HeaderText="OrderNO" SortExpression="OrderNO" />
                            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" ReadOnly="True" SortExpression="OrderDate" />
                            <asp:BoundField DataField="DeatilsBody" HeaderText="DeatilsBody" SortExpression="DeatilsBody" />
                            <asp:BoundField DataField="OrderDeatailsDate" HeaderText="OrderDeatailsDate" SortExpression="OrderDeatailsDate" />
                            <asp:BoundField DataField="OrderDeatailsPrice" HeaderText="OrderDeatailsPrice" SortExpression="OrderDeatailsPrice" />
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                            <asp:BoundField DataField="ProductNO" HeaderText="ProductNO" SortExpression="ProductNO" />
                            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="DS_ShowCustomerOrder" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineStoreConnectionString %>" SelectCommand="Show_Customer_Order" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter Name="Customer_Id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>

