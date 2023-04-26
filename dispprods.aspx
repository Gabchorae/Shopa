<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dispprods.aspx.cs" Inherits="dispprods" Title="Display Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 261px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" width="100%">
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" CellPadding="6" CellSpacing="5" 
                    DataKeyField="ProductID" DataSourceID="SqlDataSource1" RepeatColumns="4" 
                    RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="style2">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton12" runat="server" Height="237px" 
                                        ImageUrl='<%# Eval("Picture", "products/{0}") %>' 
                                        PostBackUrl='<%# Eval("ProductID", "dispdetails.aspx?pid={0}") %>' 
                                        Width="163px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                                        PostBackUrl='<%# Eval("ProductID", "dispdetails.aspx?pid={0}") %>' 
                                        style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #466236;" 
                                        Text='<%# Eval("ProductName") %>'></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [ProductID], [ProductName], [Picture] FROM [addproduct] WHERE ([SubCatID] = @SubCatID)" 
                    onselected="SqlDataSource1_Selected">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="SubCatID" QueryStringField="scid" 
                            Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" ForeColor="#293E1B" 
                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

