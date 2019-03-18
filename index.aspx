<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <img alt="Recifree Banner" class="auto-style1" src="~/Images/recifree.png" style="width: 750px; height: 226px;" runat="server"/></p>
    <p>
        No of favorites
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/favorite/Default.aspx">Show Favorites</asp:HyperLink>
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" DataKeyField="recipe_id">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("recipe_id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("recipe_name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("recipe_image") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Ingredients:</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("recipe_ingredients") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            Instructions:</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("recipe_instructions") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("recipe_id")%>' CommandName="addToFav" Height="20px" ImageUrl="~/Images/fav.png" Width="20px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [recipe_name], [recipe_ingredients], [recipe_image], [recipe_instructions], [recipe_id] FROM [Recipe]"></asp:SqlDataSource>
    </p>
</asp:Content>

