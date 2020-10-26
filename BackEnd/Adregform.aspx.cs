using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
using Microsoft.Reporting.WebForms;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class BackEnd_Adregform : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

 


    protected void Display_Click(object sender, EventArgs e)
    {
        SqlDataReader reader = null;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select StuFirstname,StuMiddlename,StuLastname,StuBirthday from Registration where StuReference = @Reference", con);
        cmd.Parameters.AddWithValue("@Reference", TextBox4.Text);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            TextBox1.Text = Convert.ToString(reader["StuFirstname"]);
            TextBox2.Text = Convert.ToString(reader["StuMiddlename"]);
            TextBox3.Text = Convert.ToString(reader["StuLastname"]);
            bday.Text = Convert.ToString(reader["StuBirthday"]);

            

        }
    }
    protected void Update_Click(object sender, EventArgs e)
    {


        if (DropDownList2.SelectedValue == "Paid")
        {
            string CountRecord = "Select count(Distinct StuID) from Registration";
            SqlCommand Countcmd = new SqlCommand(CountRecord, conn);
            conn.Open();
            int StudID = Convert.ToInt32(Countcmd.ExecuteScalar().ToString());
            string GenerateID = "";

            if (StudID < 9)
            {
                GenerateID = "CCI-" + DateTime.Now.Year.ToString() + "-000" + (StudID + 1);
            }
            else if (StudID < 100)
            {
                GenerateID = "CCI-" + DateTime.Now.Year.ToString() + "-00" + (StudID + 1);
            }

            else if (StudID < 1000)
            {
                GenerateID = "CCI-" + DateTime.Now.Year.ToString() + "-0" + (StudID + 1);
            }

            else if (StudID < 10000)
            {
                GenerateID = "CCI-" + DateTime.Now.Year.ToString() + "-" + (StudID + 1);
            }

  


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Registration set paid=@paid, StuGradeSection=@StuGradeSection, StuID=@StuID, StuPass=@StuPass where StuReference = @StuReference  ", con);

            cmd.Parameters.AddWithValue("@StuReference", TextBox4.Text);
            cmd.Parameters.AddWithValue("@paid", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@StuID", GenerateID);
            cmd.Parameters.AddWithValue("@StuGradeSection", DropDownList1.Text + "-" + DropDownList3.Text);
            cmd.Parameters.AddWithValue("@StuPass", bday.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            suces.Visible = true;
            suces.Text = "Sucessfully Updated";

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

            GridView1.DataBind();
        }

        else if (DropDownList2.SelectedValue == "Unpaid")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Registration set paid=@paid where StuReference = @StuReference  ", con);

            cmd.Parameters.AddWithValue("@StuReference", TextBox4.Text);
            cmd.Parameters.AddWithValue("@paid", DropDownList2.Text);
         
            suces.Visible = true;
            suces.Text = "The student is not yet paid";

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            GridView1.DataBind();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        
            
     

    }
}