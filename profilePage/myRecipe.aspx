<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myRecipe.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<style type="text/css">
		.auto-style1 {
			margin-right: 0px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <br />
    <h3>My Recipes</h3>
    <div>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Add A Recipe" />

        </div>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Recipe]"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Recipe]"></asp:SqlDataSource>
		 <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataKeyNames="recipe_id" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="1275px">
			 <Columns>
				 <asp:BoundField DataField="recipe_id" HeaderText="recipe_id" InsertVisible="False" ReadOnly="True" SortExpression="recipe_id" />
				 <asp:BoundField DataField="recipe_name" HeaderText="recipe_name" SortExpression="recipe_name" />
				 <asp:BoundField DataField="recipe_timestamp" HeaderText="recipe_timestamp" SortExpression="recipe_timestamp" />
				 <asp:BoundField DataField="recipe_rating" HeaderText="recipe_rating" SortExpression="recipe_rating" />
				 <asp:BoundField DataField="recipe_ingredients" HeaderText="recipe_ingredients" SortExpression="recipe_ingredients" />
				 <asp:BoundField DataField="recipe_instructions" HeaderText="recipe_instructions" SortExpression="recipe_instructions" />
				 <asp:BoundField DataField="recipe_image" HeaderText="recipe_image" SortExpression="recipe_image" />
				 <asp:CommandField ButtonType="Button" SelectText="Recipe with Details" ShowSelectButton="True" />
				 <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
			 </Columns>
			 <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
			 <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
			 <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
			 <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
			 <SortedAscendingCellStyle BackColor="#F7F7F7" />
			 <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
			 <SortedDescendingCellStyle BackColor="#E5E5E5" />
			 <SortedDescendingHeaderStyle BackColor="#242121" />
		 </asp:GridView>
         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="recipe_id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" AllowPaging="True" AllowSorting="True">
             <Columns>
                 <asp:BoundField DataField="recipe_id" HeaderText="recipe_id" InsertVisible="False" ReadOnly="True" SortExpression="recipe_id" />
                 <asp:BoundField DataField="recipe_name" HeaderText="recipe_name" SortExpression="recipe_name" />
                 <asp:BoundField DataField="recipe_timestamp" HeaderText="recipe_timestamp" SortExpression="recipe_timestamp" />
                 <asp:BoundField DataField="recipe_rating" HeaderText="recipe_rating" SortExpression="recipe_rating" />
                 <asp:BoundField DataField="recipe_ingredients" HeaderText="recipe_ingredients" SortExpression="recipe_ingredients" />
				 <asp:BoundField DataField="recipe_instructions" HeaderText="recipe_instructions" SortExpression="recipe_instructions" />
				 <asp:BoundField DataField="recipe_image" HeaderText="recipe_image" SortExpression="recipe_image" />
				 <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
				 <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
             </Columns>
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
         </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Recipe] WHERE [recipe_id] = @original_recipe_id AND [recipe_name] = @original_recipe_name AND (([recipe_timestamp] = @original_recipe_timestamp) OR ([recipe_timestamp] IS NULL AND @original_recipe_timestamp IS NULL)) AND (([recipe_rating] = @original_recipe_rating) OR ([recipe_rating] IS NULL AND @original_recipe_rating IS NULL)) AND [recipe_ingredients] = @original_recipe_ingredients AND [recipe_instructions] = @original_recipe_instructions AND (([recipe_image] = @original_recipe_image) OR ([recipe_image] IS NULL AND @original_recipe_image IS NULL)) AND (([user_id] = @original_user_id) OR ([user_id] IS NULL AND @original_user_id IS NULL))" InsertCommand="INSERT INTO [Recipe] ([recipe_name], [recipe_timestamp], [recipe_rating], [recipe_ingredients], [recipe_instructions], [recipe_image], [user_id]) VALUES (@recipe_name, @recipe_timestamp, @recipe_rating, @recipe_ingredients, @recipe_instructions, @recipe_image, @user_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Recipe]" UpdateCommand="UPDATE [Recipe] SET [recipe_name] = @recipe_name, [recipe_timestamp] = @recipe_timestamp, [recipe_rating] = @recipe_rating, [recipe_ingredients] = @recipe_ingredients, [recipe_instructions] = @recipe_instructions, [recipe_image] = @recipe_image, [user_id] = @user_id WHERE [recipe_id] = @original_recipe_id AND [recipe_name] = @original_recipe_name AND (([recipe_timestamp] = @original_recipe_timestamp) OR ([recipe_timestamp] IS NULL AND @original_recipe_timestamp IS NULL)) AND (([recipe_rating] = @original_recipe_rating) OR ([recipe_rating] IS NULL AND @original_recipe_rating IS NULL)) AND [recipe_ingredients] = @original_recipe_ingredients AND [recipe_instructions] = @original_recipe_instructions AND (([recipe_image] = @original_recipe_image) OR ([recipe_image] IS NULL AND @original_recipe_image IS NULL)) AND (([user_id] = @original_user_id) OR ([user_id] IS NULL AND @original_user_id IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_recipe_id" Type="Int32" />
            <asp:Parameter Name="original_recipe_name" Type="String" />
            <asp:Parameter DbType="Date" Name="original_recipe_timestamp" />
            <asp:Parameter Name="original_recipe_rating" Type="Int32" />
            <asp:Parameter Name="original_recipe_ingredients" Type="String" />
            <asp:Parameter Name="original_recipe_instructions" Type="String" />
            <asp:Parameter Name="original_recipe_image" Type="String" />
            <asp:Parameter Name="original_user_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="recipe_name" Type="String" />
            <asp:Parameter DbType="Date" Name="recipe_timestamp" />
            <asp:Parameter Name="recipe_rating" Type="Int32" />
            <asp:Parameter Name="recipe_ingredients" Type="String" />
            <asp:Parameter Name="recipe_instructions" Type="String" />
            <asp:Parameter Name="recipe_image" Type="String" />
            <asp:Parameter Name="user_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="recipe_name" Type="String" />
            <asp:Parameter DbType="Date" Name="recipe_timestamp" />
            <asp:Parameter Name="recipe_rating" Type="Int32" />
            <asp:Parameter Name="recipe_ingredients" Type="String" />
            <asp:Parameter Name="recipe_instructions" Type="String" />
            <asp:Parameter Name="recipe_image" Type="String" />
            <asp:Parameter Name="user_id" Type="Int32" />
            <asp:Parameter Name="original_recipe_id" Type="Int32" />
            <asp:Parameter Name="original_recipe_name" Type="String" />
            <asp:Parameter DbType="Date" Name="original_recipe_timestamp" />
            <asp:Parameter Name="original_recipe_rating" Type="Int32" />
            <asp:Parameter Name="original_recipe_ingredients" Type="String" />
            <asp:Parameter Name="original_recipe_instructions" Type="String" />
            <asp:Parameter Name="original_recipe_image" Type="String" />
            <asp:Parameter Name="original_user_id" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
         <br />
         <br />
    	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [recipe_id], [recipe_name], [recipe_image] FROM [Recipe]">
        </asp:SqlDataSource>
    	<asp:GridView ID="GridView1" runat="server" Height="292px" Width="715px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="recipe_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="recipe_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="recipe_id" />
                <asp:BoundField DataField="recipe_name" HeaderText="Recipe" SortExpression="recipe_name" />
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("recipe_image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
		</asp:GridView>
    </asp:Content>

