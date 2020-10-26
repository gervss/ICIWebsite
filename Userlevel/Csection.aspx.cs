using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userlevel_Csection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Section_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        sect.Visible = true;
        sect.Text = "Successfully Added! ";
        GridView1.DataBind();
    }
}