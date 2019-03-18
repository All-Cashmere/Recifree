using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string usernameQuery = "select user_name from [User] where user_id='" + Session["New"] + "' ";
            string emailQuery = "select user_Email from [User] where user_id='" + Session["New"] + "' ";
            SqlCommand usercom = new SqlCommand(usernameQuery, con);
            SqlCommand emailcom = new SqlCommand(emailQuery, con);
            string username = usercom.ExecuteScalar().ToString();
            string email = emailcom.ExecuteScalar().ToString();

            lblUserName.Text = username;
            lblEmail.Text = email;
        }
        else
        {
            Response.Redirect("../logIn/signUp.aspx");
        }
    }

    protected void btnMyRecipe_Click(object sender, EventArgs e)
    {
        Server.Transfer("myRecipe.aspx");
    }

    protected void btnMyFavorite_Click(object sender, EventArgs e)
    {
        Server.Transfer("/favorite/Default.aspx");
    }
}