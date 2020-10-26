using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Step2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Labels1.Text = Convert.ToString(Session["last"]);
        Labels2.Text = Convert.ToString(Session["first"]);
        Labels3.Text = Convert.ToString(Session["mid"]);
    }
}