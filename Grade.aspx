<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Grade.aspx.cs" Inherits="Grade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <script type = "text/javascript">
          function PrintPanel() {
              var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
        </script>

<br />
   

    <table align="right">

        <tr>
         
            <td>
                <asp:Button ID="print" runat="server" Text="Print" OnClientClick="return PrintPanel();" />
            </td>
               <td>

            </td>
            <td>

            </td>
               <td>

            </td>
            <td>

            </td>
        </tr>
    </table>

    <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>


     <asp:Panel id="pnlContents"  runat = "server" > 
    <table cellspacing="0" cellpadding="0" class="studinfotable">

        <tr>
             <td align="right">
                <b>Student ID:</b>
            </td>

            <td>
                <% Response.Write(student_id); %>
            </td>
        </tr>

         <tr>
             <td align="right">
                <b>Full Name:</b>
            </td>

            <td>
                <% Response.Write(fname); %>
            </td>
        </tr>

         <tr>
            <td align="right">
               <b>Year and Section:</b>
            </td>

            <td >
                <% Response.Write(yc); %>
            </td>
        </tr>

        
         <tr>
            <td align="right">
               <b>Grading Period:</b>
            </td>
             
            <td >
                <asp:DropDownList ID="gradingtext" runat="server" AutoPostBack="True" OnSelectedIndexChanged="gradingtext_SelectedIndexChanged">

                 <asp:ListItem>First Grading</asp:ListItem>

                 <asp:ListItem>Second Grading</asp:ListItem>

                 <asp:ListItem>Third Grading</asp:ListItem>

                 <asp:ListItem>Fourth Grading</asp:ListItem>

             </asp:DropDownList>
                
                &nbsp;
                <asp:Button ID="viewbtn" runat="server" Visible="false" OnClick="viewbtn_Click" Text="View" />

            </td>
        </tr>

    </table>




    <table cellspacing="0" cellpadding="0" class="gradetable" align="center" border="1" >

        
       <tr>
           <th>
               Subject
           </th>
           <th>
               Grade
           </th>
           <th>
               Remarks
           </th>

       </tr>
                <%
                    
                    
                    System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);

                    con.Open();
            //First
                    if (gradingtext.SelectedValue == "First Grading")
                    {
                        

                        Response.Write("<tr>");

                                                
                    

                        System.Data.SqlClient.SqlDataAdapter da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM grades_subject WHERE student_id = '" + Label10.Text + "' AND period_ ='"+ gradingtext.SelectedItem.ToString() +"'",con);
                        System.Data.DataSet ds1 = new System.Data.DataSet();
                        da1.Fill(ds1);

                        for (int j = 0; j < ds1.Tables[0].Rows.Count; j++)
                        {

                            System.Data.SqlClient.SqlDataAdapter da2 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM subjects WHERE id =" + ds1.Tables[0].Rows[j][2], con);
                            System.Data.DataSet ds2 = new System.Data.DataSet();
                            da2.Fill(ds2);

                            
                            Response.Write("<td>");
                            Response.Write(ds2.Tables[0].Rows[0][1]);
                            Response.Write("</td>");
                           

                          
                            Response.Write("<td>");
                            Response.Write(ds1.Tables[0].Rows[j][4]);
                            Response.Write("</td>");
                           
                            

                           
                            
                            int x = Convert.ToInt32(ds1.Tables[0].Rows[j][4]);

                            Response.Write("<td>");
                            if (x < 75)
                            {

                                Response.Write("<b>Failed</b>");
                                
                              


                            }
                            else
                            {
                                Response.Write("<b>Passed</b>" );
                                
                                
                            }
                            Response.Write("<tr>");
                            Response.Write("</tr>");       
                            Response.Write("</td>");
                           
                          


                        }


                                      
             
                       


                        Response.Write("</tr>");

                        
                    
                        
                    }

          //Second
                    else if (gradingtext.SelectedValue == "Second Grading")
                    {


                        Response.Write("<tr>");




                        System.Data.SqlClient.SqlDataAdapter da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM grades_subject WHERE student_id = '" + Label10.Text + "' AND period_ ='" + gradingtext.SelectedItem.ToString() + "'", con);
                        System.Data.DataSet ds1 = new System.Data.DataSet();
                        da1.Fill(ds1);

                        for (int j = 0; j < ds1.Tables[0].Rows.Count; j++)
                        {

                            System.Data.SqlClient.SqlDataAdapter da2 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM subjects WHERE id =" + ds1.Tables[0].Rows[j][2], con);
                            System.Data.DataSet ds2 = new System.Data.DataSet();
                            da2.Fill(ds2);


                            Response.Write("<td>");
                            Response.Write(ds2.Tables[0].Rows[0][1]);
                            Response.Write("</td>");



                            Response.Write("<td>");
                            Response.Write(ds1.Tables[0].Rows[j][4]);
                            Response.Write("</td>");





                            int x = Convert.ToInt32(ds1.Tables[0].Rows[j][4]);

                            Response.Write("<td>");
                            if (x < 75)
                            {

                                Response.Write("<b>Failed</b>");
                                Response.Write("<br />");



                            }
                            else
                            {
                                Response.Write("<b>Passed</b>");
                                Response.Write("<br />");

                            }
                            Response.Write("<tr>");
                            Response.Write("</tr>"); 
                            Response.Write("</td>");




                        }

                    }
                    
                    //Third 

                    else if (gradingtext.SelectedValue == "Third Grading")
                    {


                        Response.Write("<tr>");




                        System.Data.SqlClient.SqlDataAdapter da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM grades_subject WHERE student_id = '" + Label10.Text + "' AND period_ ='" + gradingtext.SelectedItem.ToString() + "'", con);
                        System.Data.DataSet ds1 = new System.Data.DataSet();
                        da1.Fill(ds1);

                        for (int j = 0; j < ds1.Tables[0].Rows.Count; j++)
                        {

                            System.Data.SqlClient.SqlDataAdapter da2 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM subjects WHERE id =" + ds1.Tables[0].Rows[j][2], con);
                            System.Data.DataSet ds2 = new System.Data.DataSet();
                            da2.Fill(ds2);


                            Response.Write("<td>");
                            Response.Write(ds2.Tables[0].Rows[0][1]);
                            Response.Write("</td>");



                            Response.Write("<td>");
                            Response.Write(ds1.Tables[0].Rows[j][4]);
                            Response.Write("</td>");





                            int x = Convert.ToInt32(ds1.Tables[0].Rows[j][4]);

                            Response.Write("<td>");
                            if (x < 75)
                            {

                                Response.Write("<b>Failed</b>");
                                Response.Write("<br />");



                            }
                            else
                            {
                                Response.Write("<b>Passed</b>");
                                Response.Write("<br />");

                            }
                            Response.Write("<tr>");
                            Response.Write("</tr>");
                            Response.Write("</td>");




                        }

                    }
                    
                    
                    //Fourth


                    else if (gradingtext.SelectedValue == "Fourth Grading")
                    {


                        Response.Write("<tr>");




                        System.Data.SqlClient.SqlDataAdapter da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM grades_subject WHERE student_id = '" + Label10.Text + "' AND period_ ='" + gradingtext.SelectedItem.ToString() + "'", con);
                        System.Data.DataSet ds1 = new System.Data.DataSet();
                        da1.Fill(ds1);

                        for (int j = 0; j < ds1.Tables[0].Rows.Count; j++)
                        {

                            System.Data.SqlClient.SqlDataAdapter da2 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM subjects WHERE id =" + ds1.Tables[0].Rows[j][2], con);
                            System.Data.DataSet ds2 = new System.Data.DataSet();
                            da2.Fill(ds2);


                            Response.Write("<td>");
                            Response.Write(ds2.Tables[0].Rows[0][1]);
                            Response.Write("</td>");



                            Response.Write("<td>");
                            Response.Write( ds1.Tables[0].Rows[j][4] );
                            Response.Write("</td>");





                            int x = Convert.ToInt32(ds1.Tables[0].Rows[j][4]);

                            Response.Write("<td>");
                            if (x < 75)
                            {

                                Response.Write("<b>Failed</b>");
                                Response.Write("<br />");



                            }
                            else
                            {
                                Response.Write("<b>Passed</b>");
                                Response.Write("<br />");

                            }
                            Response.Write("<tr>");
                            Response.Write("</tr>");
                            Response.Write("</td>");




                        }

                    }
                    








                    con.Close();
                    
                     %>

      
      


    </table>

    <table cellpading="2" cellspacing="2">

        <tr>
            <td align="right"><b>Balance: </b></td>

            <td> <% Response.Write(bal + "php"); %> </td>

        </tr>

         <tr>
            <td align="right"><b> Remarks:</b></td>

              <td> <% Response.Write(rem); %> </td>

        </tr>



        


    </table>




  

</asp:Panel>
    





</asp:Content>
