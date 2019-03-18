<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="logIn.aspx.cs" Inherits="logIn_logIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="lblUsername" runat="server" Text="Username/Email:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Username or email required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblUserError" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblPassError" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnLoginSubmit" runat="server" Text="Submit" OnClick="btnLoginSubmit_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Reset1" type="reset" value="reset" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                <asp:HyperLink ID="SignupLink" runat="server" NavigateUrl="~/logIn/signUp.aspx">Not a member?</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

