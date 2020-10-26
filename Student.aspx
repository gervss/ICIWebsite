<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" EnableSessionState="True" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>
       
        <asp:FormView ID="FormView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both" Width="934px" Height="562px" DefaultMode="ReadOnly" AllowPaging="false"  style="margin-left: 19px"  >
            <EditItemTemplate>
                
        
                <table style="width: 100%">
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">Address:</td>
                        <td style="width: 158px">
                            <asp:TextBox ID="StuNo_streetTextBox" runat="server" Text='<%# Bind("StuNo_street") %>' />
                        </td>
                        <td style="width: 150px">
                            <asp:TextBox ID="StuBarangayTextBox" runat="server" Text='<%# Bind("StuBarangay") %>' />
                        </td>
                        <td style="width: 144px">
                            <asp:TextBox ID="StudMunicipalityTextBox" runat="server" Text='<%# Bind("StudMunicipality") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="StuCity_provinceTextBox" runat="server" Text='<%# Bind("StuCity_province") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td style="width: 158px">(Street)</td>
                        <td style="width: 150px">(Barangay)</td>
                        <td style="width: 144px">(Municipality)</td>
                        <td>(Province)</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td style="width: 158px">&nbsp;</td>
                        <td style="width: 150px">&nbsp;</td>
                        <td style="width: 144px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">Contact Number:</td>
                        <td style="width: 158px">
                            <asp:TextBox ID="StuContactTextBox" runat="server" Text='<%# Bind("StuContact") %>' />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td style="width: 144px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">Religion</td>
                        <td style="width: 158px">
                            <asp:TextBox ID="StuReligionTextBox" runat="server" Text='<%# Bind("StuReligion") %>' />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td style="width: 144px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">Civil Status</td>
                        <td style="width: 158px">
                            <asp:TextBox ID="StuCivil_statusTextBox" runat="server" Text='<%# Bind("StuCivil_status") %>' />
                        </td>
                        <td style="width: 150px">&nbsp;</td>
                        <td style="width: 144px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td style="width: 158px">&nbsp;</td>
                        <td style="width: 150px">
                            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td style="width: 144px">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td style="width: 158px">&nbsp;</td>
                        <td style="width: 150px">&nbsp;</td>
                        <td style="width: 144px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td colspan="3" align="center">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td align="center" colspan="3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td style="width: 158px">&nbsp;</td>
                        <td style="width: 150px">&nbsp;</td>
                        <td style="width: 144px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td style="width: 158px">&nbsp;</td>
                        <td style="width: 150px">&nbsp;</td>
                        <td style="width: 144px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td style="width: 158px">&nbsp;</td>
                        <td style="width: 150px">&nbsp;</td>
                        <td style="width: 144px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 8px">&nbsp;</td>
                        <td style="width: 161px">&nbsp;</td>
                        <td style="width: 158px">&nbsp;</td>
                        <td style="width: 150px">&nbsp;</td>
                        <td style="width: 144px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                &nbsp;<br />
                <br />
                <br />
                <br />
                &nbsp;
            </EditItemTemplate>
            <EditRowStyle BackColor="#1ec9ef" Font-Bold="True" ForeColor="Black" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                StuLastname:
                <asp:TextBox ID="StuLastnameTextBox" runat="server" Text='<%# Bind("StuLastname") %>' />
                <br />
                StuFirstname:
                <asp:TextBox ID="StuFirstnameTextBox" runat="server" Text='<%# Bind("StuFirstname") %>' />
                <br />
                StuMiddlename:
                <asp:TextBox ID="StuMiddlenameTextBox" runat="server" Text='<%# Bind("StuMiddlename") %>' />
                <br />
                StuBirthday:
                <asp:TextBox ID="StuBirthdayTextBox" runat="server" Text='<%# Bind("StuBirthday") %>' />
                <br />
                StuNo_street:
                <asp:TextBox ID="StuNo_streetTextBox" runat="server" Text='<%# Bind("StuNo_street") %>' />
                <br />
                StuBarangay:
                <asp:TextBox ID="StuBarangayTextBox" runat="server" Text='<%# Bind("StuBarangay") %>' />
                <br />
                StudMunicipality:
                <asp:TextBox ID="StudMunicipalityTextBox" runat="server" Text='<%# Bind("StudMunicipality") %>' />
                <br />
                StuCity_province:
                <asp:TextBox ID="StuCity_provinceTextBox" runat="server" Text='<%# Bind("StuCity_province") %>' />
                <br />
                StuAge:
                <asp:TextBox ID="StuAgeTextBox" runat="server" Text='<%# Bind("StuAge") %>' />
                <br />
                StuGender:
                <asp:TextBox ID="StuGenderTextBox" runat="server" Text='<%# Bind("StuGender") %>' />
                <br />
                StuContact:
                <asp:TextBox ID="StuContactTextBox" runat="server" Text='<%# Bind("StuContact") %>' />
                <br />
                StuBirthplace:
                <asp:TextBox ID="StuBirthplaceTextBox" runat="server" Text='<%# Bind("StuBirthplace") %>' />
                <br />
                StuReligion:
                <asp:TextBox ID="StuReligionTextBox" runat="server" Text='<%# Bind("StuReligion") %>' />
                <br />
                StuCivil_status:
                <asp:TextBox ID="StuCivil_statusTextBox" runat="server" Text='<%# Bind("StuCivil_status") %>' />
                <br />
                StuGradeSection:
                <asp:TextBox ID="StuGradeSectionTextBox" runat="server" Text='<%# Bind("StuGradeSection") %>' />
                <br />
                StuPass:
                <asp:TextBox ID="StuPass" runat="server" Text='<%# Bind("StuPass") %>' />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>

               

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width: 100%">
                    <tr>
                        <td colspan="3" align ="center" style="font-size:x-large; font-weight:700; height: 37px;">STUDENT PROFILE </td>
                    </tr>
                    <tr>
                        <td style="height: 22px; width: 6px"></td>
                        <td colspan="2" align="right" style="height: 22px">
                            <asp:LinkButton ID="Edit" runat="server" CausesValidation="true" CommandName="Edit" Text="Edit"></asp:LinkButton>

                        </td>
                    </tr>
                    <tr>
                        <td style="width: 6px">&nbsp;</td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 6px">&nbsp;</td>
                        <td style="width: 317px; font-weight:700; font-size:large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Name: </td>
                        <td>
                            <asp:Label ID="StuLastnameLabel" runat="server" Text='<%# Bind("StuLastname") %>' />
                            ,<asp:Label ID="StuFirstnameLabel" runat="server" Text='<%# Bind("StuFirstname") %>' />
