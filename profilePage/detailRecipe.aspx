<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detailRecipe.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
			height: 28px;
		}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<table class="auto-style2">
        <tr>
            <td class="auto-style4">
                Recipe: <asp:Label ID="lblRecipe" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Date: <asp:Label ID="lblDate" runat="server"></asp:Label>
            	&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                Author: <asp:Label ID="lblUsername" runat="server"></asp:Label>
            	</td>
        </tr>
        <tr>
            <td>Ingredients:<br />
			</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblIngredients" runat="server"></asp:Label>
            	<br />
            </td>
        </tr>
        <tr>
            <td>Instructions:<br />
			</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblInstructions" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

