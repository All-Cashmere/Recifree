using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { /**
        if (Session["New"] != null)
        {
            Response.Redirect("myRecipe.aspx");
        }
        else
        {
            Response.Redirect("../logIn/logIn.aspx");
        }
    **/
    }

 

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string recipe_name = GridView3.SelectedRow.Cells[1].Text;
        string recipe_timestamp = GridView3.SelectedRow.Cells[2].Text;
        string recipe_rating = GridView3.SelectedRow.Cells[3].Text;
        string recipe_ingredients = GridView3.SelectedRow.Cells[4].Text;
        string recipe_instructions = GridView3.SelectedRow.Cells[5].Text;
        string recipe_image = GridView3.SelectedRow.Cells[6].Text;
        string user_id = GridView3.SelectedRow.Cells[7].Text;


        Session["recipe_name"] = recipe_name;
        Session["recipe_timestamp"] = recipe_timestamp;
        Session["recipe_rating"] = recipe_rating;
        Session["recipe_ingredients"] = recipe_ingredients;
        Session["recipe_instructions"] = recipe_instructions;
        Session["recipe_image"] = recipe_image;
        Session["user_id"] = user_id;

        Response.Redirect(string.Format("detailRecipe.aspx?index={0}", GridView3.SelectedIndex));

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("recipeForm.aspx");
    }
}