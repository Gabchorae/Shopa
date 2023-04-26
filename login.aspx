<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Login Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        width: 163px;
    }
    .style12
    {
        width: 222px;
    }
    .style13
    {
            width: 135px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style14
        {
            width: 135px;
            height: 77px;
        }
        .style15
        {
            color: #CE496E;
        }
        .style16
        {
            width: 135px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style17
        {
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
    <tr>
        <td class="style17">
            <h2 class="style15">
                Log In</h2>
        </td>
        <td class="style11">
            </td>
        <td class="style12">
            </td>
        <td rowspan="4">
            <asp:Image ID="Image2" runat="server" Height="179px" 
                ImageUrl="~/images/lo11.jpg" Width="221px" />
        </td>
    </tr>
    <tr>
        <td class="style13">
            <b>User ID :<br />
            <br />
            </b>
        </td>
        <td class="style11">
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            <br />
        </td>
        <td class="style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Email ID is required." 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox1" 
                ErrorMessage="Email ID should be in proper format." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style16">
            Password :</td>
        <td class="style11">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
                ></asp:TextBox>
        </td>
        <td class="style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Password is required." 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td class="style11" align="center">
            <asp:ImageButton ID="ImageButton11" runat="server" 
                ImageUrl="~/images/lll.png" onclick="ImageButton11_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="style12">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

