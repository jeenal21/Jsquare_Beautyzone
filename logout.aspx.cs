using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        Session.Remove("u_name");
        Session.Remove("u_id");
        Session.RemoveAll();

        Response.Redirect("home.aspx");

    }    
}