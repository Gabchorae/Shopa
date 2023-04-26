<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="view feedback.aspx.cs" Inherits="view_feedback" Title="View feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            color: #CE496E;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" align="center">
        <tr>
            <td>
                <h2 class="style10">
                    View Feedback</h2>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" DataKeyNames="FeedbackId" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" 
                            SortExpression="Name" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                            SortExpression="EmailID" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" 
                            SortExpression="Phone" />
                        <asp:BoundField DataField="Websiteoverall" HeaderText="overall" 
                            SortExpression="Websiteoverall" />
                        <asp:BoundField DataField="Websitedesign" HeaderText="design" 
                            SortExpression="Websitedesign" />
                        <asp:BoundField DataField="Userfriendly" HeaderText="friendly" 
                            SortExpression="Userfriendly" />
                        <asp:BoundField DataField="Info" HeaderText="Info" 
                            SortExpression="Info" />
                        <asp:BoundField DataField="Moreproduct" HeaderText="product" 
                            SortExpression="Moreproduct" />
                        <asp:BoundField DataField="Comments" HeaderText="Comm" 
                            SortExpression="Comments" />
                        <asp:BoundField DataField="feedbackdate" HeaderText="date" 
                            SortExpression="feedbackdate" />
                        <asp:CommandField HeaderText="Click to delete" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#4A91A2" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [feedback] ORDER BY [feedbackdate] DESC" 
                    ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [feedback] WHERE [FeedbackId] = @original_FeedbackId " 
                    InsertCommand="INSERT INTO [feedback] ([Name], [EmailID], [Phone], [Websiteoverall], [Websitedesign], [Userfriendly], [Info], [Moreproduct], [Comments], [feedbackdate]) VALUES (@Name, @EmailID, @Phone, @Websiteoverall, @Websitedesign, @Userfriendly, @Info, @Moreproduct, @Comments, @feedbackdate)" 
                    OldValuesParameterFormatString="original_{0}" 
                    UpdateCommand="UPDATE [feedback] SET [Name] = @Name, [EmailID] = @EmailID, [Phone] = @Phone, [Websiteoverall] = @Websiteoverall, [Websitedesign] = @Websitedesign, [Userfriendly] = @Userfriendly, [Info] = @Info, [Moreproduct] = @Moreproduct, [Comments] = @Comments, [feedbackdate] = @feedbackdate WHERE [FeedbackId] = @original_FeedbackId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([EmailID] = @original_EmailID) OR ([EmailID] IS NULL AND @original_EmailID IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Websiteoverall] = @original_Websiteoverall) OR ([Websiteoverall] IS NULL AND @original_Websiteoverall IS NULL)) AND (([Websitedesign] = @original_Websitedesign) OR ([Websitedesign] IS NULL AND @original_Websitedesign IS NULL)) AND (([Userfriendly] = @original_Userfriendly) OR ([Userfriendly] IS NULL AND @original_Userfriendly IS NULL)) AND (([Info] = @original_Info) OR ([Info] IS NULL AND @original_Info IS NULL)) AND (([Moreproduct] = @original_Moreproduct) OR ([Moreproduct] IS NULL AND @original_Moreproduct IS NULL)) AND (([Comments] = @original_Comments) OR ([Comments] IS NULL AND @original_Comments IS NULL)) AND (([feedbackdate] = @original_feedbackdate) OR ([feedbackdate] IS NULL AND @original_feedbackdate IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_FeedbackId" Type="Decimal" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Phone" Type="Decimal" />
                        <asp:Parameter Name="Websiteoverall" Type="String" />
                        <asp:Parameter Name="Websitedesign" Type="String" />
                        <asp:Parameter Name="Userfriendly" Type="String" />
                        <asp:Parameter Name="Info" Type="String" />
                        <asp:Parameter Name="Moreproduct" Type="String" />
                        <asp:Parameter Name="Comments" Type="String" />
                        <asp:Parameter DbType="Date" Name="feedbackdate" />
                        <asp:Parameter Name="original_FeedbackId" Type="Decimal" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_EmailID" Type="String" />
                        <asp:Parameter Name="original_Phone" Type="Decimal" />
                        <asp:Parameter Name="original_Websiteoverall" Type="String" />
                        <asp:Parameter Name="original_Websitedesign" Type="String" />
                        <asp:Parameter Name="original_Userfriendly" Type="String" />
                        <asp:Parameter Name="original_Info" Type="String" />
                        <asp:Parameter Name="original_Moreproduct" Type="String" />
                        <asp:Parameter Name="original_Comments" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_feedbackdate" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="EmailID" Type="String" />
                        <asp:Parameter Name="Phone" Type="Decimal" />
                        <asp:Parameter Name="Websiteoverall" Type="String" />
                        <asp:Parameter Name="Websitedesign" Type="String" />
                        <asp:Parameter Name="Userfriendly" Type="String" />
                        <asp:Parameter Name="Info" Type="String" />
                        <asp:Parameter Name="Moreproduct" Type="String" />
                        <asp:Parameter Name="Comments" Type="String" />
                        <asp:Parameter DbType="Date" Name="feedbackdate" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

