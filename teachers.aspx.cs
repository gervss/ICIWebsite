using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class teachers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection((ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString));
        con.Open();

        string select = "Select * from Question";
        SqlCommand cmd = new SqlCommand(select, con);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;

        DataSet ds = new DataSet();
        da.Fill(ds);

        Label31.Text = ds.Tables[0].Rows[0]["Question1"].ToString();
        Label32.Text = ds.Tables[0].Rows[0]["Question2"].ToString();
        Label33.Text = ds.Tables[0].Rows[0]["Question3"].ToString();
        Label34.Text = ds.Tables[0].Rows[0]["Question4"].ToString();
        Label35.Text = ds.Tables[0].Rows[0]["Question5"].ToString();

    }



    protected void Button2_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection((ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString));
        conn.Open();



        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM statusEval WHERE userid = '" + Session["userid"] + "'", conn);
        DataSet ds = new DataSet();
        da.Fill(ds);

        int r = ds.Tables[0].Rows.Count;

        if (r < 1)
        {
            SqlConnection con = new SqlConnection((ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString));
            con.Open();

            string cmd = "insert into Eval (Q1,Q2,Q3,Q4,Q5) values(@Q1,@Q2,@Q3,@Q4,@Q5)";
            SqlCommand insertuser = new SqlCommand(cmd, con);

            insertuser.Parameters.AddWithValue("@Q1", RadioButtonList1.SelectedValue);
            insertuser.Parameters.AddWithValue("@Q2", RadioButtonList2.SelectedValue);
            insertuser.Parameters.AddWithValue("@Q3", RadioButtonList3.SelectedValue);
            insertuser.Parameters.AddWithValue("@Q4", RadioButtonList4.SelectedValue);
            insertuser.Parameters.AddWithValue("@Q5", RadioButtonList5.SelectedValue);
            insertuser.ExecuteNonQuery();


            SqlCommand c = new SqlCommand("INSERT INTO statusEval (userid, status) VALUES (@userid, @status)", con);

            c.Parameters.AddWithValue("@userid", Session["userid"]);
            c.Parameters.AddWithValue("@status", "evaluated");

            c.ExecuteNonQuery();



            con.Close();

                    

            Label30.Visible = true;
            Label30.Text = "Success";
        }

        else
        {
            Label30.Visible = true;
            Label30.Text = "<span style='color: red;'>Error: Sorry you are done evaluating</span>";
        }



      
    }


}