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

public partial class Userlevel_Creports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Search_Click(object sender, EventArgs e)
    {
        string search = TextBox1.Text;

        DataTable resulttable = new DataTable();

        SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);

        SqlCommand cmd = new SqlCommand("SP_search", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@search", search);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        ReportDataSource rds1 = new ReportDataSource("DataSet1", resulttable);
        ReportViewer1.Reset();
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("Report.rdlc");
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportViewer1.LocalReport.DataSources.Add(rds1);
        ReportViewer1.DataBind();

        ReportViewer1.LocalReport.Refresh();

        da.Fill(resulttable);
    }
}