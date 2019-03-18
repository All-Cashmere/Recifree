<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search Recipe" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="recipe_name" HeaderText="recipe_name" SortExpression="recipe_name" />
            <asp:BoundField DataField="recipe_ingredients" HeaderText="recipe_ingredients" SortExpression="recipe_ingredients" />
            <asp:BoundField DataField="recipe_image" HeaderText="recipe_image" SortExpression="recipe_image" />
            <asp:BoundField DataField="recipe_instructions" HeaderText="recipe_instructions" SortExpression="recipe_instructions" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [recipe_name], [recipe_ingredients], [recipe_image], [recipe_instructions] FROM [Recipe] WHERE (([recipe_name] LIKE '%' + @recipe_name + '%') AND ([recipe_ingredients] LIKE '%' + @recipe_ingredients + '%'))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="recipe_name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox1" Name="recipe_ingredients" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

