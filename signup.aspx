<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" Title="Sign Up Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        width: 144px;
    }
    .style12
    {
        width: 254px;
    }
    .style13
    {
            width: 171px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
    .style14
    {
        width: 137px;
    }
    .style16
    {
        width: 137px;
        height: 14px;
    }
    .style17
    {
        width: 254px;
        height: 14px;
    }
    .style19
    {
        width: 137px;
        height: 28px;
    }
    .style20
    {
        width: 254px;
        height: 28px;
    }
    .style22
    {
        width: 137px;
        height: 45px;
    }
    .style23
    {
        width: 254px;
        height: 45px;
    }
        .style24
        {
            width: 171px;
            font-family: Arial, Helvetica, sans-serif;
            height: 37px;
            font-weight: bold;
        }
        .style25
        {
            width: 137px;
            height: 37px;
        }
        .style26
        {
            width: 254px;
            height: 37px;
        }
        .style28
        {
            width: 137px;
            height: 26px;
        }
        .style29
        {
            width: 254px;
            height: 26px;
        }
        .style31
        {
            width: 171px;
            height: 14px;
        }
        .style32
        {
            width: 171px;
            height: 28px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style33
        {
            width: 171px;
            height: 26px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style34
        {
            width: 171px;
            height: 45px;
        }
        .style35
        {
            width: 171px;
            height: 77px;
        }
    .style36
    {
        width: 171px;
        height: 30px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    .style37
    {
        width: 137px;
        height: 30px;
    }
    .style38
    {
        width: 254px;
        height: 30px;
    }
        .style39
        {
            color: #CE496E;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
    <tr>
        <td class="style35">
            <h2 class="style39">
                Sign Up</h2>
        </td>
        <td class="style14">
            &nbsp;</td>
        <td class="style12">
            &nbsp;</td>
        <td rowspan="15">
            <asp:Image ID="Image2" runat="server" Height="289px" 
                ImageUrl="~/images/sign-up-now.jpg" Width="204px" />
        </td>
    </tr>
    <tr>
        <td class="style31">
            </td>
        <td class="style16">
            </td>
        <td class="style17">
            </td>
    </tr>
    <tr>
        <td class="style13">
            Name</td>
        <td class="style14">
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        </td>
        <td class="style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Name is required" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style13">
            Address</td>
        <td class="style14">
            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
        </td>
        <td class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            City</td>
        <td class="style14">
            <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
        </td>
        <td class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            State</td>
        <td class="style14">
            <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
        </td>
        <td class="style12">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style13">
            Phone</td>
        <td class="style14">
            <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
        </td>
        <td class="style12">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox5" 
                ErrorMessage="Phone number should be of 10 digits." 
                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style13">
            Email ID(username)</td>
        <td class="style14">
            <asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>
        </td>
        <td class="style12">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox6" 
                ErrorMessage="Email ID should be in proper format." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="Email ID is required" 
                SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                onclick="LinkButton1_Click">Check availability</asp:LinkButton>
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style13">
            Password</td>
        <td class="style14">
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" 
                ></asp:TextBox>
        </td>
        <td class="style12">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style24">
            Confirm Password</td>
        <td class="style25">
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" 
                ></asp:TextBox>
        </td>
        <td class="style26">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox7" ControlToValidate="TextBox8" 
                ErrorMessage="Password do not match."></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style36">
            Country</td>
        <td class="style37">
            <asp:DropDownList ID="DropDownList1" runat="server" >
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>China(Китай)</asp:ListItem>
                <asp:ListItem>Europe(Европа)</asp:ListItem>
            </asp:DropDownList>
            </td>
        <td class="style38">
            </td>
    </tr>
    <tr>
        <td class="style32">
            Gender</td>
        <td class="style19">
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="p" Text="Male" />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="p" Text="Female" />
            </td>
        <td class="style20">
            </td>
    </tr>
    <tr>
        <td class="style33">
            User Picture</td>
        <td class="style28">
            <asp:FileUpload ID="FileUpload1" runat="server"  />
        </td>
        <td class="style29">
            </td>
    </tr>
    <tr>
        <td class="style34">
            </td>
        <td class="style22">
            <asp:ImageButton ID="ImageButton11" runat="server" 
                ImageUrl="~/images/s12.png" onclick="ImageButton11_Click" />
        </td>
        <td class="style23">
            </td>
    </tr>
    <tr>
        <td class="style35">
            &nbsp;</td>
        <td class="style14">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="style12">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

