using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class BackEnd_AdHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ViewMotto_Click(object sender, EventArgs e)
    {
        SqlDataReader reader = null;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Motto from Motto where Id = 1", con);
        reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            TextBox1.Text = Convert.ToString(reader["Motto"]);
        }

        


    }
    protected void UpdateMotto_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Update Motto set Motto=@Motto where id=1", con);

        cmd.Parameters.AddWithValue("@Motto",TextBox1.Text);
        cmd.ExecuteNonQuery();
        con.Close();

        Motto.Visible = true;
        Motto.Text = "Motto was Updated!";

        TextBox1.Text = "";

    }
    protected void ViewVision_Click(object sender, EventArgs e)
    {
        SqlDataReader reader = null;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Vision from Vision where Id = 1", con);
        reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            TextBox2.Text = Convert.ToString(reader["Vision"]);
        }
    }
    protected void UpdateVision_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Update Vision set Vision=@Vision where id=1", con);

        cmd.Parameters.AddWithValue("@Vision", TextBox2.Text);
        cmd.ExecuteNonQuery();
        con.Close();

        Vision.Visible = true;
        Vision.Text = "Vision was Updated!";

        TextBox2.Text = "";

    }
    protected void ViewMission_Click(object sender, EventArgs e)
    {
        SqlDataReader reader = null;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Mission from Mission where Id = 1", con);
        reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            TextBox3.Text = Convert.ToString(reader["Mission"]);
        }
    }
    protected void UpdateMission_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Update Mission set Mission=@Mission where id=1", con);

        cmd.Parameters.AddWithValue("@Mission", TextBox3.Text);
        cmd.ExecuteNonQuery();
        con.Close();

        Mission.Visible = true;
        Mission.Text = "Mission was Updated!";

        TextBox3.Text = "";
    }
}