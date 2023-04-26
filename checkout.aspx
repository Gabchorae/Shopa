<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" Title="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 214px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style12
        {
            color: #CE496E;
        }
        .style13
        {
            color: #CE4A6C;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center" width="100%">
        <tr>
            <td>
                <h2 class="style12">
                    Choose Payment Mode</h2>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700">
                    <asp:ListItem>Cash on Delivery</asp:ListItem>
                    <asp:ListItem>Credit Card</asp:ListItem>
                    <asp:ListItem>Cheque/Draft</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                                                        <table class="style2" align="center" width="100%">
                                                            <tr>
                                                                <td class="style11">
                                                                    Credit Card No</td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style11">
                                                                    Company Name</td>
                                                                <td>
                                                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                                                        <asp:ListItem>Choose Company</asp:ListItem>
                                                                        <asp:ListItem>VISA</asp:ListItem>
                                                                        <asp:ListItem>Master Card</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style11">
                                                                    Holder Name</td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style11">
                                                                    Valid Upto</td>
                                                                <td>
                                                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h2 class="style13">
                                                        Shipping Address</h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="71px" TextMode="MultiLine" 
                    Width="239px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Make Payment" Font-Bold="True" ForeColor="#194B3E" />
            </td>
        </tr>
        <tr>
            <td>
                If your payment mode is cheque/draft plz send is to the following address for 
                the online shopping website</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

