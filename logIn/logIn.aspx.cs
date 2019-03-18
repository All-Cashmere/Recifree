using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class logIn_logIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLoginSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from [User] where user_name='" + txtUsername.Text + "' ";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string passwordQuery = "select user_Password from [User] where user_name='" + txtUsername.Text + "' ";
            SqlCommand passCom = new SqlCommand(passwordQuery, conn);
            string password = passCom.ExecuteScalar().ToString();
            if (password == txtPassword.Text)
            {
                string IdQuery = "select user_id from [User] where user_name='" + txtUsername.Text + "' ";
                SqlCommand IdCom = new SqlCommand(IdQuery, conn);
                string id = IdCom.ExecuteScalar().ToString();
                Session["New"] = id;
                Response.Redirect("logInThankYou.aspx");
            }
            else
            {
                lblPassError.Text = "Incorrect Password";
            }
        }
        else
        {
            lblUserError.Text = "Incorrect Username";
        }
    }
    //Server.Transfer("logInThankYou.aspx");
}