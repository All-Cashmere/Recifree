<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedBackThanks.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Thank you for your comments!</h2>
	<h3>Your feedback is very important to us and we'll take all your comments into consideration.</h3>
<p>
	<asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Return Home" />
</p>
</asp:Content>

