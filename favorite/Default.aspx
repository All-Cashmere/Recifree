<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Favorite page</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Here are your favorite recipes"></asp:Label>
    </p>
    <p>
        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Go Back To Home Page</asp:HyperLink>
    </p>
<p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="200px" Width="200px" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField HeaderText="num" DataField="num" />
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" />
                <asp:TemplateField HeaderText="Image">                  
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("recipe_image") %>' Width="200px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
    </p>
</asp:Content>

