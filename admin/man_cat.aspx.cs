using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_man_cat : System.Web.UI.Page
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
        ad = new SqlDataAdapter("select *from category", cn);
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label no = (Label)GridView1.Rows[e.RowIndex].FindControl("lblid");
        string cid = no.Text;

        TextBox itemtype = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcname");
        String name = itemtype.Text;


        String qry = "update category set c_nm=@cname where c_id=@cid";

        cn.Open();
        cmd = new SqlCommand(qry, cn);
        cmd.Parameters.AddWithValue("@cid", cid);
        cmd.Parameters.AddWithValue("@cname", name);


        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.EditIndex = -1;
        display();

    }
   
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label no = (Label)GridView1.Rows[e.RowIndex].FindControl("lblid");
        string cid = no.Text;
        cn.Open();
        cmd = new SqlCommand("delete from category where c_id=" + cid, cn);

        cmd.ExecuteNonQuery();
        cn.Close();
        display();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        display();
    }
    protected void Add(object sender, EventArgs e)
    {
        TextBox cattype = ((TextBox)GridView1.FooterRow.FindControl("txtaddcnm"));
        String cname = cattype.Text;
        FileUpload image = ((FileUpload)GridView1.FooterRow.FindControl("upload"));

        string path = "";
        if (image.HasFile)
        {
            path = image.FileName.ToString();
            image.SaveAs(Server.MapPath("~/img/") + path);

            ad = new SqlDataAdapter("insert into category(c_nm,path)values('"  + cname + "','" + path + "')", cn);
            ad.Fill(ds);
            display();
        }
    }

}