using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection((ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString));
        con.Open();

        string cmd = "exec contact1 @Name, @Email, @message";
        SqlCommand insertuser = new SqlCommand(cmd, con);

        insertuser.Parameters.AddWithValue("@Name", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@Email", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@message", TextBox3.Text);

        insertuser.ExecuteNonQuery();

        submitted.Visible = true;
        submitted.Text = "Successfully Submited";

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";


        

    }
}