&nbsp;<asp:Label ID="StuMiddlenameLabel" runat="server" Text='<%# Bind("StuMiddlename") %>' />
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="width: 6px">&nbsp;</td>
                        <td style="width: 317px; font-weight:700; font-size:large;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Grade/Year and Section:</td>
                        <td>
                            <asp:Label ID="StuGradeSectionLabel" runat="server" Text='<%# Bind("StuGradeSection") %>' />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>

                    </table>

                

                <br />
                <table style="width: 100%;">
                    <tr style="font-weight:400; font-size:large;">
                        <td>&nbsp;</td>
                        <td style="width: 219px; font-weight:700; font-size:large;">Birthday</td>
                        <td style="width: 246px; font-weight:700; font-size:large;">Gender:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp; &nbsp; 
                            <asp:Label ID="StuBirthdayLabel" runat="server" Text='<%# Bind("StuBirthday") %>' />
                        </td>
                        <td style="width: 246px">&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="StuGenderLabel" runat="server" Text='<%# Bind("StuGender") %>' /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp;</td>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp;</td>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px; font-weight:700; font-size:large;">Birth Place</td>
                        <td style="width: 246px; font-weight:700; font-size:large;">Contact Number:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp;&nbsp;&nbsp; &nbsp;  
                            <asp:Label ID="StuBirthplaceLabel" runat="server" Text='<%# Bind("StuBirthplace") %>' />
                        </td>
                        <td style="width: 246px">&nbsp;&nbsp;&nbsp; &nbsp;  
                            <asp:Label ID="StuContactLabel" runat="server" Text='<%# Bind("StuContact") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp;</td>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp;</td>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px; font-weight:700; font-size:large;">Address:</td>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td colspan="3">&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="StuNo_streetLabel" runat="server" Text='<%# Bind("StuNo_street") %>' /> 
                            <asp:Label ID="StuBarangayLabel" runat="server" Text='<%# Bind("StuBarangay") %>' />
                            <asp:Label ID="StudMunicipalityLabel" runat="server" Text='<%# Bind("StudMunicipality") %>' />
                            <asp:Label ID="StuCity_provinceLabel" runat="server" Text='<%# Bind("StuCity_province") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp;</td>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp;</td>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px; font-weight:700; font-size:large;">Religion:</td>
                        <td style="width: 246px; font-weight:700; font-size:large;">Civil Status:</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="StuReligionLabel" runat="server" Text='<%# Bind("StuReligion") %>' />
                            &nbsp;</td>
                        <td style="width: 246px">&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="StuCivil_statusLabel" runat="server" Text='<%# Bind("StuCivil_status") %>' />
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;  <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("StuPass") %>' Visible="False" /></td>
                        <td style="width: 219px">&nbsp;</td>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp;</td>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 219px">&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td style="width: 246px">&nbsp;</td>
                        <td>&nbsp;</td>
                       
                    </tr>
                </table>

                

            </ItemTemplate>
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:FormView>
  <asp:Button ID="Button2" runat="server" Text="Change Password" OnClick="Button2_Click1" />
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
        &nbsp;
        
        <br />
        <br />

        <table style="width: 100%">
            <tr>
                <td colspan="4" align ="center">
                    <asp:Label ID="changepass" runat="server" Font-Bold="True" Font-Size="15pt" Text="Change Password" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 242px">&nbsp;</td>
                <td style="width: 143px">&nbsp;</td>
                <td style="width: 232px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 242px">&nbsp;</td>
                <td style="width: 143px">
                    <asp:Label ID="oldpass" runat="server" Font-Bold="True" Text="Old Password:" Visible="False"></asp:Label>
                </td>
                <td style="width: 232px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="158px" Visible="False" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 242px">&nbsp;</td>
                <td style="width: 143px">
                    <asp:Label ID="newpass" runat="server" Font-Bold="True" Text="New Password:" Visible="False"></asp:Label>
                </td>
                <td style="width: 232px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="158px" Visible="False" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 242px">&nbsp;</td>
                <td style="width: 143px">&nbsp;</td>
                <td style="width: 232px">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit" Visible="False" />
&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Back" Visible="False" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 242px">&nbsp;</td>
                <td style="width: 143px">&nbsp;</td>
                <td style="width: 232px">
                    <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Registration]" UpdateCommand="UPDATE Registration SET StuPass = @StuPass WHERE StuID = @StuID">
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="Label7" Name="StuID" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TextBox2" Name="StuPass" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>

        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT StuLastname, StuFirstname, StuMiddlename, StuBirthday, StuNo_street, StuBarangay, StudMunicipality, StuCity_province, StuAge, StuGender, StuContact, StuBirthplace, StuReligion, StuCivil_status, StuGradeSection, StuPass FROM Registration WHERE (StuID = @StuID)" UpdateCommand="UPDATE Registration SET  StuNo_street =@StuNo_street, StuBarangay =@StuBarangay, StudMunicipality =@StudMunicipality, StuCity_province =@StuCity_province,  StuContact =@StuContact,  StuReligion =@StuReligion, StuCivil_status =@StuCivil_status">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label7" Name="StuID" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
  
    </p>
</asp:Content>


