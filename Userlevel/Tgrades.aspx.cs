using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Userlevel_Tgrades : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void addbtn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("INSERT INTO subjects (subject_name) VALUES ('" + subjectnametext.Text + "')", con);

        cmd.ExecuteNonQuery();

        con.Close();

        subjectnametext.Text = "";
    }
    protected void View_Click(object sender, EventArgs e)
    {
        SqlDataReader reader = null;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select StuFirstname,StuMiddlename,StuLastname,StuGradeSection from Registration where StuID = @StuID", con);

        cmd.Parameters.AddWithValue("@StuID", studentidtext.Text);
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            fname.Text = Convert.ToString(reader["StuFirstname"]);
            mname.Text = Convert.ToString(reader["StuMiddlename"]);
            lname.Text = Convert.ToString(reader["StuLastname"]);
            section.Text = Convert.ToString(reader["StuGradeSection"]);
        }

    }
    protected void savebtn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();


        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM subjects", con);

        DataSet ds = new DataSet();

        da.Fill(ds);

        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {

            if (Request.Form["s" + ds.Tables[0].Rows[i][0].ToString()] != null)
            {
                string grade = Request.Form["g" + ds.Tables[0].Rows[i][0].ToString()];

                SqlCommand cmd = new SqlCommand("INSERT INTO grades_subject (student_id, subject_id, period_, grade_,FirstName,MiddleName,LastName,Section,Remarks,Balance) VALUES ('" + studentidtext.Text + "', '" + ds.Tables[0].Rows[i][0] + "', '" + periodtext.SelectedItem.Text + "', '" + grade + "', '" + fname.Text + "', '" + mname.Text + "', '" + lname.Text + "', '" + section.Text + "', '" + remarks.SelectedItem.Text + "', '" + balance.Text + "' )", con);

                cmd.ExecuteNonQuery();

            }


        }


        con.Close();

        studentidtext.Text = "";

    }
}