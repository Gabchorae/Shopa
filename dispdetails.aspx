<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dispdetails.aspx.cs" Inherits="dispdetails" Title="Display Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            font-weight: bold;
        }
        .style12
        {
            width: 192px;
            font-weight: 700;
        }
        .style13
        {
            color: #CE496E;
        }
        .style14
        {
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            text-align: justify;
        }
        .style15
        {
            text-align: justify;
        }
        .style16
        {
            width: 223px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td>
                <table align="center" width="100%">
                    <tr>
                        <td class="style16">
                            <h2 class="style13">
                                Products Details</h2>
                        </td>
                        <td class="style12">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style16">
                            &nbsp;</td>
                        <td class="style12">
                                                                Product Name</td>
                        <td>
                                                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" class="style16" rowspan="4" valign="top">
                                                                <asp:Image ID="Image2" runat="server" Height="236px" Width="180px" />
                                                            </td>
                                                            <td class="style14">
                                                                Category</td>
                                                            <td>
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style14">
                            Sub Category</td>
                        <td>
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style14">
                            Rate</td>
                        <td>
                            Rs.
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style14">
                            Quantity</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="50px">1</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11" colspan="3">
                            Description</td>
                    </tr>
                    <tr>
                        <td class="style15" colspan="3">
                            <asp:Label ID="Label6" runat="server" Font-Bold="False" 
                                style="text-align: justify"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            &nbsp;</td>
                        <td class="style12">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                Text="Add to cart" Font-Bold="True" ForeColor="#1A463A" />
                        </td>
                    </tr>
                </table>
               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT addproduct.ProductName, addproduct.Rate, addproduct.Description, addproduct.Picture, addcat.CatName, addsubcat.SubCatName FROM addproduct INNER JOIN addcat ON addproduct.CatID = addcat.CatID INNER JOIN addsubcat ON addproduct.SubCatID = addsubcat.SubCatID WHERE (addproduct.ProductID = @prodid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="prodid" QueryStringField="pid" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

