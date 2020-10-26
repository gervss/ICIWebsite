using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Uname"] != null)
        {
            Label5.Text = Session["Uname"].ToString();
        }
        else
        {
            Response.Redirect("~/SPortal.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Uname"] = null;
        Response.Redirect("~/Home.aspx");
    }
}
