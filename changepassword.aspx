<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" Title="Change Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        width: 241px;
    }
    .style12
    {
        width: 176px;
    }
        .style13
        {
            color: #CE496E;
        }
        .style14
        {
            width: 241px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
    <tr>
        <td class="style11">
            <h2 class="style13">
                Change Password</h2>
        </td>
        <td class="style12">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            Current Password</td>
        <td class="style12">
            <asp:TextBox ID="TextBox1" runat="server" 
                TextMode="Password" ></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            New Password</td>
        <td class="style12">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
                ></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            Conform Password</td>
        <td class="style12">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" 
                ></asp:TextBox>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                ErrorMessage="Password do not match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                Font-Bold="True" ForeColor="#1A463A" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

