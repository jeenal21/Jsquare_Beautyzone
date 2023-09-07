using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class details : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        //String strid = Request.QueryString["name"];
        String strid = Request.QueryString["id"];



        cn.Open();
        SqlDataAdapter adpt = new SqlDataAdapter("select * from product where p_id=" + strid, cn);
        DataTable dt = new DataTable();
        adpt.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
        }
    }
}