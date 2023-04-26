<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatecat.aspx.cs" Inherits="updatecat" Title="Update category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            color: #E25589;
        }
        .style11
        {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 552px">
        <tr>
            <td align="left" class="style11">
                <h2 class="style10">
                    Update Category</h2>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="CatID" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="CatPic" 
                            DataImageUrlFormatString="Products/{0}" HeaderText="Category Pic">
                            <ControlStyle Height="125px" Width="100px" />
                            <ItemStyle Height="125px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="CatName" HeaderText="CatName" 
                            SortExpression="CatName" />
                        <asp:HyperLinkField DataNavigateUrlFields="catid" 
                            DataNavigateUrlFormatString="updatecatdetails.aspx?cid={0}" 
                            HeaderText="Click to update" Text="Update" />
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
                    SelectCommand="SELECT * FROM [addcat]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

