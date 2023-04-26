<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updateproduct.aspx.cs" Inherits="updateproduct" Title="Update Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        color: #CE496D;
        width: 324px;
    }
    .style11
    {
        width: 228px;
    }
        .style12
        {
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" align="center">
    <tr>
        <td class="style11">
            <h2 class="style10">
                Update Product</h2>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            Choose Category</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="CatName" 
                DataValueField="CatID" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [CatID], [CatName] FROM [addcat]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Choose Sub Category</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource2" DataTextField="SubCatName" 
                DataValueField="SubCatID" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [SubCatID], [SubCatName] FROM [addsubcat] WHERE ([CatID] = @CatID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="CatID" 
                        PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style12" valign="top" align="center" colspan="2">
            Product<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource3" 
                ForeColor="#333333" GridLines="None" Height="393px" Width="639px">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:ImageField DataImageUrlField="Picture" 
                        DataImageUrlFormatString="Products/{0}" HeaderText="Picture">
                        <ControlStyle Height="125px" Width="100px" />
                        <ItemStyle Height="125px" Width="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                        SortExpression="ProductName" />
                    <asp:HyperLinkField DataNavigateUrlFields="productid" 
                        DataNavigateUrlFormatString="updateproductdetails.aspx?pid={0}" 
                        HeaderText="Update product" Text="Update" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [ProductID], [ProductName], [Picture] FROM [addproduct] WHERE (([CatID] = @CatID) AND ([SubCatID] = @SubCatID))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="CatID" 
                        PropertyName="SelectedValue" Type="Decimal" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="SubCatID" 
                        PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

