<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Tell us what you think!</h2>
	<h3>We'd love to hear from you and we appreciate any questions or comments you may have.</h3>
	<table class="auto-style9">
		<tr>
			<td class="auto-style5">
				<asp:Label ID="lblName" runat="server" AssociatedControlID="txtName" Text="Name:"></asp:Label>
			</td>
			<td class="auto-style6">
				<asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox>
			</td>
			<td class="auto-style7"></td>
		</tr>
		<tr>
			<td class="auto-style3">
				<asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email:"></asp:Label>
			</td>
			<td class="auto-style4">
				<asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
			</td>
			<td class="auto-style11">
				<asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required. " ForeColor="Red"></asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="regexEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage=" Invalid email." ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
			</td>
		</tr>
		<tr>
			<td class="auto-style3">
				<asp:Label ID="lblComment" runat="server" AssociatedControlID="txtComment" Text="Comment:"></asp:Label>
			</td>
			<td class="auto-style4">
				<asp:TextBox ID="txtComment" runat="server" Height="120px" Width="250px"></asp:TextBox>
			</td>
			<td class="auto-style11">
				<asp:RequiredFieldValidator ID="reqComment" runat="server" ControlToValidate="txtComment" Display="Dynamic" ErrorMessage="Comment may not be blank." ForeColor="Red"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td class="auto-style3">
							<asp:Label ID="lblRating" runat="server" AssociatedControlID="rbRating" Text="How would you rate your experience on our website? "></asp:Label>
			</td>
			<td class="auto-style4">
				<asp:RadioButtonList ID="rbRating" runat="server" RepeatDirection="Horizontal" Width="250px">
					<asp:ListItem>1</asp:ListItem>
					<asp:ListItem>2</asp:ListItem>
					<asp:ListItem>3</asp:ListItem>
					<asp:ListItem>4</asp:ListItem>
					<asp:ListItem Value="5"></asp:ListItem>
				</asp:RadioButtonList>
			</td>
			<td class="auto-style11">
							<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rbRating" Display="Dynamic" ErrorMessage=" Rating is required." ForeColor="Red"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr>
			<td class="auto-style3">
				&nbsp;</td>
			<td class="auto-style4">
				<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
			</td>
			<td class="auto-style11">
				&nbsp;</td>
		</tr>
	</table>
	<br />
</asp:Content>

