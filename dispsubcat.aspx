<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dispsubcat.aspx.cs" Inherits="dispsubcat" Title="Display Sub Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 261px;
        }
        .style12
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style12" width="100%">
        <tr>
            <td align="center" class="style12">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [SubCatID], [SubCatName], [SubCatPic] FROM [addsubcat] WHERE ([CatID] = @CatID)" 
                    onselected="SqlDataSource1_Selected">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="CatID" QueryStringField="cid" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" CellPadding="6" CellSpacing="5" 
                    DataKeyField="SubCatID" DataSourceID="SqlDataSource1" RepeatColumns="4" 
                    RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="style2">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton12" runat="server" Height="246px" 
                                        ImageUrl='<%# Eval("SubCatPic", "products/{0}") %>' 
                                        PostBackUrl='<%# Eval("SubCatID", "dispprods.aspx?scid={0}") %>' 
                                        Width="177px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" 
                                        PostBackUrl='<%# Eval("SubCatPic", "dispprods.aspx?scid={0}") %>' 
                                        style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #49643A" 
                                        Text='<%# Eval("SubCatName") %>'></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" ForeColor="#263A18" 
                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

