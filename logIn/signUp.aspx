<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="logIn_signUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUsername" runat="server" Text="Username:" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                *</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Username" Display="Dynamic" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="Letters and numbers only" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                *</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email Required" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                *</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="Invalid Password" ToolTip="Must begin with a letter" ValidationExpression="^((?=.*[A-Za-z])(?=.*\d)(?=.*[\!\*])|(?=.*[A-Za-z])(?=.*[\!\*])(?=.*\d)).{8,16}$"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                *</td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password Required" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="Password did not match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSignup" runat="server" Text="Submit" OnClick="btnSignup_Click" />
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                *password must be 8 to 16 characters long, start with a letter, has at least one ! Or * in it, has as least 1 digit in it .</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:HyperLink ID="LoginLink" runat="server" NavigateUrl="~/logIn/logIn.aspx">Already A Member</asp:HyperLink>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

