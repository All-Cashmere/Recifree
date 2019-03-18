<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signUpThankYou.aspx.cs" Inherits="logIn_signUpThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <meta http-equiv="refresh" content="5;url=Default.aspx" />
        <h1>You Have Successfully Sign-Up</h1>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:HyperLink ID="HomeLink" runat="server" NavigateUrl="~/LoginPage.aspx">Go to Login Page</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

