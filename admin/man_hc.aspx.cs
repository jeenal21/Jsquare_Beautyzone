using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_man_hc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
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

        ad = new SqlDataAdapter("select *from haircare", con);
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label no = (Label)GridView1.Rows[e.RowIndex].FindControl("Label2");
        string hc_id = no.Text;
        con.Open();
        cmd= new SqlCommand("delete from haircare where hc_id=" + hc_id, con);

        cmd.ExecuteNonQuery();
        con.Close();
        display();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label no = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        string hc_id = no.Text;

        TextBox itemtype = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcname");
        String name = itemtype.Text;


        String qry = "update haircare set hc_nm=@hcname where hc_id=@hcid";

        con.Open();
        cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@hcid", hc_id);
        cmd.Parameters.AddWithValue("@hcname", name);


        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        display();

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView1.EditIndex = e.NewEditIndex;
        display();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        display();
    }
}