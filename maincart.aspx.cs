using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class maincart : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session.Contents.Count >= 0)
            {
                showcart();
            }

        }
    }
    protected void showcart()
    {
        //SqlConnection con = new SqlConnection(strcon);
        cn.Open();
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
    protected void btnShopping_Click(object sender, EventArgs e)
    {
        Response.Redirect("product.aspx");
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "DELETE")
        {

            //SqlConnection con = new SqlConnection(strcon);
            cn.Open();
            string qry = "DELETE FROM cart WHERE p_id='" + e.CommandArgument + "'";
            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("maincart.aspx");
            Response.Write("<script>alert('DELETE Success')</script>");
        }
    }
    protected void btnCheck_Click(object sender, EventArgs e)
    {
        Response.Redirect("bill.aspx");
    }

}