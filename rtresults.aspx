<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="rtresults.aspx.cs" Inherits="rtresults" Title="Untitled Page" %>

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
                    Result</h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="Picture" 
                            DataImageUrlFormatString="Products/{0}" HeaderText="Product Picture">
                            <ControlStyle Height="125px" Width="100px" />
                            <ItemStyle Height="125px" Width="100px" />
                        </asp:ImageField>
                        <asp:HyperLinkField DataNavigateUrlFields="productid" 
                            DataNavigateUrlFormatString="dispdetails.aspx?pid={0}" 
                            DataTextField="ProductName" HeaderText="Click to view details." />
                        <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    onselected="SqlDataSource1_Selected" 
                    SelectCommand="SELECT [ProductID], [ProductName], [Rate], [Picture] FROM [addproduct] WHERE (([CatID] = @CatID) AND ([Rate] &gt;= @Rate) AND ([Rate] &lt;= @Rate2))">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="CatID" QueryStringField="catid" 
                            Type="Decimal" />
                        <asp:QueryStringParameter Name="Rate" QueryStringField="minprice" 
                            Type="Decimal" />
                        <asp:QueryStringParameter Name="Rate2" QueryStringField="maxprice" 
                            Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

