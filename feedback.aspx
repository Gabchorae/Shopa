<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
        width: 314px;
    }
        .style11
        {
            width: 273px;
            height: 41px;
        font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style12
        {
            height: 41px;
        }
    .style13
    {
            width: 273px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
    .style14
    {
        width: 273px;
        height: 18px;
    }
    .style15
    {
        height: 18px;
    }
    .style16
    {
        width: 273px;
        height: 20px;
    }
    .style17
    {
        height: 20px;
    }
    .style18
    {
        width: 376px;
    }
    .style19
    {
        height: 18px;
        width: 376px;
    }
    .style20
    {
        height: 41px;
        width: 376px;
    }
    .style21
    {
        height: 20px;
        width: 376px;
    }
    .style22
    {
        width: 273px;
        height: 77px;
    }
        .style23
        {
            color: #CE496E;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td class="style22">
                <h2 class="style23">
                    Feedback</h2>
            </td>
            <td class="style18">
                </embed>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                </td>
            <td class="style19">
                </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                Name</td>
            <td class="style18">
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Name is required" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Email ID</td>
            <td class="style18">
                <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Email ID is required" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Email Id should be in proper format" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Phone</td>
            <td class="style18">
                <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Phone is required" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                How you rate our website overall?</td>
            <td >
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Height="27px" Width="420px">
                    <asp:ListItem>Bad</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Very good</asp:ListItem>
                    <asp:ListItem>Excellent</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="RadioButtonList1" ErrorMessage="Required" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                How you rate designing of our website?</td>
            <td class="style18">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Bad</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Very good</asp:ListItem>
                    <asp:ListItem>Excellent</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="RadioButtonList2" ErrorMessage="Required" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Is our website user friendly enough?</td>
            <td class="style18">
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="RadioButtonList3" ErrorMessage="Required" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Is information provided on our website enough?</td>
            <td class="style18">
                <asp:RadioButtonList ID="RadioButtonList4" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="RadioButtonList4" ErrorMessage="Required" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Do you want to see more products in future?</td>
            <td class="style18">
                <asp:RadioButtonList ID="RadioButtonList5" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="RadioButtonList5" ErrorMessage="Required" 
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Other comments/suggestions</td>
            <td class="style20">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                    ontextchanged="TextBox4_TextChanged" ></asp:TextBox>
                <br />
                <br />
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style21">
                <asp:Button ID="Button2" runat="server" Font-Bold="True" ForeColor="#185346" 
                    onclick="Button2_Click" Text="Submit" />
                </td>
            <td class="style17">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

