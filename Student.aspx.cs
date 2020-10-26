using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (Session["Uname"] != null)
        {

            Label8.Text = Session["pass"].ToString(); ;
           
            Label7.Text = Session["Uname"].ToString();
        }
        else
        {
            Response.Redirect("~/SPortal.aspx");
        }
    }

 




    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Label8.Text == TextBox1.Text)
        {
            SqlDataSource2.Update();
            Label9.Visible = true;
            Label9.Text = "Password Changed";
            this.FormView1.DataBind();



        }
        else
        {
            Label9.Visible = true;
            Label9.Text = "Old Password does not match";
        }

        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        FormView1.Visible = true;
        changepass.Visible = false;
        oldpass.Visible = false;
        newpass.Visible = false;
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        Button4.Visible = false;
        Button3.Visible = false;
        Label9.Visible = false;

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        FormView1.Visible = false;
        changepass.Visible = true;
        oldpass.Visible = true;
        newpass.Visible = true;
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        Button4.Visible = true;
        Button2.Visible = false;
        Button3.Visible = true;
    }
}
