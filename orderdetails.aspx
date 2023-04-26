<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="orderdetails.aspx.cs" Inherits="orderdetails" Title="Order Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            color: #CA4A6B;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center" width="100%">
    <tr>
        <td align="center">
            <h2 class="style11">
                Order details&nbsp;&nbsp;
            </h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" Width="613px">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="ProductPic" 
                            DataImageUrlFormatString="Products/{0}" HeaderText="Product Picture">
                            <ControlStyle Height="125px" Width="100px" />
                            <ItemStyle Height="125px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                            SortExpression="ProductName" />
                        <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                        <asp:BoundField DataField="Quality" HeaderText="Quality" 
                            SortExpression="Quality" />
                        <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" 
                            SortExpression="TotalCost" />
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
                    SelectCommand="SELECT [ProductName], [Rate], [Quality], [TotalCost], [ProductPic] FROM [addtocart] WHERE ([SessionId] = @SessionId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="SessionId" QueryStringField="sessid" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        </td>
    </tr>
</table>
</asp:Content>

