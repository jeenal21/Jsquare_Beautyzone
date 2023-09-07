using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Product : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["name"].ToString() == "")
        {
            Response.Redirect("category.aspx");
        }
        else
        {
            string nm = Request.QueryString["name"].ToString();
            
            cn.Open();
            String qry = "select * from product where cat_nm=" + nm + "";
            SqlDataAdapter adpt = new SqlDataAdapter(qry, cn);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
    }
}