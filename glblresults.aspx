<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="glblresults.aspx.cs" Inherits="glblresults" Title="Global Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                PageSize="6" AutoGenerateColumns="False" DataKeyNames="ProductID">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:ImageField DataImageUrlField="Picture" 
                        DataImageUrlFormatString="Products/{0}" HeaderText="Product Picture">
                        <ControlStyle Height="125px" Width="100px" />
                        <ItemStyle Height="125px" Width="100px" />
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="productid" 
                        DataNavigateUrlFormatString="dispdetails.aspx?pid={0}" 
                        DataTextField="ProductName" HeaderText="Clicl to view details." />
                    <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
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
                
                SelectCommand="SELECT addproduct.ProductName, addproduct.ProductID, addproduct.Rate, addproduct.Picture FROM addproduct INNER JOIN addcat ON addproduct.CatID = addcat.CatID INNER JOIN addsubcat ON addproduct.SubCatID = addsubcat.SubCatID AND addcat.CatID = addsubcat.CatID WHERE (addcat.CatName LIKE '%' + @cname + '%') OR (addsubcat.SubCatName LIKE '%' + @scname + '%') OR (addproduct.ProductName LIKE '%' + @pname + '%')" 
                onselected="SqlDataSource1_Selected">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="null" Name="cname" 
                        QueryStringField="s" />
                    <asp:QueryStringParameter DefaultValue="null" Name="scname" 
                        QueryStringField="s" />
                    <asp:QueryStringParameter DefaultValue="null" Name="pname" 
                        QueryStringField="s" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

