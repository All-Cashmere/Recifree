using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["recipe_name"] != null)
        {
            lblRecipe.Text = Session["recipe_name"].ToString();
            lblDate.Text = Session["recipe_timestamp"].ToString();
            lblIngredients.Text = Session["recipe_ingredients"].ToString();
            lblInstructions.Text = Session["recipe_instructions"].ToString();
           // lblUsername.Text = Session["recipe_id"].ToString();
            lblDate.Text = Session["recipe_timestamp"].ToString();
            //Session["recipe_image"];


        }

    }
}