using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class profilePage_recipeForm : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        /**
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string path = Server.MapPath("../Images/");

        if (FileUpload1.HasFile)
        {
            string ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                string name = "Images/" + FileUpload1.FileName;
                DateTime now = System.DateTime.Now;
                string ss = "INSERT INTO Recipe(recipe_name,recipe_timestamp,recipe_instructions,recipe_ingredients,recipe_image) values('" + txtRecipe.Text + "','" + now + "','" + txtDirection.Text + "','" + txtIngredient.Text + "','" + name + "')";

                // open the connection
                SqlCommand cmd = new SqlCommand(ss, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Label1.Text = "Your recipe has been added";
            }
            else
            {
                Label1.Text = "You have to upload jpg or png file only";

            }
        }
        else
        {
            Label1.Text = "Please select a file";
        }
    }
}