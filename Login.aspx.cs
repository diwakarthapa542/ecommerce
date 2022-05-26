using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {

        FxLogin();

    }

    private void FxLogin()
    {

        string sql = "";

        sql = @"select * from UserTable where ClientUserName='" + txtusername.Text + "' and Password='" + txtpassword.Text + "'";

        string myconnection = ConfigurationManager.ConnectionStrings["CoreConnectionString"].ConnectionString;
        SqlConnection myconn = new SqlConnection(myconnection);

        //MySqlDataAdapter mydata = new MySqlDataAdapter();
        SqlDataReader myreader;

        SqlCommand SelectCommand = new SqlCommand(sql, myconn);
        try
        {
            myconn.Open();

            myreader = SelectCommand.ExecuteReader();
            // int count = 0;
            if (myreader.HasRows) //returing false but i have 4 row
            {
                while (myreader.Read()) //returing false 
                {
                    Session["ClientGUID"] = myreader["ClientGUID"].ToString();
                    Session["ClientUserName"] = myreader["ClientUserName"].ToString();
                    Session["UserName"] = myreader["UserName"].ToString();
                    Session["CompanyName"] = myreader["CompanyName"].ToString();
                    Session["RoleId"] = myreader["RoleId"].ToString();

                    Response.Redirect("Dashboard.aspx");
                }
            }
            else
            {

                //login failed//user not found
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('Sorry!! User Not Found')", true);

            }

        }
        catch (Exception ex)
        {

        }

        finally
        {
            myconn.Close();
        }

    }


}