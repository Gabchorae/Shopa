<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="listoforder.aspx.cs" Inherits="listoforder" Title="List Of Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            color: #CE496E;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
    <tr>
        <td>
            <h2 class="style10">
                List of order</h2>
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
                ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="sessionid" 
                        DataNavigateUrlFormatString="orderdetails.aspx?sessid={0}" 
                        DataTextField="OrderNo" HeaderText="click to view products" />
                    <asp:BoundField DataField="PaymentMode" HeaderText="Mode" 
                        SortExpression="PaymentMode" />
                    <asp:BoundField DataField="CardNo" HeaderText="CardNo" 
                        SortExpression="CardNo" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CoName" 
                        SortExpression="CompanyName" />
                    <asp:BoundField DataField="HolderName" HeaderText="Holder" 
                        SortExpression="HolderName" />
                    <asp:BoundField DataField="validUpto" HeaderText="valid" 
                        SortExpression="validUpto" />
                    <asp:BoundField DataField="ShippingAddress" HeaderText="Address" 
                        SortExpression="ShippingAddress" />
                    <asp:BoundField DataField="TotalBill" HeaderText="Bill" 
                        SortExpression="TotalBill" />
                    <asp:BoundField DataField="OrderDate" HeaderText="Date" 
                        SortExpression="OrderDate" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [finalorder] ORDER BY [OrderDate] DESC">
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

