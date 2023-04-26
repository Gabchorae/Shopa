<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dispcat.aspx.cs" Inherits="dispcat" Title="Display Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        width: 392px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" width="100%">
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [addcat]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" 
                DataSourceID="SqlDataSource2" RepeatColumns="2" 
                RepeatDirection="Horizontal" CellPadding="0">
                <ItemTemplate>
                    <table align="center" class="style11">
                        <tr>
                            <td align="center">
                                <asp:ImageButton ID="ImageButton12" runat="server" Height="221px" 
                                    ImageUrl='<%# Eval("CatPic", "products/{0}") %>' 
                                    PostBackUrl='<%# Eval("CatID", "dispsubcat.aspx?cid={0}") %>' 
                                    Width="175px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                                    PostBackUrl='<%# Eval("CatID", "dispsubcat.aspx?cid={0}") %>' 
                                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #1A4237;" 
                                    Text='<%# Eval("CatName") %>'></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
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

