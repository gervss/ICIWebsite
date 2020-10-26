using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Grade : System.Web.UI.Page
{


    public string fl, eng, ma, ap, mapeh, sc, tle, bal, rem, student_id, fname, yc;


    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Uname"] != null)
        {
            Label10.Text = Session["Uname"].ToString();
        }
        else
        {
            Response.Redirect("~/SPortal.aspx");
        }



        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();

        da = new SqlDataAdapter("SELECT * FROM grades_subject WHERE student_id = '"+ Label10.Text +"' AND period_ = 'First Grading'", con);

        ds = new DataSet();

        da.Fill(ds);


        if (ds.Tables[0].Rows.Count > 0)
        {

            student_id = ds.Tables[0].Rows[0][1].ToString();

            fname = ds.Tables[0].Rows[0][7].ToString() + ", " + ds.Tables[0].Rows[0][5].ToString() + " " + ds.Tables[0].Rows[0][6].ToString();
            yc = ds.Tables[0].Rows[0][8].ToString();
            bal = ds.Tables[0].Rows[0][10].ToString();
            rem = ds.Tables[0].Rows[0][9].ToString();
           
        }
        else
        {


            fl = "0";
            eng = "0";
            ma = "0";
            ap = "0";
            mapeh = "0";
            sc = "0";
            tle = "0";

            bal = "0";

            rem = "<span style='color: red;'>No Records Found</span>";
        }


        con.Close();

    }


    protected void viewbtn_Click(object sender, EventArgs e)
    {





    }
    protected void gradingtext_SelectedIndexChanged(object sender, EventArgs e)
    {

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
        con.Open();

        da = new SqlDataAdapter("SELECT * FROM grades_subject WHERE student_id = '" + Label10.Text + "' AND period_ ='" + gradingtext.SelectedItem.ToString() + "'", con);

        ds = new DataSet();

        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            student_id = ds.Tables[0].Rows[0][1].ToString();

            fname = ds.Tables[0].Rows[0][7].ToString() + ", " + ds.Tables[0].Rows[0][5].ToString() + " " + ds.Tables[0].Rows[0][6].ToString();
            yc = ds.Tables[0].Rows[0][8].ToString();
            bal = ds.Tables[0].Rows[0][10].ToString();
            rem = ds.Tables[0].Rows[0][9].ToString();

        }
        else
        {


            fl = "0";
            eng = "0";
            ma = "0";
            ap = "0";
            mapeh = "0";
            sc = "0";
            tle = "0";

            bal = "0";

            rem = "<span style='color: red;'>No Records Found</span>";
        }



        con.Close();


    }
}