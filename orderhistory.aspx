<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orderhistory.aspx.cs" Inherits="orderhistory" Title="Order History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            color: #CE496E;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
    <tr>
        <td>
            <h2 class="style11">
                Order History</h2>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="OrderNo" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="sessionid" DataTextField="OrderNo" 
                        HeaderText="click to view products" 
                        DataNavigateUrlFormatString="historydetails.aspx?sessid={0}" />
                    <asp:BoundField DataField="PaymentMode" HeaderText="PaymentMode" 
                        SortExpression="PaymentMode" />
                    <asp:BoundField DataField="ShippingAddress" HeaderText="ShippingAddress" 
                        SortExpression="ShippingAddress" />
                    <asp:BoundField DataField="TotalBill" HeaderText="TotalBill" 
                        SortExpression="TotalBill" />
                    <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                        SortExpression="OrderDate" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                onselected="SqlDataSource1_Selected" 
                SelectCommand="SELECT * FROM [finalorder] WHERE ([Username] = @Username)">
                <SelectParameters>
                    <asp:SessionParameter Name="Username" SessionField="uname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

