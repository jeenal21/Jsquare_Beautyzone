using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            lblmsg.Text = "*** Login For Authorized person ***";
            lblmsg.ForeColor = System.Drawing.Color.Navy;
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        String qry = "select name,password from registration where name='" + txtname.Text + "' AND password='" + txtpwd.Text + "'";

        SqlDataAdapter adpt = new SqlDataAdapter(qry, cn);
        DataTable dt = new DataTable();
        adpt.Fill(dt);


        if (dt.Rows.Count == 1)
        {
            String str = "";
            if (Session.Contents.Count != 0)
            {
                str += Session["cart"].ToString();
            }
            Session["u_id"] = dt.Rows[0][0].ToString();
            Session["u_nm"] = dt.Rows[0][1].ToString();

            if (str == "" || str == null)
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Redirect(str);
            }
        }
        else
        {
            Response.Write("<script language='javascript'>alert('invalid username or password')</script>");
        }

    }
    
}