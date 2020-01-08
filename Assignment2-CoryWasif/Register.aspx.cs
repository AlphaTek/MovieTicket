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
    public partial class Register : System.Web.UI.Page
    {
        protected void clearSelection()
        {
            tbUsername.Text = "";
            tbPassword.Text = "";
            tbFirst.Text = "";
            tbLast.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                
            }
        }

        protected void ibSubmit_Click(object sender, ImageClickEventArgs e)
        {
            
            try
            {
                lblExist.Visible = false;
                SqlConnection conn = new SqlConnection
                    (ConfigurationManager.ConnectionStrings["Assignment2ConnectionString3"].ConnectionString);
                conn.Open();
                
                string userCheck = "select count(*) from Users where Username='" + tbUsername.Text + "'";
                SqlCommand userExists = new SqlCommand(userCheck, conn);

                int check = Convert.ToInt32(userExists.ExecuteScalar());

                if (check == 1)
                {
                    lblExist.Visible = true;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                    clearSelection();
                }
                else
                {
                    string addUser = "Insert into Users (Username, Password, FirstName, LastName)" +
                        "values (@Username, @Password, @FirstName, @LastName)";
                    SqlCommand insertUser = new SqlCommand(addUser, conn);

                    insertUser.Parameters.AddWithValue("@Username", tbUsername.Text);
                    insertUser.Parameters.AddWithValue("@Password", tbPassword.Text);
                    insertUser.Parameters.AddWithValue("@FirstName", tbFirst.Text);
                    insertUser.Parameters.AddWithValue("@LastName", tbLast.Text);

                    insertUser.ExecuteNonQuery();
                    string script = "alert(\"Successfully Registered\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                    Response.Redirect("TicketPage.aspx");
                }
                conn.Close();
            }catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}