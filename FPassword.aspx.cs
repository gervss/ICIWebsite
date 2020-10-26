using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataReader reader = null;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select StuPass,StuLastname,StuFirstname,StuMiddlename from Registration where StuID = @StuID and StuFContactNo = @StuFContactNo and StuMContactNo = @StuMContactNo", con);
        cmd.Parameters.AddWithValue("@StuID", TextBox1.Text);
        cmd.Parameters.AddWithValue("@StuFContactNo", TextBox2.Text);
        cmd.Parameters.AddWithValue("@StuMContactNo", TextBox3.Text);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            Label6.Text = Convert.ToString(reader["StuPass"]);
            Label11.Text = Convert.ToString(reader["StuFirstname"]);
            Label12.Text = Convert.ToString(reader["StuLastname"]);
            Label13.Text = Convert.ToString(reader["StuMiddlename"]);

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SPortal.aspx");
    }
}