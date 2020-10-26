<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/backend.master" AutoEventWireup="true" CodeFile="Validate.aspx.cs" Inherits="BackEnd_Validate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />

        <table>
        <tr>
            <td style="width: 175px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server"  style="color: #000; font-size: 18pt" Font-Underline="False" PostBackUrl="~/BackEnd/Adgrades.aspx">Back</asp:LinkButton>
            </td>

            

        </tr>
        
    </table>

    <br />
    <center>
        <h2>Subjects</h2>
    </center>
    <asp:GridView ID="GridView1" align="center" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="409px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="subject_name" HeaderText="subject_name" SortExpression="subject_name" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [subjects] WHERE [Id] = @Id" InsertCommand="INSERT INTO [subjects] ([subject_name]) VALUES (@subject_name)" SelectCommand="SELECT * FROM [subjects]" UpdateCommand="UPDATE [subjects] SET [subject_name] = @subject_name WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="subject_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="subject_name" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <center>
        <h2> Grades </h2>
        <p> 
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="1235px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
                    <asp:BoundField DataField="subject_id" HeaderText="subject_id" SortExpression="subject_id" />
                    <asp:BoundField DataField="period_" HeaderText="period_" SortExpression="period_" />
                    <asp:BoundField DataField="grade_" HeaderText="grade_" SortExpression="grade_" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                    <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [grades_subject] WHERE [Id] = @Id" InsertCommand="INSERT INTO [grades_subject] ([student_id], [subject_id], [period_], [grade_], [FirstName], [MiddleName], [LastName], [Section], [Remarks], [Balance]) VALUES (@student_id, @subject_id, @period_, @grade_, @FirstName, @MiddleName, @LastName, @Section, @Remarks, @Balance)" SelectCommand="SELECT * FROM [grades_subject]" UpdateCommand="UPDATE [grades_subject] SET [student_id] = @student_id, [subject_id] = @subject_id, [period_] = @period_, [grade_] = @grade_, [FirstName] = @FirstName, [MiddleName] = @MiddleName, [LastName] = @LastName, [Section] = @Section, [Remarks] = @Remarks, [Balance] = @Balance WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="student_id" Type="String" />
                    <asp:Parameter Name="subject_id" Type="String" />
                    <asp:Parameter Name="period_" Type="String" />
                    <asp:Parameter Name="grade_" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="MiddleName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Section" Type="String" />
                    <asp:Parameter Name="Remarks" Type="String" />
                    <asp:Parameter Name="Balance" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="student_id" Type="String" />
                    <asp:Parameter Name="subject_id" Type="String" />
                    <asp:Parameter Name="period_" Type="String" />
                    <asp:Parameter Name="grade_" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="MiddleName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Section" Type="String" />
                    <asp:Parameter Name="Remarks" Type="String" />
                    <asp:Parameter Name="Balance" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </center>



</asp:Content>

