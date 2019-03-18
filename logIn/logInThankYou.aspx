<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="logInThankYou.aspx.cs" Inherits="logIn_logInThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <meta http-equiv="refresh" content="3;url=Default.aspx" />
 <h1>You Have Successfully Login</h1>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:HyperLink ID="HomeLink" runat="server" NavigateUrl="~/index.aspx">Go to Home Page</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

