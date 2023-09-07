using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_man_mk : System.Web.UI.Page
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

        ad = new SqlDataAdapter("select *from makeup", con);
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label no = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        string mk_id = no.Text;
        con.Open();
        cmd = new SqlCommand("delete from makeup where mk_id=" + mk_id, con);

        cmd.ExecuteNonQuery();
        con.Close();
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
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label no = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
        string mk_id = no.Text;

        TextBox itemtype = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcname");
        String name = itemtype.Text;


        String qry = "update makeup set mk_nm=@mkname where mk_id=@mkid";

        con.Open();
        cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@mkid", mk_id);
        cmd.Parameters.AddWithValue("@mkname", name);


        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        display();

    }
}