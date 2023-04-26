<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatesubcat.aspx.cs" Inherits="updatesubcat" Title="pdate Sub Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        width: 286px;
    }
    .style11
    {
        color: #C04C66;
    }
    .style12
    {
            width: 286px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" align="center">
    <tr>
        <td class="style10">
            <h2 class="style11">
                Update Sub Category</h2>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
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
        <td class="style12" valign="top">
            Sub Category</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SubCatID" 
                DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" PageSize="5">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:ImageField DataImageUrlField="SubCatPic" 
                        DataImageUrlFormatString="Products/{0}" HeaderText="Picture">
                        <ControlStyle Height="125px" Width="100px" />
                        <ItemStyle Height="125px" Width="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="SubCatName" HeaderText="SubCatName" 
                        SortExpression="SubCatName" />
                    <asp:HyperLinkField DataNavigateUrlFields="subcatid" 
                        DataNavigateUrlFormatString="updatesubcatdetails.aspx?scid={0}" 
                        HeaderText="Click to update" Text="Update" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [SubCatID], [SubCatName], [SubCatPic] FROM [addsubcat] WHERE ([CatID] = @CatID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="CatID" 
                        PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

