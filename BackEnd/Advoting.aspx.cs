using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BackEnd_Voting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {







    }


 
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection((ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString));
        con.Open();

        string cmd = "exec Voting1 @President,@VicePresident,@Secretary,@Treasurer,@Auditor,@PRO,@Firstyear,@Secondyear,@Thirdyear,@Fourthyear";
        SqlCommand insertuser = new SqlCommand(cmd, con);



        insertuser.Parameters.AddWithValue("@President", TextBox1.Text);
        insertuser.Parameters.AddWithValue("@VicePresident", TextBox2.Text);
        insertuser.Parameters.AddWithValue("@Secretary", TextBox3.Text);
        insertuser.Parameters.AddWithValue("@Treasurer", TextBox4.Text);
        insertuser.Parameters.AddWithValue("@Auditor", TextBox5.Text);
        insertuser.Parameters.AddWithValue("@PRO", TextBox6.Text);
        insertuser.Parameters.AddWithValue("@Firstyear", TextBox7.Text);
        insertuser.Parameters.AddWithValue("@Secondyear", TextBox8.Text);
        insertuser.Parameters.AddWithValue("@Thirdyear", TextBox9.Text);
        insertuser.Parameters.AddWithValue("@Fourthyear", TextBox10.Text);

        insertuser.ExecuteNonQuery();
        GridView1.DataBind();
        con.Close();

        success.Visible = true;
        success.Text = "Successfully Addedd";

    }
}