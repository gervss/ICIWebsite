<%@ Page Title="" Language="C#" MasterPageFile="~/Userlevel/cashier.master" AutoEventWireup="true" CodeFile="Cadmission.aspx.cs" Inherits="Userlevel_Cadmission" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <p>
        &nbsp;</p>
    <p>
        <table style="width: 100%">
            <tr>
                <td colspan="4" align="center">&nbsp;Generate Student ID&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 365px">&nbsp;</td>
                <td style="width: 212px">Reference Number:</td>
                <td style="width: 329px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="140px"></asp:TextBox>
                &nbsp;<asp:Button ID="Display" runat="server" OnClick="Display_Click" Text="Display" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 365px">&nbsp;</td>
                <td style="width: 212px">First Name:</td>
                <td style="width: 329px">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="140px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="bday" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 365px; height: 32px;"></td>
                <td style="width: 212px; height: 32px;">Middle Name:</td>
                <td style="width: 329px; height: 32px;">
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Width="140px"></asp:TextBox>
                </td>
                <td style="height: 32px"></td>
            </tr>
            <tr>
                <td style="width: 365px">&nbsp;</td>
                <td style="width: 212px">Last Name:</td>
                <td style="width: 329px">
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="140px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 365px">&nbsp;</td>
                <td style="width: 212px">Grade/Year and Section</td>
                <td style="width: 329px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Grade 1</asp:ListItem>
                        <asp:ListItem>Grade 2</asp:ListItem>
                        <asp:ListItem>Grade 3</asp:ListItem>
                        <asp:ListItem>Grade 4</asp:ListItem>
                        <asp:ListItem>Grade 5</asp:ListItem>
                        <asp:ListItem>Grade 6</asp:ListItem>
                        <asp:ListItem>Grade 7</asp:ListItem>
                        <asp:ListItem>Grade 8</asp:ListItem>
                        <asp:ListItem>Grade 9</asp:ListItem>
                        <asp:ListItem>4th Year</asp:ListItem>
                    </asp:DropDownList>
                &nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="section" DataValueField="section" Width="130px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT section FROM GradeSection where grade = @grade">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="grade" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 365px">&nbsp;</td>
                <td style="width: 212px">&nbsp;</td>
                <td style="width: 329px">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="85px">
                        <asp:ListItem>Unpaid</asp:ListItem>
                        <asp:ListItem>Paid</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 365px">&nbsp;</td>
                <td colspan="2" align="center">
                    <asp:Button ID="Update" runat="server" OnClick="Update_Click" Text="Update" />
