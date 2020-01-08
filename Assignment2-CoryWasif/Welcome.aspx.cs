using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Assignment2_CoryWasif
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void tbLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection
                (ConfigurationManager.ConnectionStrings["Assignment2ConnectionString3"].ConnectionString);
            conn.Open();
            string findUser = "Select count(*) from Users where Username='" + tbUsername.Text + "'";
            SqlCommand checkUser = new SqlCommand(findUser, conn);
            int value = Convert.ToInt32(checkUser.ExecuteScalar());

            if (value == 1)
            {
                string findPass = "select Password from Users where Username='" + tbUsername.Text + "'";
                SqlCommand checkPass = new SqlCommand(findPass, conn);
                string password = checkPass.ExecuteScalar().ToString();

                conn.Close();
                
                if (password == tbPassword.Text)
                {
                    Session["New"] = tbUsername.Text;
                    Response.Redirect("TicketPage.aspx");
                }
                else
                {
                    lblCheck.Visible = true;
                    lblCheck.Text = "Incorrect Password.  Please Try Again";
                    tbPassword.Text = "";
                }
            }
            else
            {
                conn.Close();
                lblCheck.Visible = true;
                lblCheck.Text = "Incorrect Username.  Please Try Again";
            }

        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            if((tbUsername.Text.Equals("Admin")) && (tbPassword.Text.Equals("Admin")))
            {
                Response.Redirect("AdminViewDatabase.aspx");
            }
            else
            {
                lblCheck.Visible = true;
                lblCheck.Text = "Incorrect administrator credentials.  Please Try Again";
                tbPassword.Text = "";
            }
        }
    }
}