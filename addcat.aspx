<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addcat.aspx.cs" Inherits="addmin" Title="Addcat " %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        width: 196px;
    }
        .style12
        {
            color: #CE496E;
        }
        .style13
        {
            width: 196px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
    <tr>
        <td class="style11">
            <h2 class="style12">
                Add Category</h2>
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
        <td class="style13">
            Category Name</td>
        <td style="margin-left: 80px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style13">
            Category Picture</td>
        <td style="margin-left: 80px">
            <asp:FileUpload ID="FileUpload1" runat="server"  />
        </td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td style="margin-left: 80px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td style="margin-left: 80px" align="left">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Add Category" BackColor="White" Font-Bold="True" 
                ForeColor="#1A8171" />
        </td>
    </tr>
</table>
</asp:Content>

