using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class bill : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            if (Session.Contents.Count >= 0)
            {
                showcart();
                counttotal();
                lbluser.Text = Session["u_id"].ToString();
            }

        }
     }
    protected void showcart()
    {
        String qry = "select * from cart where u_id='" + Session["u_id"].ToString() + "'";
        SqlDataAdapter adpt = new SqlDataAdapter(qry, cn);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }


    protected void counttotal()
    {
        int total = 0;
        int val;
        String qry = "select * from cart where u_id='" + Session["u_id"].ToString() + "'";
        SqlDataAdapter adpt = new SqlDataAdapter(qry, cn);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                String str = dt.Rows[i]["total"].ToString();
                String[] abc = str.Split('=');
                String v = abc[1].Remove(abc[1].Length - 1);
                val = int.Parse(v);
                total += val;
            }

            Label2.Text = total.ToString();
        }
    }
    protected void btnCheck_Click(object sender, EventArgs e)
    {
       // Response.Redirect("Default2.aspx");
    }
}