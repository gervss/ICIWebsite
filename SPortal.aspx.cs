using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SPortal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);

        string LoginStr = "Select Count(*) from Registration where StuID = '" + TextBox1.Text + "' and StuPass = '" + TextBox2.Text + "'";

        SqlCommand LoginCmd = new SqlCommand(LoginStr, con);
        con.Open();

        int ctr = Convert.ToInt32(LoginCmd.ExecuteScalar().ToString());


        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Registration WHERE StuID = '" + TextBox1.Text + "' and StuPass = '" + TextBox2.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);


        if (ctr == 1)
        {

            string sid = ds.Tables[0].Rows[0][1].ToString();

            Session["userid"] = sid;

            Session["Uname"] = TextBox1.Text;
            Session["Pass"] = TextBox2.Text;
            Response.Redirect("~/Student.aspx");

            con.Close();

        }
        else
        {
            Label5.Visible = true;
            Label5.Text = "Invalid Username/Password";


        }


        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }

    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/FPassword.aspx");
    }
}