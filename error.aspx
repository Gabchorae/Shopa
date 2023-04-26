<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error" Title="Error Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            color: #E43D42;
        }
        .style12
        {
            color: #E33A3E;
        }
        .style13
        {
            color: #E4393C;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span class="style11">You are not logged in. Please login to access the page. 
        </span><span class="style13">Click</span>
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">here</asp:LinkButton>
&nbsp;<span class="style12">to login.</span></p>
</asp:Content>

