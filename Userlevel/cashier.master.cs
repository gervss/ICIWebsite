using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userlevel_cashier : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Uname"] != null)
        {

        }
        else
        {
            Response.Redirect("~/BackEnd/admin.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Uname"] = null;
        Response.Redirect("~/BackEnd/admin.aspx");
    }
}
