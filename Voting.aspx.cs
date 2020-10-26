using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Voting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {



        SqlConnection con = new SqlConnection((ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString));
        con.Open();



        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM status WHERE userid = '"+ Session["userid"] +"'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        int r = ds.Tables[0].Rows.Count;

        if (r < 1)
        {

            string cmd = "insert into VotingResult (President,VicePresident,Secretary,Treasurer,Auditor,PRO,Firstyear,Secondyear,Thirdyear,Fourthyear) values(@President,@VicePresident,@Secretary,@Treasurer,@Auditor,@PRO,@Firstyear,@Secondyear,@Thirdyear,@Fourthyear)";
            SqlCommand insertuser = new SqlCommand(cmd, con);


            insertuser.Parameters.AddWithValue("@President", RadioButtonList1.SelectedValue);
            insertuser.Parameters.AddWithValue("@VicePresident", RadioButtonList2.SelectedValue);
            insertuser.Parameters.AddWithValue("@Secretary", RadioButtonList3.SelectedValue);
            insertuser.Parameters.AddWithValue("@Treasurer", RadioButtonList4.SelectedValue);
            insertuser.Parameters.AddWithValue("@Auditor", RadioButtonList5.SelectedValue);
            insertuser.Parameters.AddWithValue("@PRO", RadioButtonList6.SelectedValue);
            insertuser.Parameters.AddWithValue("@Firstyear", RadioButtonList7.SelectedValue);
            insertuser.Parameters.AddWithValue("@Secondyear", RadioButtonList8.SelectedValue);
            insertuser.Parameters.AddWithValue("@Thirdyear", RadioButtonList9.SelectedValue);
            insertuser.Parameters.AddWithValue("@Fourthyear", RadioButtonList10.SelectedValue);
            insertuser.ExecuteNonQuery();


            SqlCommand c = new SqlCommand("INSERT INTO status (userid, status) VALUES (@userid, @status)", con);

            c.Parameters.AddWithValue("@userid", Session["userid"]);
            c.Parameters.AddWithValue("@status", "voted");

            c.ExecuteNonQuery();



            con.Close();

            Label7.Visible = true;
            Label7.Text = "Success Voting !!!";


        }
        else
        {
            Label7.Visible = true;
            Label7.Text = "<span style='color: red;'>Error: Sorry you are already voted</span>";
        }





    }
}