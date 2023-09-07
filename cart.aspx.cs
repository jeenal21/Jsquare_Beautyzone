using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class cart : System.Web.UI.Page
{
    public int p, q, total;
    SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session.Contents.Count == 0)
            {
                Session["cart"] = "cart.aspx?id=" + Request.QueryString["id"].ToString();
                Response.Redirect("login.aspx");
            }
            else
            {
                disp(Request.QueryString["id"].ToString());
            }
        }
    }

    protected void disp(string id)
    {

        //SqlConnection con = new SqlConnection(con);

        SqlDataAdapter adpt = new SqlDataAdapter("select * From product where p_id=" + id, cn);
        DataTable dt = new DataTable();
        adpt.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            //Session["price"]=dt.Rows[0]["p_price"].ToString();
            //Session["pname"] = dt.Rows[0]["p_name"].ToString();
            Session["pimg"] = dt.Rows[0]["image"].ToString();

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "CART")
        {

            Label nm = (Label)e.Item.FindControl("lblnm");
            Label price = (Label)e.Item.FindControl("lblprice");
            TextBox qty = (TextBox)e.Item.FindControl("txtqty");
            //Label tot = (Label)e.Item.FindControl("lbltot");
            int total;
            int q = int.Parse(qty.Text);
            int p = int.Parse(price.Text);
            total = p * q;
            //tot.Text = total.ToString();

            String tot = "(" + p.ToString() + "*" + q.ToString() + "=" + total.ToString() + ")";

            Image img = (Image)e.Item.FindControl("Image1");


            string pimg = img.ImageUrl.ToString();


            String pid = e.CommandArgument.ToString();

            //SqlConnection con = new SqlConnection(strcon);
            cn.Open();


            String q1 = "insert into cart(u_id,p_id,p_nm,price,qty,p_img,total) values('" + Session["unm"].ToString() + "','" + pid + "',,'" + nm.Text + "','" + price.Text + "','" + qty.Text + "','" + pimg + "','" + tot + "')";
            SqlCommand cmd = new SqlCommand(q1, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("maincart.aspx");
        }
    }
}