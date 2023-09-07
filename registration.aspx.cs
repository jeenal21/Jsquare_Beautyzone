using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;                              
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnregi_Click(object sender, EventArgs e)
    {
        cn.Open();
        string qry = "insert into registration values('" + txtname.Text + "','" + txtpwd.Text + "','" + txtcity.Text + "','" + txtaddress.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "')";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script>alert('Insert Success')</script>");
        Response.Redirect("login.aspx");
    }
    protected void btnclr_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtpwd.Text = "";
        txtcity.Text = "";
        txtaddress.Text = "";
        txtcontact.Text = "";
        txtemail.Text = "";
    }
}