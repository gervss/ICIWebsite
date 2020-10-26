using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class BackEnd_Adyear : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void year_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();
        string cmd = "Insert into year values(@year)";
        SqlCommand insert = new SqlCommand(cmd, con);

        insert.Parameters.AddWithValue("@year", TextBox1.Text);
        insert.ExecuteNonQuery();
        con.Close();

       
        TextBox1.Text = "";
        GridView1.DataBind();
    }
}