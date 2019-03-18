<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myAccount.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Profile</h1>
    <div>
			<h2>profile picture upload/modify/delete feature would be here if possible</h2>
        	<table class="auto-style1">
				<tr>
					<td class="auto-style3">Username:
						<asp:Label ID="lblUserName" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<td class="auto-style2">E-mail: <asp:Label ID="lblEmail" runat="server"></asp:Label>
					</td>
				
				</tr>
				<tr>
					
					<td class="auto-style3">					
						<div id ="changepw_div">
						    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt">
                                <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
                            </asp:ChangePassword>
						</div>
					</td>
				</tr>
			</table>
			<table class="auto-style1">
				<tr>
					<td>
						<asp:Button ID="btnMyFavorite" runat="server" OnClick="btnMyFavorite_Click" Text="My Favorite" />
					</td>
					<td>
						<asp:Button ID="btnMyRecipe" runat="server" OnClick="btnMyRecipe_Click" Text="My Recipes" />
					</td>
				</tr>
			</table>
        </div>
</asp:Content>

