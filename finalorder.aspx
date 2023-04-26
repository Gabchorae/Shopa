<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="finalorder.aspx.cs" Inherits="finalorder" Title="Final Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style12
        {
            color: #CE496E;
        }
        .style13
        {
            width: 209px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td>
                <h2 class="style12">
                    Thanx for placing your order on our website. Your order details are as follow:</h2>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style2" align="center" width="100%">
                    <tr>
                        <td class="style13">
                            Order No</td>
                        <td>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            Total Bill</td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style13">
                                                                Shipping Address</td>
                                                            <td>
                                                                <asp:Label ID="Label4" runat="server"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style13">
                                                                Payment Mode</td>
                        <td>
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                                                        <tr>
                                                            <td class="style13">
                                                                Items in your order :</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                                                        <tr>
                                                            <td class="style13">
                                                                &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                                                        <tr>
                                                            <td class="style11" align="center" colspan="2">
                                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                                                    GridLines="None" Width="597px">
                                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                    <Columns>
                                                                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                                                                            SortExpression="ProductName" />
                                                                        <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                                                                        <asp:BoundField DataField="Quality" HeaderText="Quality" 
                                                                            SortExpression="Quality" />
                                                                        <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" 
                                                                            SortExpression="TotalCost" />
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
                                                                    SelectCommand="SELECT [ProductName], [Rate], [Quality], [TotalCost] FROM [addtocart] WHERE ([SessionId] = @SessionId)">
                                                                    <SelectParameters>
                                                                        <asp:SessionParameter Name="SessionId" SessionField="sid" Type="String" />
                                                                    </SelectParameters>
                                                                </asp:SqlDataSource>
                                                            </td>
                    </tr>
                                                        <tr>
                                                            <td class="style13">
                                                                &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                                                        <tr>
                                                            <td class="style13">
                                                                &nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#1A4D42" 
                                onclick="Button2_Click" Text="Print" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

