<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="updateproductdetails.aspx.cs" Inherits="updateproductdetails" Title="Update Product details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 243px;
        }
        .style12
        {
            width: 306px;
        }
        .style13
        {
            color: #CE4A6C;
        }
        .style14
        {
            width: 306px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" align="center">
        <tr>
            <td class="style12">
                <h2 class="style13">
                    Update details</h2>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                Product Name</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Category </td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
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
                Sub Category </td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="SubCatName" 
                    DataValueField="SubCatID" ondatabound="DropDownList2_DataBound" 
                    >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [SubCatID], [SubCatName] FROM [addsubcat] WHERE ([CatID] = @CatID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="CatID" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Rate</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Description</td>
            <td colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" Height="75px" TextMode="MultiLine" 
                    ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Picture</td>
                        <td class="style11">
                            <asp:Image ID="Image2" runat="server" />
                        </td>
                        <td>
                            Choose new image, if required<br />
                <asp:FileUpload ID="FileUpload1" runat="server"  />
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" 
                    Font-Bold="True" ForeColor="#193E36" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Back" onclick="Button2_Click" 
                    Font-Bold="True" ForeColor="#185A4E" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

