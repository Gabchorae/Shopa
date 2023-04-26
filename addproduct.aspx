<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="addproduct" Title="Add product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        width: 226px;
    }
        .style12
        {
            color: #CE496E;
        }
        .style13
        {
            width: 226px;
            height: 57px;
        }
        .style14
        {
            height: 57px;
        }
        .style15
        {
            width: 226px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" width="100%">
    <tr>
        <td class="style13">
            <h2 class="style12">
                Add Product</h2>
        </td>
        <td class="style14">
            </td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style15">
            Product Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style15">
            Category</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="CatName" 
                DataValueField="CatID" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [CatID], [CatName] FROM [addcat]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style15">
            Sub Category</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="SubCatName" 
                DataValueField="SubCatID" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [SubCatID], [SubCatName] FROM [addsubcat]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style15">
            Rate</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style15">
            Description</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" 
                ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style15">
            Picture</td>
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
                Text="Add Product" Font-Bold="True" ForeColor="#196255" />
        </td>
    </tr>
</table>
</asp:Content>

