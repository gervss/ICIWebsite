using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class BackEnd_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);

        string LoginStr = "Select Count(*) from admin where Username = '" + TextBox1.Text + "' and Userpass = '" + TextBox2.Text + "'";

        SqlCommand LoginCmd = new SqlCommand(LoginStr, con);
        DataTable dt = new DataTable();

        string str = "Select * from admin";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        con.Open();

        int ctr = Convert.ToInt32(LoginCmd.ExecuteScalar().ToString());
        

        if (ctr == 1)
        {
            Session["Uname"] = TextBox1.Text;
          

           if(dt.Rows[0][2].ToString() == TextBox2.Text & dt.Rows[0][3].ToString() == "admin")
           {
                Response.Redirect("~/BackEnd/Adregform.aspx");
           }
           else if (dt.Rows[1][2].ToString() == TextBox2.Text &  dt.Rows[1][3].ToString() == "registrar")
           {
               Response.Redirect("~/Userlevel/Rsection.aspx");
           }

           else if (dt.Rows[2][2].ToString() == TextBox2.Text & dt.Rows[2][3].ToString() == "cashier")
           {
               Response.Redirect("~/Userlevel/Csection.aspx");
           }
           else if (dt.Rows[3][2].ToString() == TextBox2.Text & dt.Rows[3][3].ToString() == "teacher")
           {
               Response.Redirect("~/Userlevel/Tgrades.aspx");
           }

          




        }
        else
        {
            Label5.Visible = true;
            Label5.Text = "Invalid Username/Password";


        }
        con.Close();
    }
}