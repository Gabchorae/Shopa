<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewcontactus.aspx.cs" Inherits="viewcontactus" Title="Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 428px;
        }
        .style12
        {
            color: #CE496E;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
        <tr>
            <td class="style11">
                <h2 style="height: 26px; width: 311px" class="style12">
                    View Contact Us</h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ContactusID" DataSourceID="SqlDataSource1" Width="655px">
                    <RowStyle BackColor="#DBEAEE" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                            SortExpression="EmailID" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" />
                        <asp:BoundField DataField="MsgDate" HeaderText="MsgDate" 
                            SortExpression="MsgDate" />
                        <asp:CommandField HeaderText="Click to delete" ShowDeleteButton="True" />
                    </Columns>
                    <HeaderStyle BackColor="#4A91A2" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [contactus] WHERE [ContactusID] = @original_ContactusID " 
                    InsertCommand="INSERT INTO [contactus] ([Name], [EmailID], [Phone], [Msg], [MsgDate]) VALUES (@Name, @EmailID, @Phone, @Msg, @MsgDate)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [contactus] ORDER BY [MsgDate] DESC" 
                    UpdateCommand="UPDATE [contactus] SET [Name] = @Name, [EmailID] = @EmailID, [Phone] = @Phone, [Msg] = @Msg, [MsgDate] = @MsgDate WHERE [ContactusID] = @original_ContactusID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([EmailID] = @original_EmailID) OR ([EmailID] IS NULL AND @original_EmailID IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Msg] = @original_Msg) OR ([Msg] IS NULL AND @original_Msg IS NULL)) AND (([MsgDate] = @original_MsgDate) OR ([MsgDate] IS NULL AND @original_MsgDate IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ContactusID" Type="Decimal" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Phone" Type="Decimal" />
                        <asp:Parameter Name="Msg" Type="String" />
                        <asp:Parameter DbType="Date" Name="MsgDate" />
                        <asp:Parameter Name="original_ContactusID" Type="Decimal" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_EmailID" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="Decimal" />
                        <asp:Parameter Name="original_Msg" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_MsgDate" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Phone" Type="Decimal" />
                        <asp:Parameter Name="Msg" Type="String" />
                        <asp:Parameter DbType="Date" Name="MsgDate" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

