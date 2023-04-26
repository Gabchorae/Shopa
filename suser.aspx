<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="suser.aspx.cs" Inherits="sresult" Title="Search User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 294px;
        }
        .style12
        {
            width: 294px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style13
        {
            color: #CE496E;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
        <tr>
            <td class="style11">
                <h2 class="style13"> Search User</h2>
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
            <td class="style12">
                Enter name to search</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                    Font-Bold="True" ForeColor="#194C3E" />
            </td>
        </tr>
    </table>
</asp:Content>

