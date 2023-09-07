using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        cn.Open();
        string qry = "insert into feedback values('" + txtunm.Text + "','" + txtmsg.Text + "')";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("feedback.aspx");
        Response.Write("<script>alert('Thank you for feedback')</script>");
    }
    protected void btnclr_Click(object sender, EventArgs e)
    {
        txtunm.Text = "";
        txtmsg.Text = "";
    }
}