<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatecatdetails.aspx.cs" Inherits="updatecatdetails" Title="Update Category Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 227px;
        }
        .style11
        {
            width: 190px;
        }
    .style12
    {
        color: #C34B67;
    }
    .style13
    {
        width: 227px;
        height: 1px;
        font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    .style14
    {
        height: 1px;
    }
    .style15
    {
        width: 227px;
        font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" align="center">
        <tr>
            <td>
                <h2 class="style12">
                    Update Details</h2>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style3">
                    <tr>
                        <td class="style15">
                            Category Name</td>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            Category Picture</td>
                        <td colspan="2" class="style14">
                            <asp:Image ID="Image2" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                                    <td class="style11">
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
                                            Font-Bold="True" ForeColor="#1A3E36" />
&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" 
                                            Font-Bold="True" ForeColor="#1A453A" />
                                    </td>
                                    <td>
                                        Choose new picture,if required.<br />
                            <asp:FileUpload ID="FileUpload1" runat="server"  />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

