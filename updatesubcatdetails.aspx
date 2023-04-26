<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updatesubcatdetails.aspx.cs" Inherits="updatesubcatdetails" Title="Update Sub Category Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        color: #C04C66;
    }
    .style11
    {
        width: 312px;
    }
    .style12
    {
        width: 210px;
        margin-left: 80px;
    }
    .style13
    {
        color: #18806F;
        font-weight: bold;
    }
    .style14
    {
            width: 312px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
    <tr>
        <td>
            <h2 class="style10">
                Update Sub Category Details</h2>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table class="style3">
                <tr>
                    <td class="style14" valign="top">
                        Sub Category Name</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        Category Name</td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="CatName" DataValueField="CatID" 
                            ondatabound="DropDownList1_DataBound" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [CatID], [CatName] FROM [addcat]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style14">
                        Picture</td>
                    <td class="style12">
                        <asp:Image ID="Image2" runat="server" />
                    </td>
                    <td class="style13">
                        Choose new image, if required.<br />
                        <asp:FileUpload ID="FileUpload1" runat="server"  />
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style12">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
                            Font-Bold="True" ForeColor="#18544A" />
                    </td>
                    <td class="style13">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" 
                            Font-Bold="True" ForeColor="#18544A" />
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style12">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="style13">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

