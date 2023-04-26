<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="delproduct.aspx.cs" Inherits="delproduct" Title="Delete Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 235px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    .style11
    {
        color: #C04C66;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td>
                <h2 class="style11">
                    Delete Product</h2>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style3">
                    <tr>
                        <td class="style10">
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
                        <td class="style10">
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
                        <td class="style10" valign="top">
                            Product</td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="ProductID" DataSourceID="SqlDataSource3" CellPadding="4" 
                                ForeColor="#333333" GridLines="None" PageSize="5" AllowPaging="True">
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <Columns>
                                    <asp:ImageField DataImageUrlField="Picture" 
                                        DataImageUrlFormatString="products/{0}" HeaderText="Product Image">
                                        <ControlStyle Height="125px" Width="100px" />
                                        <ItemStyle Height="125px" Width="100px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                                        SortExpression="ProductName" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [addproduct] WHERE [ProductID] = @original_ProductID " 
                                InsertCommand="INSERT INTO [addproduct] ([ProductName], [Picture]) VALUES (@ProductName, @Picture)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [ProductName], [ProductID], [Picture] FROM [addproduct] WHERE (([CatID] = @CatID) AND ([SubCatID] = @SubCatID))" 
                                UpdateCommand="UPDATE [addproduct] SET [ProductName] = @ProductName, [Picture] = @Picture WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Picture] = @original_Picture) OR ([Picture] IS NULL AND @original_Picture IS NULL))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="CatID" 
                                        PropertyName="SelectedValue" Type="Decimal" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="SubCatID" 
                                        PropertyName="SelectedValue" Type="Decimal" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="original_ProductID" Type="Decimal" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Picture" Type="String" />
                                    <asp:Parameter Name="original_ProductID" Type="Decimal" />
                                    <asp:Parameter Name="original_ProductName" Type="String" />
                                    <asp:Parameter Name="original_Picture" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Picture" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

