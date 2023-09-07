using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\jsquare_6\App_Data\jdb.mdf;Integrated Security=True;User Instance=True");
        SqlDataAdapter sda = new SqlDataAdapter("select * from admin where username='" + txtnm.Text + "' and password='" + txtpass.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["username"] = txtnm.Text;
            Response.Write("<script> alert('welcome in adminpanel')</script>");

            Response.Redirect("Home.aspx");

        }
        else
        {
            Response.Write("<script> alert('your username or password is incorrect')</script>");

        }
    }
}
  
  