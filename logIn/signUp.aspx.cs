using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class logIn_signUp : System.Web.UI.Page
{
    //string ConnectionString = @"Data Source=(localdb)\MSSQLLocalDB; Initial Catalog= E:\ASP.NET\2017-2018\ASSIGNMENT 1\RECI\RECI\RECIFREE\RECIFREE\APP_DATA\DATABASE.MDF; Integrated Security=True;";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [User] where user_name='"+txtUsername.Text+"' ";
            SqlCommand com = new SqlCommand(checkuser, conn);
            //int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            //conn.Close();
            

            conn.Close();
        }
    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into [User] (user_name, user_Password, user_Email) values (@username, @password, @email)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@username", txtUsername.Text);
                com.Parameters.AddWithValue("@password", txtPassword.Text);
                com.Parameters.AddWithValue("@email", txtEmail.Text);

                string checkuser = "select count(*) from [User] where user_name='" + txtUsername.Text + "' ";
                SqlCommand user = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(user.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {
                    conn.Open();
                    Response.Write("User already exists");
                }
                else
                {
                    conn.Open();
                    com.ExecuteNonQuery();
                    Response.Redirect("signUpThankYou.aspx");
                    conn.Close();
                    
                }

                
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }    
    }

    // Server.Transfer("signUpThankYou.aspx");
}