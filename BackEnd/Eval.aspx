<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/backend.master" AutoEventWireup="true" CodeFile="Eval.aspx.cs" Inherits="BackEnd_Eval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
 Edit Your Question&#39;s Here
        </center>
    <asp:GridView ID="GridView1" runat="server" align="center" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="774px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Question1" HeaderText="Question1" SortExpression="Question1" />
            <asp:BoundField DataField="Question2" HeaderText="Question2" SortExpression="Question2" />
            <asp:BoundField DataField="Question3" HeaderText="Question3" SortExpression="Question3" />
            <asp:BoundField DataField="Question4" HeaderText="Question4" SortExpression="Question4" />
            <asp:BoundField DataField="Question5" HeaderText="Question5" SortExpression="Question5" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Question] WHERE [Id] = @original_Id AND [Question1] = @original_Question1 AND [Question2] = @original_Question2 AND [Question3] = @original_Question3 AND [Question4] = @original_Question4 AND [Question5] = @original_Question5" InsertCommand="INSERT INTO [Question] ([Id], [Question1], [Question2], [Question3], [Question4], [Question5]) VALUES (@Id, @Question1, @Question2, @Question3, @Question4, @Question5)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Question]" UpdateCommand="UPDATE [Question] SET [Question1] = @Question1, [Question2] = @Question2, [Question3] = @Question3, [Question4] = @Question4, [Question5] = @Question5 WHERE [Id] = @original_Id AND [Question1] = @original_Question1 AND [Question2] = @original_Question2 AND [Question3] = @original_Question3 AND [Question4] = @original_Question4 AND [Question5] = @original_Question5">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Question1" Type="String" />
            <asp:Parameter Name="original_Question2" Type="String" />
            <asp:Parameter Name="original_Question3" Type="String" />
            <asp:Parameter Name="original_Question4" Type="String" />
            <asp:Parameter Name="original_Question5" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Question1" Type="String" />
            <asp:Parameter Name="Question2" Type="String" />
            <asp:Parameter Name="Question3" Type="String" />
            <asp:Parameter Name="Question4" Type="String" />
            <asp:Parameter Name="Question5" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Question1" Type="String" />
            <asp:Parameter Name="Question2" Type="String" />
            <asp:Parameter Name="Question3" Type="String" />
            <asp:Parameter Name="Question4" Type="String" />
            <asp:Parameter Name="Question5" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Question1" Type="String" />
            <asp:Parameter Name="original_Question2" Type="String" />
            <asp:Parameter Name="original_Question3" Type="String" />
            <asp:Parameter Name="original_Question4" Type="String" />
            <asp:Parameter Name="original_Question5" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView2" align="center" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
            <asp:BoundField DataField="Q1" HeaderText="Q1" SortExpression="Q1" />
            <asp:BoundField DataField="Q2" HeaderText="Q2" SortExpression="Q2" />
            <asp:BoundField DataField="Q3" HeaderText="Q3" SortExpression="Q3" />
            <asp:BoundField DataField="Q4" HeaderText="Q4" SortExpression="Q4" />
            <asp:BoundField DataField="Q5" HeaderText="Q5" SortExpression="Q5" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Eval] WHERE [Id] = @original_Id AND (([Q1] = @original_Q1) OR ([Q1] IS NULL AND @original_Q1 IS NULL)) AND (([Q2] = @original_Q2) OR ([Q2] IS NULL AND @original_Q2 IS NULL)) AND (([Q3] = @original_Q3) OR ([Q3] IS NULL AND @original_Q3 IS NULL)) AND (([Q4] = @original_Q4) OR ([Q4] IS NULL AND @original_Q4 IS NULL)) AND (([Q5] = @original_Q5) OR ([Q5] IS NULL AND @original_Q5 IS NULL))" InsertCommand="INSERT INTO [Eval] ([Q1], [Q2], [Q3], [Q4], [Q5]) VALUES (@Q1, @Q2, @Q3, @Q4, @Q5)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Eval]" UpdateCommand="UPDATE [Eval] SET [Q1] = @Q1, [Q2] = @Q2, [Q3] = @Q3, [Q4] = @Q4, [Q5] = @Q5 WHERE [Id] = @original_Id AND (([Q1] = @original_Q1) OR ([Q1] IS NULL AND @original_Q1 IS NULL)) AND (([Q2] = @original_Q2) OR ([Q2] IS NULL AND @original_Q2 IS NULL)) AND (([Q3] = @original_Q3) OR ([Q3] IS NULL AND @original_Q3 IS NULL)) AND (([Q4] = @original_Q4) OR ([Q4] IS NULL AND @original_Q4 IS NULL)) AND (([Q5] = @original_Q5) OR ([Q5] IS NULL AND @original_Q5 IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Q1" Type="String" />
            <asp:Parameter Name="original_Q2" Type="String" />
            <asp:Parameter Name="original_Q3" Type="String" />
            <asp:Parameter Name="original_Q4" Type="String" />
            <asp:Parameter Name="original_Q5" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Q1" Type="String" />
            <asp:Parameter Name="Q2" Type="String" />
            <asp:Parameter Name="Q3" Type="String" />
            <asp:Parameter Name="Q4" Type="String" />
            <asp:Parameter Name="Q5" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Q1" Type="String" />
            <asp:Parameter Name="Q2" Type="String" />
            <asp:Parameter Name="Q3" Type="String" />
            <asp:Parameter Name="Q4" Type="String" />
            <asp:Parameter Name="Q5" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Q1" Type="String" />
            <asp:Parameter Name="original_Q2" Type="String" />
            <asp:Parameter Name="original_Q3" Type="String" />
            <asp:Parameter Name="original_Q4" Type="String" />
            <asp:Parameter Name="original_Q5" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <center>
 Result in Teacher Evaluation<br />
        </center>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Eval]"></asp:SqlDataSource>

    
        <%
            System.Data.SqlClient.SqlConnection con;

            System.Data.SqlClient.SqlDataAdapter da;

            System.Data.DataSet ds;



            con = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);

            con.Open();
            
            da = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM TEval ", con);


            ds = new System.Data.DataSet();


            da.Fill(ds);

          
            
             %>

    <center>

           <!--Q1-->

    <table cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Question 1</th>
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
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM Eval WHERE Q1 = '"+ ds.Tables[0].Rows[i][1] +"'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());                
                Response.Write("</td>");              
                Response.Write("</tr>");
               
            }
            
             %>


    </table>

         <!--End of Q1-->

         <br />


        <!--Q2-->
    <table cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Question 2</th>
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
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM Eval WHERE Q2 = '"+ ds.Tables[0].Rows[i][1] +"'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());                
                Response.Write("</td>");              
                Response.Write("</tr>");
               
            }
            
             %>


    </table>
        <!--End of Q2-->

         <br />

        <!--Q3-->

          <table cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Question 3</th>
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
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM Eval WHERE Q3 = '"+ ds.Tables[0].Rows[i][1] +"'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());                
                Response.Write("</td>");              
                Response.Write("</tr>");
               
            }
            
             %>
     </table>
           <!--End of Q3-->

        <br />
         <!--Q4-->

          <table cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Question 4</th>
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
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM Eval WHERE Q4 = '"+ ds.Tables[0].Rows[i][1] +"'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());                
                Response.Write("</td>");              
                Response.Write("</tr>");
               
            }
            
             %>
     </table>

           <!--End of Q4-->
        <br />
          <!--Q5-->

          <table cellspacing ="0" cellpadding="0" class="resulttable">
        <tr>
            <th>Question 5</th>
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
                da1 = new System.Data.SqlClient.SqlDataAdapter("SELECT * FROM Eval WHERE Q5 = '"+ ds.Tables[0].Rows[i][1] +"'", con);
                ds1 = new System.Data.DataSet();
                da1.Fill(ds1);
                Response.Write("<td>");
                Response.Write(ds1.Tables[0].Rows.Count.ToString());                
                Response.Write("</td>");              
                Response.Write("</tr>");
               
            }
            
             %>
     </table>
           <!--End of Q5-->




    </center>


</asp:Content>

