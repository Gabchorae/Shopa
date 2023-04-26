<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showcart.aspx.cs" Inherits="showcart" Title="Show Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: #507619;
        }
        .style13
        {
            color: #507619;
        }
        .style14
        {
            color: #507619;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" width="100%">
        <tr>
            <td>
                        Your Shopping Cart</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Panel ID="Panel1" runat="server">
             
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="SrNo" DataSourceID="SqlDataSource1" 
                            onrowdeleted="GridView1_RowDeleted" CellPadding="4" ForeColor="#333333" 
                            GridLines="None">
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <Columns>
                                <asp:ImageField DataImageUrlField="ProductPic" 
                                    DataImageUrlFormatString="Products/{0}" HeaderText="Product Picture">
                                    <ControlStyle Height="150px" Width="150px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                                    SortExpression="ProductName" />
                                <asp:BoundField DataField="Rate" HeaderText="Rate" SortExpression="Rate" />
                                <asp:BoundField DataField="Quality" HeaderText="Quality" 
                                    SortExpression="Quality" />
                                <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" 
                                    SortExpression="TotalCost" />
                                <asp:CommandField ButtonType="Image" 
                                    DeleteImageUrl="~/images/icon_delete_small_color.png" 
                                    HeaderText="Click to delete" ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#999999" />
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        </asp:GridView>
                
                 
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [addtocart] WHERE [SrNo] = @original_SrNo " 
                            InsertCommand="INSERT INTO [addtocart] ([ProductName], [Rate], [Quality], [TotalCost], [ProductPic], [SessionId], [ProductID]) VALUES (@ProductName, @Rate, @Quality, @TotalCost, @ProductPic, @SessionId, @ProductID)" 
                            OldValuesParameterFormatString="original_{0}" 
                            onselected="SqlDataSource1_Selected" 
                            SelectCommand="SELECT * FROM [addtocart] WHERE ([SessionId] = @SessionId)" 
                            UpdateCommand="UPDATE [addtocart] SET [ProductName] = @ProductName, [Rate] = @Rate, [Quality] = @Quality, [TotalCost] = @TotalCost, [ProductPic] = @ProductPic, [SessionId] = @SessionId, [ProductID] = @ProductID WHERE [SrNo] = @original_SrNo AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Rate] = @original_Rate) OR ([Rate] IS NULL AND @original_Rate IS NULL)) AND (([Quality] = @original_Quality) OR ([Quality] IS NULL AND @original_Quality IS NULL)) AND (([TotalCost] = @original_TotalCost) OR ([TotalCost] IS NULL AND @original_TotalCost IS NULL)) AND (([ProductPic] = @original_ProductPic) OR ([ProductPic] IS NULL AND @original_ProductPic IS NULL)) AND (([SessionId] = @original_SessionId) OR ([SessionId] IS NULL AND @original_SessionId IS NULL)) AND (([ProductID] = @original_ProductID) OR ([ProductID] IS NULL AND @original_ProductID IS NULL))">
                            <SelectParameters>
                                <asp:SessionParameter Name="SessionId" SessionField="sid" Type="String" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="original_SrNo" Type="Decimal" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Rate" Type="String" />
                                <asp:Parameter Name="Quality" Type="Decimal" />
                                <asp:Parameter Name="TotalCost" Type="Decimal" />
                                <asp:Parameter Name="ProductPic" Type="String" />
                                <asp:Parameter Name="SessionId" Type="String" />
                                <asp:Parameter Name="ProductID" Type="String" />
                                <asp:Parameter Name="original_SrNo" Type="Decimal" />
                                <asp:Parameter Name="original_ProductName" Type="String" />
                                <asp:Parameter Name="original_Rate" Type="String" />
                                <asp:Parameter Name="original_Quality" Type="Decimal" />
                                <asp:Parameter Name="original_TotalCost" Type="Decimal" />
                                <asp:Parameter Name="original_ProductPic" Type="String" />
                                <asp:Parameter Name="original_SessionId" Type="String" />
                                <asp:Parameter Name="original_ProductID" Type="String" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Rate" Type="String" />
                                <asp:Parameter Name="Quality" Type="Decimal" />
                                <asp:Parameter Name="TotalCost" Type="Decimal" />
                                <asp:Parameter Name="ProductPic" Type="String" />
                                <asp:Parameter Name="SessionId" Type="String" />
                                <asp:Parameter Name="ProductID" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                  
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <span class="style12" __designer:mapid="1c3">Grand Total&nbsp; :</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                   
                        &nbsp;<span class="style13" __designer:mapid="1c5"><b 
                    __designer:mapid="1cb">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Discount :</b></span>&nbsp;
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                  
                        &nbsp;<span class="style14" __designer:mapid="1c7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Remaining Cost&nbsp;:</span>&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    
                        </td>
        </tr>
        <tr>
            <td align="center">
                    
                        <asp:LinkButton ID="LinkButton2" runat="server" 
                    onclick="LinkButton2_Click">Check 
                        Out</asp:LinkButton>
                 
                &nbsp;&nbsp;&nbsp;
                    
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                    onclick="LinkButton1_Click">Continue 
                        Shopping</asp:LinkButton>
                    
                        </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

