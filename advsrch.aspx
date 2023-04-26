<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="advsrch.aspx.cs" Inherits="advsrch" Title="Advanced Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 249px;
        }
        .style12
        {
            color: #CE496E;
        }
        .style13
        {
            width: 249px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td class="style11">
                <h2 class="style12">
                    Advance Search</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
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
            <td class="style13">
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
            <td class="style13" valign="top">
                Products</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" 
                    DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" PageSize="5">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="Picture" 
                            DataImageUrlFormatString="Products/{0}" HeaderText="product Pictures">
                            <ControlStyle Height="125px" Width="100px" />
                            <ItemStyle Height="125px" Width="100px" />
                        </asp:ImageField>
                        <asp:HyperLinkField DataNavigateUrlFields="productid" 
                            DataNavigateUrlFormatString="dispdetails.aspx?pid={0}" 
                            DataTextField="ProductName" HeaderText="Click to view details." />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    onselected="SqlDataSource3_Selected" 
                    SelectCommand="SELECT [ProductID], [ProductName], [Rate], [Picture] FROM [addproduct] WHERE (([CatID] = @CatID) AND ([SubCatID] = @SubCatID))">
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