&nbsp;<asp:Label ID="suces" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="StuReference" DataSourceID="SqlDataSource1" Height="307px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateEditButton="True" Width="3427px">
              <EmptyDataTemplate>
                  <div>Empty Database</div>
              </EmptyDataTemplate>     
                 
              <AlternatingRowStyle BackColor="#DCDCDC" />
                 
            <Columns>
                
                
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="StuReference" HeaderText="Reference No." ReadOnly="True" SortExpression="StuReference" />
                <asp:BoundField DataField="StuID" HeaderText="Student ID" SortExpression="StuID" />
                <asp:BoundField DataField="StuPass" HeaderText="Password" SortExpression="StuPass" />
                <asp:BoundField DataField="StuGradeSection" HeaderText="Grade/Year Section" SortExpression="StuGradeSection" />
                <asp:BoundField DataField="paid" HeaderText="paid" SortExpression="paid" />
                <asp:BoundField DataField="StuLastname" HeaderText="Last Name" SortExpression="StuLastname" />
                <asp:BoundField DataField="StuFirstname" HeaderText="First Name" SortExpression="StuFirstname" />
                <asp:BoundField DataField="StuMiddlename" HeaderText="Middle Name" SortExpression="StuMiddlename" />
                <asp:BoundField DataField="StuMI" HeaderText="MI" SortExpression="StuMI" />
                <asp:BoundField DataField="StuBirthday" HeaderText="Birthday" SortExpression="StuBirthday" />
                <asp:BoundField DataField="StuNo_street" HeaderText="Street" SortExpression="StuNo_street" />
                <asp:BoundField DataField="StuBarangay" HeaderText="Barangay" SortExpression="StuBarangay" />
                <asp:BoundField DataField="StudMunicipality" HeaderText="Municipality" SortExpression="StudMunicipality" />
                <asp:BoundField DataField="StuCity_province" HeaderText="City/province" SortExpression="StuCity_province" />
                <asp:BoundField DataField="StuAge" HeaderText="Age" SortExpression="StuAge" />
                <asp:BoundField DataField="StuSchoolLastAttended" HeaderText="LastSchoolAttended" SortExpression="StuSchoolLastAttended" />
                <asp:BoundField DataField="StuGender" HeaderText="Gender" SortExpression="StuGender" />
                <asp:BoundField DataField="StuContact" HeaderText="Contact" SortExpression="StuContact" />
                <asp:BoundField DataField="StuBirthplace" HeaderText="Birthplace" SortExpression="StuBirthplace" />
                <asp:BoundField DataField="StuReligion" HeaderText="Religion" SortExpression="StuReligion" />
                <asp:BoundField DataField="StuCivil_status" HeaderText="Civil_status" SortExpression="StuCivil_status" />
                <asp:BoundField DataField="StuFather" HeaderText="Father" SortExpression="StuFather" />
                <asp:BoundField DataField="FLiving" HeaderText="LivingStatus" SortExpression="FLiving" />
                <asp:BoundField DataField="StuFOccupation" HeaderText="Occupation" SortExpression="StuFOccupation" />
                <asp:BoundField DataField="StuFContactNo" HeaderText="ContactNo" SortExpression="StuFContactNo" />
                     <asp:BoundField DataField="StuFaddress" HeaderText="Address" SortExpression="StuFaddress" />
                <asp:BoundField DataField="StuMother" HeaderText="Mother" SortExpression="StuMother" />
                <asp:BoundField DataField="MLiving" HeaderText="LivingStatus" SortExpression="MLiving" />
                <asp:BoundField DataField="StuMOccupation" HeaderText="Occupation" SortExpression="StuMOccupation" />
                <asp:BoundField DataField="StuMContactNo" HeaderText="ContactNo" SortExpression="StuMContactNo" />
           
                <asp:BoundField DataField="StuMaddress" HeaderText="Address" SortExpression="StuMaddress" />
                <asp:BoundField DataField="datesubmit" HeaderText="datesubmit" SortExpression="datesubmit" />
            </Columns>
              <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
              <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
              <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#0000A9" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Registration] WHERE [StuReference] = @StuReference" InsertCommand="INSERT INTO [Registration] ([StuReference], [StuID], [StuGradeSection], [paid], [StuLastname], [StuFirstname], [StuMiddlename], [StuMI], [StuBirthday], [StuNo_street], [StuBarangay], [StudMunicipality], [StuCity_province], [StuAge], [StuSchoolLastAttended], [StuGender], [StuContact], [StuBirthplace], [StuReligion], [StuCivil_status], [StuFather], [FLiving], [StuFOccupation], [StuFContactNo], [StuMother], [MLiving], [StuMOccupation], [StuMContactNo], [StuFaddress], [StuMaddress], [datesubmit]) VALUES (@StuReference, @StuID, @StuGradeSection, @paid, @StuLastname, @StuFirstname, @StuMiddlename, @StuMI, @StuBirthday, @StuNo_street, @StuBarangay, @StudMunicipality, @StuCity_province, @StuAge, @StuSchoolLastAttended, @StuGender, @StuContact, @StuBirthplace, @StuReligion, @StuCivil_status, @StuFather, @FLiving, @StuFOccupation, @StuFContactNo, @StuMother, @MLiving, @StuMOccupation, @StuMContactNo, @StuFaddress, @StuMaddress, @datesubmit)" SelectCommand="SELECT * FROM [Registration] ORDER BY [StuReference] DESC" UpdateCommand="UPDATE [Registration] SET [StuID] = @StuID, [StuGradeSection] = @StuGradeSection, [paid] = @paid, [StuLastname] = @StuLastname, [StuFirstname] = @StuFirstname, [StuMiddlename] = @StuMiddlename, [StuMI] = @StuMI, [StuBirthday] = @StuBirthday, [StuNo_street] = @StuNo_street, [StuBarangay] = @StuBarangay, [StudMunicipality] = @StudMunicipality, [StuCity_province] = @StuCity_province, [StuAge] = @StuAge, [StuSchoolLastAttended] = @StuSchoolLastAttended, [StuGender] = @StuGender, [StuContact] = @StuContact, [StuBirthplace] = @StuBirthplace, [StuReligion] = @StuReligion, [StuCivil_status] = @StuCivil_status, [StuFather] = @StuFather, [FLiving] = @FLiving, [StuFOccupation] = @StuFOccupation, [StuFContactNo] = @StuFContactNo, [StuMother] = @StuMother, [MLiving] = @MLiving, [StuMOccupation] = @StuMOccupation, [StuMContactNo] = @StuMContactNo, [StuFaddress] = @StuFaddress, [StuMaddress] = @StuMaddress, [datesubmit] = @datesubmit WHERE [StuReference] = @StuReference">
            <DeleteParameters>
                <asp:Parameter Name="StuReference" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StuReference" Type="String" />
                <asp:Parameter Name="StuID" Type="String" />
                <asp:Parameter Name="StuPass" Type="String" />
                <asp:Parameter Name="StuGradeSection" Type="String" />
                <asp:Parameter Name="paid" Type="String" />
                <asp:Parameter Name="StuLastname" Type="String" />
                <asp:Parameter Name="StuFirstname" Type="String" />
                <asp:Parameter Name="StuMiddlename" Type="String" />
                <asp:Parameter Name="StuMI" Type="String" />
                <asp:Parameter Name="StuBirthday" Type="String" />
                <asp:Parameter Name="StuNo_street" Type="String" />
                <asp:Parameter Name="StuBarangay" Type="String" />
                <asp:Parameter Name="StudMunicipality" Type="String" />
                <asp:Parameter Name="StuCity_province" Type="String" />
                <asp:Parameter Name="StuAge" Type="String" />
                <asp:Parameter Name="StuSchoolLastAttended" Type="String" />
                <asp:Parameter Name="StuGender" Type="String" />
                <asp:Parameter Name="StuContact" Type="String" />
                <asp:Parameter Name="StuBirthplace" Type="String" />
                <asp:Parameter Name="StuReligion" Type="String" />
                <asp:Parameter Name="StuCivil_status" Type="String" />
                <asp:Parameter Name="StuFather" Type="String" />
                <asp:Parameter Name="FLiving" Type="String" />
                <asp:Parameter Name="StuFOccupation" Type="String" />
                <asp:Parameter Name="StuFContactNo" Type="String" />
                <asp:Parameter Name="StuMother" Type="String" />
                <asp:Parameter Name="MLiving" Type="String" />
                <asp:Parameter Name="StuMOccupation" Type="String" />
                <asp:Parameter Name="StuMContactNo" Type="String" />
                <asp:Parameter Name="StuFaddress" Type="String" />
                <asp:Parameter Name="StuMaddress" Type="String" />
                <asp:Parameter Name="datesubmit" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StuID" Type="String" />
                 <asp:Parameter Name="StuPass" Type="String" />
                <asp:Parameter Name="StuGradeSection" Type="String" />
                <asp:Parameter Name="paid" Type="String" />
                <asp:Parameter Name="StuLastname" Type="String" />
                <asp:Parameter Name="StuFirstname" Type="String" />
                <asp:Parameter Name="StuMiddlename" Type="String" />
                <asp:Parameter Name="StuMI" Type="String" />
                <asp:Parameter Name="StuBirthday" Type="String" />
                <asp:Parameter Name="StuNo_street" Type="String" />
                <asp:Parameter Name="StuBarangay" Type="String" />
                <asp:Parameter Name="StudMunicipality" Type="String" />
                <asp:Parameter Name="StuCity_province" Type="String" />
                <asp:Parameter Name="StuAge" Type="String" />
                <asp:Parameter Name="StuSchoolLastAttended" Type="String" />
                <asp:Parameter Name="StuGender" Type="String" />
                <asp:Parameter Name="StuContact" Type="String" />
                <asp:Parameter Name="StuBirthplace" Type="String" />
                <asp:Parameter Name="StuReligion" Type="String" />
                <asp:Parameter Name="StuCivil_status" Type="String" />
                <asp:Parameter Name="StuFather" Type="String" />
                <asp:Parameter Name="FLiving" Type="String" />
                <asp:Parameter Name="StuFOccupation" Type="String" />
                <asp:Parameter Name="StuFContactNo" Type="String" />
                <asp:Parameter Name="StuMother" Type="String" />
                <asp:Parameter Name="MLiving" Type="String" />
                <asp:Parameter Name="StuMOccupation" Type="String" />
                <asp:Parameter Name="StuMContactNo" Type="String" />
                <asp:Parameter Name="StuFaddress" Type="String" />
                <asp:Parameter Name="StuMaddress" Type="String" />
                <asp:Parameter Name="datesubmit" Type="String" />
                <asp:Parameter Name="StuReference" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    
</asp:Content>



