<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recipeForm.aspx.cs" Inherits="profilePage_recipeForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<table class="auto-style2">
        <tr>
            <td class="auto-style3">Recipe name:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtRecipe" runat="server" Width="223px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRecipe" Display="Dynamic" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Ingredients:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtIngredient" runat="server" Height="216px" Width="230px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtIngredient" Display="Dynamic" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Instructions:<br />
                (Detailed instruction would be recommended.)</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtDirection" runat="server" Height="183px" Width="230px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDirection" Display="Dynamic" ErrorMessage="This field is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Upload image:</td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="Cancel" />
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

