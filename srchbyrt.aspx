<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="srchbyrt.aspx.cs" Inherits="srchbyrt" Title="Search By Rate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 240px;
        }
        .style12
        {
            color: #CE496E;
        }
        .style13
        {
            width: 240px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center" width="100%">
        <tr>
            <td class="style11">
                <h2 class="style12">
                    Search By Rate</h2>
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
                Choose Category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="CatName" 
                    DataValueField="CatID"  Width="150px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Minimum Rate</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server"  
                    Width="150px">
                    <asp:ListItem>200</asp:ListItem>
                    <asp:ListItem>500</asp:ListItem>
                    <asp:ListItem>1000</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>5000</asp:ListItem>
                    <asp:ListItem>10000</asp:ListItem>
                    <asp:ListItem>20000</asp:ListItem>
                    <asp:ListItem>30000</asp:ListItem>
                    <asp:ListItem>40000
                    </asp:ListItem>
                    <asp:ListItem>50000</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style13">
                Maximum Rate</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server"  
                    Width="150px">
                    <asp:ListItem>50000</asp:ListItem>
                    <asp:ListItem>40000</asp:ListItem>
                    <asp:ListItem>30000</asp:ListItem>
                    <asp:ListItem>20000</asp:ListItem>
                    <asp:ListItem>10000</asp:ListItem>
                    <asp:ListItem>5000</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>1000</asp:ListItem>
                    <asp:ListItem>500</asp:ListItem>
                    <asp:ListItem>200</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                    Font-Bold="True" ForeColor="#194C3F" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [CatID], [CatName] FROM [addcat]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

