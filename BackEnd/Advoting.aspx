<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/backend.master" AutoEventWireup="true" CodeFile="Advoting.aspx.cs" Inherits="BackEnd_Voting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    <center>
Candidates
    </center>
    <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" >
      
     <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="President" HeaderText="President" SortExpression="President" />
            <asp:BoundField DataField="VicePresident" HeaderText="VicePresident" SortExpression="VicePresident" />
            <asp:BoundField DataField="Secretary" HeaderText="Secretary" SortExpression="Secretary" />
            <asp:BoundField DataField="Treasurer" HeaderText="Treasurer" SortExpression="Treasurer" />
            <asp:BoundField DataField="Auditor" HeaderText="Auditor" SortExpression="Auditor" />
            <asp:BoundField DataField="PRO" HeaderText="PRO" SortExpression="PRO" />
            <asp:BoundField DataField="Firstyear" HeaderText="Firstyear" SortExpression="Firstyear" />
            <asp:BoundField DataField="Secondyear" HeaderText="Secondyear" SortExpression="Secondyear" />
            <asp:BoundField DataField="Thirdyear" HeaderText="Thirdyear" SortExpression="Thirdyear" />
            <asp:BoundField DataField="Fourthyear" HeaderText="Fourthyear" SortExpression="Fourthyear" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Voting]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Voting] WHERE [Id] = @original_Id AND [President] = @original_President AND [VicePresident] = @original_VicePresident AND [Secretary] = @original_Secretary AND [Treasurer] = @original_Treasurer AND [Auditor] = @original_Auditor AND [PRO] = @original_PRO AND [Firstyear] = @original_Firstyear AND [Secondyear] = @original_Secondyear AND [Thirdyear] = @original_Thirdyear AND [Fourthyear] = @original_Fourthyear" InsertCommand="INSERT INTO [Voting] ([President], [VicePresident], [Secretary], [Treasurer], [Auditor], [PRO], [Firstyear], [Secondyear], [Thirdyear], [Fourthyear]) VALUES (@President, @VicePresident, @Secretary, @Treasurer, @Auditor, @PRO, @Firstyear, @Secondyear, @Thirdyear, @Fourthyear)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Voting] SET [President] = @President, [VicePresident] = @VicePresident, [Secretary] = @Secretary, [Treasurer] = @Treasurer, [Auditor] = @Auditor, [PRO] = @PRO, [Firstyear] = @Firstyear, [Secondyear] = @Secondyear, [Thirdyear] = @Thirdyear, [Fourthyear] = @Fourthyear WHERE [Id] = @original_Id AND [President] = @original_President AND [VicePresident] = @original_VicePresident AND [Secretary] = @original_Secretary AND [Treasurer] = @original_Treasurer AND [Auditor] = @original_Auditor AND [PRO] = @original_PRO AND [Firstyear] = @original_Firstyear AND [Secondyear] = @original_Secondyear AND [Thirdyear] = @original_Thirdyear AND [Fourthyear] = @original_Fourthyear">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_President" Type="String" />
            <asp:Parameter Name="original_VicePresident" Type="String" />
            <asp:Parameter Name="original_Secretary" Type="String" />
            <asp:Parameter Name="original_Treasurer" Type="String" />
            <asp:Parameter Name="original_Auditor" Type="String" />
            <asp:Parameter Name="original_PRO" Type="String" />
            <asp:Parameter Name="original_Firstyear" Type="String" />
            <asp:Parameter Name="original_Secondyear" Type="String" />
            <asp:Parameter Name="original_Thirdyear" Type="String" />
            <asp:Parameter Name="original_Fourthyear" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="President" Type="String" />
            <asp:Parameter Name="VicePresident" Type="String" />
            <asp:Parameter Name="Secretary" Type="String" />
            <asp:Parameter Name="Treasurer" Type="String" />
            <asp:Parameter Name="Auditor" Type="String" />
            <asp:Parameter Name="PRO" Type="String" />
            <asp:Parameter Name="Firstyear" Type="String" />
            <asp:Parameter Name="Secondyear" Type="String" />
            <asp:Parameter Name="Thirdyear" Type="String" />
            <asp:Parameter Name="Fourthyear" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="President" Type="String" />
            <asp:Parameter Name="VicePresident" Type="String" />
            <asp:Parameter Name="Secretary" Type="String" />
            <asp:Parameter Name="Treasurer" Type="String" />
            <asp:Parameter Name="Auditor" Type="String" />
            <asp:Parameter Name="PRO" Type="String" />
            <asp:Parameter Name="Firstyear" Type="String" />
            <asp:Parameter Name="Secondyear" Type="String" />
            <asp:Parameter Name="Thirdyear" Type="String" />
            <asp:Parameter Name="Fourthyear" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_President" Type="String" />
            <asp:Parameter Name="original_VicePresident" Type="String" />
            <asp:Parameter Name="original_Secretary" Type="String" />
            <asp:Parameter Name="original_Treasurer" Type="String" />
            <asp:Parameter Name="original_Auditor" Type="String" />
            <asp:Parameter Name="original_PRO" Type="String" />
            <asp:Parameter Name="original_Firstyear" Type="String" />
            <asp:Parameter Name="original_Secondyear" Type="String" />
            <asp:Parameter Name="original_Thirdyear" Type="String" />
            <asp:Parameter Name="original_Fourthyear" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <table style="width: 100%; height: 369px;">
        <tr>
            <td style="width: 531px" align="right">President</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 531px" align="right">Vice President</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 531px" align="right">Secretary</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 531px" align="right">Treasurer</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 531px; height: 30px;" align="right">Auditor</td>
            <td style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" Width="180px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 531px; height: 30px;" align="right">P.R.O.</td>
            <td style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 531px" align="right">1st Year Representative</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 531px" align="right">2nd Year Representative</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 531px; height: 30px;" align="right">3rd Year Representative</td>
            <td style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 531px" align="right">4th Year Representative</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 531px" align="right">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="35px" Text="Add" Width="95px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 531px" align="right">&nbsp;</td>
            <td>
                <asp:Label ID="success" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <center>

    
 Result of Votes<br />
        </center>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [VotingResult]"></asp:SqlDataSource>


    <br />
    <asp:GridView ID="GridView2" align="center" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="President" HeaderText="President" SortExpression="President" />
            <asp:BoundField DataField="VicePresident" HeaderText="VicePresident" SortExpression="VicePresident" />
            <asp:BoundField DataField="Secretary" HeaderText="Secretary" SortExpression="Secretary" />
            <asp:BoundField DataField="Treasurer" HeaderText="Treasurer" SortExpression="Treasurer" />
            <asp:BoundField DataField="Auditor" HeaderText="Auditor" SortExpression="Auditor" />
            <asp:BoundField DataField="PRO" HeaderText="PRO" SortExpression="PRO" />
            <asp:BoundField DataField="Firstyear" HeaderText="Firstyear" SortExpression="Firstyear" />
            <asp:BoundField DataField="Secondyear" HeaderText="Secondyear" SortExpression="Secondyear" />
            <asp:BoundField DataField="Thirdyear" HeaderText="Thirdyear" SortExpression="Thirdyear" />
            <asp:BoundField DataField="Fourthyear" HeaderText="Fourthyear" SortExpression="Fourthyear" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [VotingResult] WHERE [Id] = @original_Id AND [President] = @original_President AND [VicePresident] = @original_VicePresident AND [Secretary] = @original_Secretary AND [Treasurer] = @original_Treasurer AND [Auditor] = @original_Auditor AND [PRO] = @original_PRO AND [Firstyear] = @original_Firstyear AND [Secondyear] = @original_Secondyear AND [Thirdyear] = @original_Thirdyear AND [Fourthyear] = @original_Fourthyear" InsertCommand="INSERT INTO [VotingResult] ([President], [VicePresident], [Secretary], [Treasurer], [Auditor], [PRO], [Firstyear], [Secondyear], [Thirdyear], [Fourthyear]) VALUES (@President, @VicePresident, @Secretary, @Treasurer, @Auditor, @PRO, @Firstyear, @Secondyear, @Thirdyear, @Fourthyear)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [VotingResult]" UpdateCommand="UPDATE [VotingResult] SET [President] = @President, [VicePresident] = @VicePresident, [Secretary] = @Secretary, [Treasurer] = @Treasurer, [Auditor] = @Auditor, [PRO] = @PRO, [Firstyear] = @Firstyear, [Secondyear] = @Secondyear, [Thirdyear] = @Thirdyear, [Fourthyear] = @Fourthyear WHERE [Id] = @original_Id AND [President] = @original_President AND [VicePresident] = @original_VicePresident AND [Secretary] = @original_Secretary AND [Treasurer] = @original_Treasurer AND [Auditor] = @original_Auditor AND [PRO] = @original_PRO AND [Firstyear] = @original_Firstyear AND [Secondyear] = @original_Secondyear AND [Thirdyear] = @original_Thirdyear AND [Fourthyear] = @original_Fourthyear">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_President" Type="String" />
            <asp:Parameter Name="original_VicePresident" Type="String" />
            <asp:Parameter Name="original_Secretary" Type="String" />
            <asp:Parameter Name="original_Treasurer" Type="String" />
            <asp:Parameter Name="original_Auditor" Type="String" />
            <asp:Parameter Name="original_PRO" Type="String" />
            <asp:Parameter Name="original_Firstyear" Type="String" />
            <asp:Parameter Name="original_Secondyear" Type="String" />
            <asp:Parameter Name="original_Thirdyear" Type="String" />
            <asp:Parameter Name="original_Fourthyear" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="President" Type="String" />
            <asp:Parameter Name="VicePresident" Type="String" />
            <asp:Parameter Name="Secretary" Type="String" />
            <asp:Parameter Name="Treasurer" Type="String" />
            <asp:Parameter Name="Auditor" Type="String" />
            <asp:Parameter Name="PRO" Type="String" />
            <asp:Parameter Name="Firstyear" Type="String" />
            <asp:Parameter Name="Secondyear" Type="String" />
            <asp:Parameter Name="Thirdyear" Type="String" />
            <asp:Parameter Name="Fourthyear" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="President" Type="String" />
            <asp:Parameter Name="VicePresident" Type="String" />
            <asp:Parameter Name="Secretary" Type="String" />
            <asp:Parameter Name="Treasurer" Type="String" />
            <asp:Parameter Name="Auditor" Type="String" />
            <asp:Parameter Name="PRO" Type="String" />
            <asp:Parameter Name="Firstyear" Type="String" />
            <asp:Parameter Name="Secondyear" Type="String" />
            <asp:Parameter Name="Thirdyear" Type="String" />
            <asp:Parameter Name="Fourthyear" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_President" Type="String" />
            <asp:Parameter Name="original_VicePresident" Type="String" />
            <asp:Parameter Name="original_Secretary" Type="String" />
            <asp:Parameter Name="original_Treasurer" Type="String" />
            <asp:Parameter Name="original_Auditor" Type="String" />
            <asp:Parameter Name="original_PRO" Type="String" />
            <asp:Parameter Name="original_Firstyear" Type="String" />
            <asp:Parameter Name="original_Secondyear" Type="String" />
            <asp:Parameter Name="original_Thirdyear" Type="String" />
            <asp:Parameter Name="original_Fourthyear" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />


    <br />



    
        <%
            System.Data.SqlClient.SqlConnection con;

            System.Data.SqlClient.SqlDataAdapter da;

            System.Data.DataSet ds;



            con = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);

            con.Open();
            
            da = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM Voting", con);


            ds = new System.Data.DataSet();


            da.Fill(ds);

          
            
             %>


    <center>





    <!--President-->

    <table cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>President</th>
            <th> Results </th>
        </tr>
        <%
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<tr>");

                Response.Write("<td>");
                Response.Write(ds.Tables[0].Rows[i][1]);

                Response.Write("</td>");



                System.Data.SqlClient.SqlDataAdapter da1;
                System.Data.DataSet ds1;
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM VotingResult WHERE President = '"+ ds.Tables[0].Rows[i][1] +"'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());                
                Response.Write("</td>");              
                Response.Write("</tr>");
               
            }
            
             %>


    </table>

    <!--End of President-->


    <br />

    <!--Vice President-->

     <table  cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Vice President</th>
            <th> Results </th>
        </tr>
        <%
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<tr>");

                Response.Write("<td>");
                Response.Write(ds.Tables[0].Rows[i][2]);

                Response.Write("</td>");




                System.Data.SqlClient.SqlDataAdapter da1;
                System.Data.DataSet ds1;
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM VotingResult WHERE VicePresident = '" + ds.Tables[0].Rows[i][2] + "'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());
                Response.Write("</td>");
                Response.Write("</tr>");
               
            }
            
             %>


    </table>

    <!--End of Vice President-->

    <br />


    <!--Secretary-->

     <table cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Secretary</th>
            <th> Results </th>
        </tr>
        <%
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<tr>");

                Response.Write("<td>");
                Response.Write(ds.Tables[0].Rows[i][3]);

                Response.Write("</td>");



                System.Data.SqlClient.SqlDataAdapter da1;
                System.Data.DataSet ds1;
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM VotingResult WHERE Secretary = '" + ds.Tables[0].Rows[i][3] + "'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());
                Response.Write("</td>");
                Response.Write("</tr>");
            }
            
             %>


    </table>

 <!--End of Secretary-->

    <br />


    
    <!--Treasurer-->

     <table  cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Treasurer</th>
            <th> Results </th>
        </tr>
        <%
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<tr>");

                Response.Write("<td>");
                Response.Write(ds.Tables[0].Rows[i][4]);

                Response.Write("</td>");


                System.Data.SqlClient.SqlDataAdapter da1;
                System.Data.DataSet ds1;
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM VotingResult WHERE Treasurer = '" + ds.Tables[0].Rows[i][4] + "'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());
                Response.Write("</td>");
                Response.Write("</tr>");
               
            }
            
             %>


    </table>

    <!--ENd of Treasurer-->

    <br />



    <!--Auditor-->

     <table cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Auditor</th>
            <th> Results </th>
        </tr>
        <%
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<tr>");

                Response.Write("<td>");
                Response.Write(ds.Tables[0].Rows[i][5]);

                Response.Write("</td>");



                System.Data.SqlClient.SqlDataAdapter da1;
                System.Data.DataSet ds1;
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM VotingResult WHERE Auditor = '" + ds.Tables[0].Rows[i][5] + "'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());
                Response.Write("</td>");
                Response.Write("</tr>");
               
            }
            
             %>


    </table>


    <!--End of Auditor-->

        <br />
        <br />

    <br />


    <!--PRO-->

     <table  cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>PRO</th>
            <th> Results </th>
        </tr>
        <%
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<tr>");

                Response.Write("<td>");
                Response.Write(ds.Tables[0].Rows[i][6]);

                Response.Write("</td>");



                System.Data.SqlClient.SqlDataAdapter da1;
                System.Data.DataSet ds1;
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM VotingResult WHERE PRO = '" + ds.Tables[0].Rows[i][6] + "'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());
                Response.Write("</td>");
                Response.Write("</tr>");
               
            }
            
             %>


    </table>


  <!--End of PRO-->

    <br />



      <!--1st year-->

     <table  cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>First Year Representative</th>
            <th> Results </th>
        </tr>
        <%
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<tr>");

                Response.Write("<td>");
                Response.Write(ds.Tables[0].Rows[i][7]);

                Response.Write("</td>");


                System.Data.SqlClient.SqlDataAdapter da1;
                System.Data.DataSet ds1;
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM VotingResult WHERE Firstyear = '" + ds.Tables[0].Rows[i][7] + "'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());
                Response.Write("</td>");
                Response.Write("</tr>");
               
            }
            
             %>


    </table>


 <!--end of 1st year-->

    <br />


    

      <!--2nd year-->

     <table cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Second Year Representative</th>
            <th> Results </th>
        </tr>
        <%
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<tr>");

                Response.Write("<td>");
                Response.Write(ds.Tables[0].Rows[i][8]);

                Response.Write("</td>");



                System.Data.SqlClient.SqlDataAdapter da1;
                System.Data.DataSet ds1;
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM VotingResult WHERE Secondyear = '" + ds.Tables[0].Rows[i][8] + "'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());
                Response.Write("</td>");
                Response.Write("</tr>");
               
            }
            
             %>


    </table>


 <!--end of 2nd year-->

    <br />


         <!--3rd year-->

     <table cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Third Year Representative</th>
            <th> Results </th>
        </tr>
        <%
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<tr>");

                Response.Write("<td>");
                Response.Write(ds.Tables[0].Rows[i][9]);

                Response.Write("</td>");


                System.Data.SqlClient.SqlDataAdapter da1;
                System.Data.DataSet ds1;
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM VotingResult WHERE Thirdyear = '" + ds.Tables[0].Rows[i][9] + "'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());
                Response.Write("</td>");
                Response.Write("</tr>");
               
            }
            
             %>


    </table>


 <!--end of 3rd year-->

    <br />



             <!--4th year-->

     <table  cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Fourth Year Representative</th>
            <th> Results </th>
        </tr>
        <%
            
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<tr>");

                Response.Write("<td>");
                Response.Write(ds.Tables[0].Rows[i][10]);

                Response.Write("</td>");


                System.Data.SqlClient.SqlDataAdapter da1;
                System.Data.DataSet ds1;
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM VotingResult WHERE Fourthyear = '" + ds.Tables[0].Rows[i][10] + "'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());
                Response.Write("</td>");
                Response.Write("</tr>");
               
            }
            
             %>


    </table>


 <!--end of 4th year-->

    <br />


  </center>
    <%
        
        
           
        
        
             con.Close();
        
         %>




</asp:Content>

