<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addsubcat.aspx.cs" Inherits="addsubcat" Title="Add Sub Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        width: 173px;
    }
        .style12
        {
            color: #CE496E;
        }
        .style13
        {
            width: 173px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style14
        {
            width: 173px;
            height: 25px;
        }
        .style15
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
    <tr>
        <td class="style11">
            <h2 style="width: 216px" class="style12">
                Add Sub Category</h2>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            </td>
        <td class="style15">
            </td>
    </tr>
    <tr>
        <td class="style13">
            Sub Category Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style13">
            Main Category</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="CatName" 
                DataValueField="CatID" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [CatID], [CatName] FROM [addcat]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style13">
            Sub Category Picture</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server"  />
        </td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Add Sub Category" Font-Bold="True" ForeColor="#194237" />
        </td>
    </tr>
</table>
</asp:Content>

