<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="View signup.aspx.cs" Inherits="View_signup" Title="View Si" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            height: 129px;
        }
        .style12
        {
            color: #C24C67;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
        <tr>
            <td class="style11">
                <h2 class="style12">
                    List of users</h2>
            </td>
        </tr>
        <tr title="View SignUp">
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="EmailID" DataSourceID="SqlDataSource1">
                    <RowStyle BackColor="#DBEAEE" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="Userpic" 
                            DataImageUrlFormatString="userpics/{0}" HeaderText="UserPicture">
                            <ControlStyle Height="100px" Width="125px" />
                            <ItemStyle Height="100px" Width="125px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" ReadOnly="True" 
                            SortExpression="EmailID" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:BoundField DataField="Country" HeaderText="Country" 
                            SortExpression="Country" />
                    </Columns>
                    <HeaderStyle BackColor="#4A91A2" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [signup]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

