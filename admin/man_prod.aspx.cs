using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_man_prod : System.Web.UI.Page
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

        ad = new SqlDataAdapter("select *from product", cn);
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label no = (Label)GridView1.Rows[e.RowIndex].FindControl("lblid");
        string p_id = no.Text;
        cn.Open();
        cmd = new SqlCommand("delete from product where p_id=" + p_id, cn);

        cmd.ExecuteNonQuery();
        cn.Close();
        display();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label no = (Label)GridView1.Rows[e.RowIndex].FindControl("lblid1");
        string p_id = no.Text;

        TextBox itemtype = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtnm");
        String name = itemtype.Text;

        TextBox cattype = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcnm");
        String catname = cattype.Text;

        TextBox stype = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsnm");
        String sname = stype.Text;

        TextBox price = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtp");
        String price1 = price.Text;

        TextBox details = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtd");
        String details1 = details.Text;

        FileUpload image = ((FileUpload)GridView1.Rows[e.RowIndex].FindControl("img"));
        String path = image.FileName.ToString();

        TextBox brands = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtb");
        String brands1 = brands.Text;


        String qry = "update product set p_nm=@pname,cat_nm=@catnm,scat_nm=@scnm,price=@price,details=@details,img=@img1,brands=@brands1 where p_id=@pid";

        cn.Open();
        cmd = new SqlCommand(qry, cn);
        cmd.Parameters.AddWithValue("@pid", p_id);
        cmd.Parameters.AddWithValue("@pname", name);
        cmd.Parameters.AddWithValue("@catnm", catname);
        cmd.Parameters.AddWithValue("@scnm", sname);
        cmd.Parameters.AddWithValue("@price", price1);
        cmd.Parameters.AddWithValue("@details", details1);
        cmd.Parameters.AddWithValue("@img1", path);
        cmd.Parameters.AddWithValue("@brands1", brands1);

        cmd.ExecuteNonQuery();
        cn.Close();
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


    protected void Add(object sender, EventArgs e)
    {
        TextBox itemtype = ((TextBox)GridView1.FooterRow.FindControl("txtaddname"));
        String iname = itemtype.Text;

        TextBox cattype = ((TextBox)GridView1.FooterRow.FindControl("txtaddcnm"));
        String cname = cattype.Text;

        TextBox sctype = ((TextBox)GridView1.FooterRow.FindControl("txtaddsnm"));
        String scname = cattype.Text;

        TextBox price = ((TextBox)GridView1.FooterRow.FindControl("txtaddp"));
        String price1 = price.Text;

        TextBox details = ((TextBox)GridView1.FooterRow.FindControl("txtadddet"));
        String details1 = details.Text;

        FileUpload image = ((FileUpload)GridView1.FooterRow.FindControl("upload"));
       
        string path = "";

        TextBox brands = ((TextBox)GridView1.FooterRow.FindControl("txtaddbr"));
        String brands1 = brands.Text;

        if (image.HasFile)
        {
            path = image.FileName.ToString();
            image.SaveAs(Server.MapPath("~/img/") + path);

            ad = new SqlDataAdapter("insert into product(p_nm,cat_nm,scat_nm,price,details,img,brands)values('" + iname + "','" + cname + "','" + scname + "','" + price1 + "','" + details1 + "','" + path + "','" + brands1 + "')", cn);
            ad.Fill(ds);
            display();
        }
    }
}