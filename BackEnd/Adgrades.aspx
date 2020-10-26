<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/backend.master" AutoEventWireup="true" CodeFile="Adgrades.aspx.cs" Inherits="BackEnd_Adgrades" UnobtrusiveValidationMode="none" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <br />
   
    <br />

    <table>
        <tr>
            <td style="width: 175px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server"  style="color: #000; font-size: 18pt" Font-Underline="False" PostBackUrl="~/BackEnd/Validate.aspx">Edit/Delete</asp:LinkButton>
            </td>

            

        </tr>
        
    </table>
    <table align="center">





        <tr>
           <td style="padding-right: 10px; border-right: 1px solid #000;">

                 <h3>Add New Subject</h3>
                   <table>

                    <tr>
                        <td> Subject Name: </td>

                        <td> 
                            <asp:TextBox ID="subjectnametext" runat="server"></asp:TextBox>
                        </td>
                    </tr>


                    <tr>
                        <td></td>

                        <td align="right">


                            <asp:Button runat="server" ID="addbtn" Text="Add" OnClick="addbtn_Click" />

                        </td>
                    </tr>

                </table>
           </td>




             <td style="padding-left: 10px;">


                  <h3>Subjects</h3>
                    <table>

                        <%
            
                            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);

                            con.Open();

                            System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM subjects", con);

                            System.Data.DataSet ds = new System.Data.DataSet();

                            da.Fill(ds);
                        
                            for(int i = 0; i < ds.Tables[0].Rows.Count; i++)
                            {

                                Response.Write("<tr>");

                                Response.Write("<td>");

                                
                                Response.Write(" - " + ds.Tables[0].Rows[i][1].ToString());
                                
                                
                
                                Response.Write("</td>");
                                
                                
                
                
                                Response.Write("</tr>");
                
                            }

                        
                            
                             %>
       
                    </table>

                 
           </td>


        </tr>


    </table>



    <br />
    <center>
            <h3>Set Subjects and Grades</h3>
    </center>


    <table align="center">

        <tr>
            <td style="width: 260px">
                Student ID:   
                
            </td>
            <td>
                <asp:TextBox ID="studentidtext" runat="server" Width="141px" ></asp:TextBox>
               

                
                &nbsp;
               

                
                <asp:Button ID="View" runat="server" Text="View" OnClick="View_Click" />
            </td>
          
         </tr>

        <tr>
            <td style="width: 260px">
                First Name: 
            </td>
            <td >
                <asp:TextBox ID="fname" runat="server" Width="141px" Enabled="False" ></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td style="width: 260px" >
                Middle Name: 
            </td>
            <td >
                <asp:TextBox ID="mname" runat="server" Width="141px" Enabled="False" ></asp:TextBox>

            </td>
        </tr>

        <tr>
            <td style="width: 260px">
                Last Name: 

            </td>
            <td>
                <asp:TextBox ID="lname" runat="server" Width="141px" Enabled="False" ></asp:TextBox>
            </td>

        </tr>

        <tr>
            <td style="width: 260px" >
                Grade/Year and Section: 
            </td>
            <td>
                <asp:TextBox ID="section" runat="server" Width="141px" Enabled="False" ></asp:TextBox>

            </td>
        </tr>

        <tr>
            <td style="width: 260px">
                Remarks: 
                
            </td>
            <td>
                <asp:DropDownList ID="remarks" runat="server" Width="105px"> 
                    <asp:ListItem>Passed</asp:ListItem> 
                    <asp:ListItem>Failed</asp:ListItem> 
                    </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td style="width: 260px">
                Balance: 
            </td>
            <td>
                <asp:TextBox ID="balance" runat="server" TextMode="Number" Width="141px"></asp:TextBox>

            </td>
        </tr>

        <tr>
            <td style="width: 260px">
                Grading Period: 

            </td>
            <td>
                <asp:DropDownList ID="periodtext" runat="server"> 
                    <asp:ListItem>First Grading</asp:ListItem> 
                    <asp:ListItem>Second Grading</asp:ListItem> 
                    <asp:ListItem>Third Grading</asp:ListItem> 
                    <asp:ListItem>Fourth Grading</asp:ListItem> 
                    </asp:DropDownList>
            </td>
         
        </tr>

        <tr>
         
            
            <td style="width: 260px">

                <table cellpadding="5">

                    <tr>

                        <td style="width: 138px">Select Subjects</td>


                        <td>Set Grades</td>

                    </tr>
                  
                <%
                  
                    da = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM subjects", con);

                    ds = new System.Data.DataSet();

                    da.Fill(ds);
                 

                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++ )
                    {

                        Response.Write("<tr>");

                        Response.Write("<td>");

                        Response.Write("<input type='checkbox' name='s"+ ds.Tables[0].Rows[i][0] +"' value='"+ ds.Tables[0].Rows[i][0] +"'>");

                        Response.Write(ds.Tables[0].Rows[i][1]);
                        
                        Response.Write("</td>");


                        Response.Write("<td>");

                        Response.Write("<input style='width: 50px;' type='text' name='g" + ds.Tables[0].Rows[i][0] + "' value='0'>");

                        Response.Write("</td>");

                                         
                     
                    }

                                                                                                                    
                     %>



                </table>


            </td>            

        </tr>

        <tr>

            <td align="right" style="width: 260px">

                <asp:Button ID="savebtn" runat="server" Text="Save" OnClick="savebtn_Click" />
            </td>


        </tr>


    </table>


      
    <br />

    <center>
        <h3> Grades </h3>
    </center>
    


    <table border="1" align="center" class="gradetable">

        <tr>
            <th>Student ID</th>
            <th>First Name</th>
            <th>Middle Name</th>
            <th>Last Name</th>
            <th>Subject and Grades</th>



        </tr>



            <%
                da = new System.Data.SqlClient.SqlDataAdapter("SELECT StuID, StuFirstname, StuMiddlename,StuLastname FROM Registration", con);

                ds = new System.Data.DataSet();

                da.Fill(ds);

               
                
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {

              

                    Response.Write("<tr>");

                  
                    
                    Response.Write("<td>");
                    Response.Write(ds.Tables[0].Rows[i][0]);                   
                    Response.Write("</td>");


                    Response.Write("<td>");
                    Response.Write(ds.Tables[0].Rows[i][1]);
                    Response.Write("</td>");

                    Response.Write("<td>");
                    Response.Write(ds.Tables[0].Rows[i][2]);
                    Response.Write("</td>");

                    Response.Write("<td>");
                    Response.Write(ds.Tables[0].Rows[i][3]);
                    Response.Write("</td>");


                    Response.Write("<td>");
                    System.Data.SqlClient.SqlDataAdapter da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM grades_subject WHERE student_id = '" + ds.Tables[0].Rows[i][0] + "'", con);
                    System.Data.DataSet ds1 = new System.Data.DataSet();
                    da1.Fill(ds1);

                    for (int j = 0; j < ds1.Tables[0].Rows.Count; j++ )
                    {

                        System.Data.SqlClient.SqlDataAdapter da2 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM subjects WHERE id =" + ds1.Tables[0].Rows[j][2], con);
                        System.Data.DataSet ds2 = new System.Data.DataSet();
                        da2.Fill(ds2);
                        
                        Response.Write(ds2.Tables[0].Rows[0][1] + " - ");
                        
                        Response.Write("<b>" + ds1.Tables[0].Rows[j][4] + "</b> - ");

                        Response.Write(ds1.Tables[0].Rows[j][3] + "<br />"); 
                        
                          
                    }

                    Response.Write("</td>");
                    


                    Response.Write("</tr>");
                    
                    
                }
                                               
                
                 %>





    </table>


    <%
                    con.Close();
         %>








        
</asp:Content>


