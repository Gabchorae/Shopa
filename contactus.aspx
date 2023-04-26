<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" Title="Contact Us " %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        width: 134px;
    }
    .style11
    {
        width: 151px;
    }
    .style12
    {
        width: 235px;
    }
    .style13
    {
            width: 134px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
    .style14
    {
        width: 142px;
        height: 24px;
    }
    .style15
    {
        width: 151px;
        height: 24px;
    }
    .style16
    {
        width: 235px;
        height: 24px;
    }
    .style17
    {
        width: 142px;
        }
        .style18
        {
            color: #CE496E;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
    <tr>
        <td class="style10">
            <h2 class="style18">
                Contact Us</h2>
        </td>
        <td class="style11">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td rowspan="8">
            <asp:Image ID="Image2" runat="server" Height="238px" 
                ImageUrl="~/images/a-contactus.jpg" Width="244px" />
        </td>
    </tr>
    <tr>
        <td class="style14">
            </td>
        <td class="style15">
            </td>
        <td class="style16">
            </td>
    </tr>
    <tr>
        <td class="style13">
            Name</td>
        <td class="style11">
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        </td>
        <td class="style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Name is Required" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style13">
            Email ID</td>
        <td class="style11">
            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
        </td>
        <td class="style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Email ID is required." 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox2" 
                ErrorMessage="Email ID should be in proper format." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style13">
            Phone</td>
        <td class="style11">
            <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
        </td>
        <td class="style12">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox3" 
                ErrorMessage="Phone Number should be of 10 digits." 
                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style13">
            Query</td>
        <td class="style11">
            <asp:TextBox ID="TextBox4" runat="server" Height="112px" TextMode="MultiLine" 
                ></asp:TextBox>
        </td>
        <td class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td class="style11">
            </td>
        <td class="style12">
            </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style11">
            <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#18473A" 
                onclick="Button2_Click" Text="Contact Us" />
        </td>
        <td class="style12">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

