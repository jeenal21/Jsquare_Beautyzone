using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_man_fb : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    SqlDataAdapter ad;
    DataSet ds = new DataSet();
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            display();
        }
    }
    void display()
    {

        ad = new SqlDataAdapter("select *from feedback", cn);
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label no = (Label)GridView1.Rows[e.RowIndex].FindControl("Labelf");
        string f_id = no.Text;
        cn.Open();
        cmd = new SqlCommand("delete from feedback where f_id=" + f_id, cn);

        cmd.ExecuteNonQuery();
        cn.Close();
        display();
    }
}