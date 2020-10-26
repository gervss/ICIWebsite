using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admission : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        DateTime d = DateTime.Now;
        String s = d.ToString("mm-dd-yyyy");

        string CountRecord = "Select count(*) from Registration";
        SqlCommand Countcmd = new SqlCommand(CountRecord,con);

        int StudRef = Convert.ToInt32(Countcmd.ExecuteScalar().ToString());
        string GenerateRef = "";

        if(StudRef < 9)
        {
            GenerateRef = "Ref-" + "0000" + (StudRef + 1);
        }
        else if (StudRef < 100)
        {
            GenerateRef = "Ref-" + "000" + (StudRef + 1);
        }

          else if (StudRef < 1000)
        {
            GenerateRef = "Ref-" + "00" + (StudRef + 1);
        }

          else if (StudRef < 10000)
        {
            GenerateRef = "Ref-" + "0" + (StudRef + 1);
        }

        else if (StudRef < 100000)
        {
            GenerateRef = "Ref-" + "" + (StudRef + 1);
        }


        SqlCommand insert = new SqlCommand();
        insert.Connection = con;
        insert.CommandType = CommandType.StoredProcedure;
        insert.CommandText = "RegForm";

        insert.Parameters.AddWithValue("@StuReference", GenerateRef);
        insert.Parameters.AddWithValue("@StuLastname", Lastname.Text);
        insert.Parameters.AddWithValue("@StuFirstname", FirstName.Text);
        insert.Parameters.AddWithValue("@StuMiddlename", MiddleName.Text);
        insert.Parameters.AddWithValue("@StuMI", MI.Text);
        insert.Parameters.AddWithValue("@StuNo_street", Nostreet.Text);
        insert.Parameters.AddWithValue("@StuBarangay", Barangay.Text);
        insert.Parameters.AddWithValue("@StuMunicipality", Municipality.Text);
        insert.Parameters.AddWithValue("@StuCity_province", City.Text);
        insert.Parameters.AddWithValue("@StuAge", Age.Text);
        insert.Parameters.AddWithValue("@StuSchoolLastAttended", Attend.Text);
        insert.Parameters.AddWithValue("@StuGender", gender.Text);
        insert.Parameters.AddWithValue("@StuBirthday", DropDownList7.Text + "-" + DropDownList8.Text + "-" + DropDownList9.Text);
        insert.Parameters.AddWithValue("@StuContact", Contact.Text);
        insert.Parameters.AddWithValue("@StuBirthplace", Birth.Text);
        insert.Parameters.AddWithValue("@StuReligion", religion.Text);
        insert.Parameters.AddWithValue("@StuCivil_status", Civil.Text);
        insert.Parameters.AddWithValue("@StuFather", Father.Text);
        insert.Parameters.AddWithValue("@FLiving", RadioButtonList1.SelectedValue);
        insert.Parameters.AddWithValue("@StuFaddress", Faddress.Text);
        insert.Parameters.AddWithValue("@StuFOccupation", Foccup.Text);
        insert.Parameters.AddWithValue("@StuFContactNo", Fcontact.Text);
        insert.Parameters.AddWithValue("@StuMother", Mother.Text);
        insert.Parameters.AddWithValue("@MLiving", RadioButtonList2.SelectedValue);
        insert.Parameters.AddWithValue("@StuMaddress", Maddress.Text);
        insert.Parameters.AddWithValue("@StuMOccupation", Moccup.Text);
        insert.Parameters.AddWithValue("@StuMContactNo", Mcontact.Text);
        insert.Parameters.AddWithValue("@datesubmit", s);



        Label1.Text = "Your Registration Form was Submitted";

        
        insert.ExecuteNonQuery();
        Session["last"] = Lastname.Text;
        Session["first"] = FirstName.Text;
        Session["mid"] = MiddleName.Text;


        con.Close();
        Response.Redirect("~/Step2.aspx");


    }

    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = DropDownList7.Text + "/" + DropDownList8.Text + "/" + DropDownList9.Text;
        DateTime dob = Convert.ToDateTime(s);
      
        DateTime currentdate = Convert.ToDateTime(DateTime.Now);
        TimeSpan time = currentdate.Subtract(dob);
        int total = (time.Days) / 365;
        Age.Text = total.ToString(); 
    }
}