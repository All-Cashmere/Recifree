<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="recipePage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 336px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>
                Recipe<asp:Label ID="lblRecipe" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Date<asp:Label ID="lblDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Author<asp:Label ID="lblUsername" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>--image--</td>
        </tr>
        <tr>
            <td>Ingredients:</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblIngredients" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Instructions:</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblInstructions" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    Table<br />
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">UserID<asp:Label ID="lblUser" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Rating:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Comment:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id], [comment_rating], [comment], [comment_timestamp] FROM [Comment]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="comment_rating" HeaderText="comment_rating" SortExpression="comment_rating" />
            <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />
            <asp:BoundField DataField="comment_timestamp" HeaderText="comment_timestamp" SortExpression="comment_timestamp" />
        </Columns>
    </asp:GridView>
</asp:Content>

