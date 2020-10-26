<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>



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

    <table class="steps" align="center" style="width: 880px" >
                        <tr>
                            <td style="width: 256px; height: 58px; text-align: center; background-color: #37ba62 ;"  >
                                <h2 id ="h2">
                                    <asp:Label ID="Step1" runat="server"  style="text-align: center; color: #fff" Text="STEP 1"></asp:Label>
                                </h2>
                            </td>
                            <td style="width: 257px; height: 58px; background-color: #00723e ; text-align: center; font-weight: 700;">
                                <h2 id="h1">
                                    <asp:Label ID="Steptwo" runat="server" style="text-align: center; color: #fff" Text="STEP 2"></asp:Label>
                                </h2>
                            </td>
                            <td style="width: 257px; height: 58px; background-color: #37ba62; text-align: center; font-weight: 700;">
                                <h2 id="h3">
                                    <asp:Label ID="Step3" runat="server" style="text-align: center; color: #fff" Text="STEP 3"></asp:Label>
                                </h2>
                            </td>
                        </tr>
                    </table>

     
    <asp:Panel id="pnlContents" align="center" runat = "server" style="text-align: center">
             <asp:Label ID="Label1" runat="server" Visible="False">1</asp:Label>
        <asp:Label ID="Label2" runat="server" Visible="False">2</asp:Label>
        <asp:Label ID="Labels3" runat="server" Visible="False">3</asp:Label>







             <br />





             <br />
        </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [StuReference], [StuLastname], [StuFirstname], [StuMiddlename], [StuMI], [StuBirthday], [StuNo_street], [StuBarangay], [StudMunicipality], [StuCity_province], [StuAge], [StuSchoolLastAttended], [StuGender], [StuContact], [StuBirthplace], [StuReligion], [StuCivil_status], [StuFather], [FLiving], [StuFOccupation], [StuFContactNo], [StuMother], [MLiving], [StuMOccupation], [StuMContactNo], [StuFaddress], [StuMaddress], [datesubmit] FROM [Registration] WHERE (([StuLastname] = @StuLastname) AND ([StuFirstname] = @StuFirstname) AND ([StuMiddlename] = @StuMiddlename))">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="StuLastname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Label2" Name="StuFirstname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Labels3" Name="StuMiddlename" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" align="center" DataKeyNames="StuReference" DataSourceID="SqlDataSource1" Height="633px" Width="815px">
        <EditItemTemplate>
            StuReference:
            <asp:Label ID="StuReferenceLabel1" runat="server" Text='<%# Eval("StuReference") %>' />
            <br />
            StuLastname:
            <asp:TextBox ID="StuLastnameTextBox" runat="server" Text='<%# Bind("StuLastname") %>' />
            <br />
            StuFirstname:
            <asp:TextBox ID="StuFirstnameTextBox" runat="server" Text='<%# Bind("StuFirstname") %>' />
            <br />
            StuMiddlename:
            <asp:TextBox ID="StuMiddlenameTextBox" runat="server" Text='<%# Bind("StuMiddlename") %>' />
            <br />
            StuMI:
            <asp:TextBox ID="StuMITextBox" runat="server" Text='<%# Bind("StuMI") %>' />
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
            StuSchoolLastAttended:
            <asp:TextBox ID="StuSchoolLastAttendedTextBox" runat="server" Text='<%# Bind("StuSchoolLastAttended") %>' />
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
            StuFather:
            <asp:TextBox ID="StuFatherTextBox" runat="server" Text='<%# Bind("StuFather") %>' />
            <br />
            FLiving:
            <asp:TextBox ID="FLivingTextBox" runat="server" Text='<%# Bind("FLiving") %>' />
            <br />
            StuFOccupation:
            <asp:TextBox ID="StuFOccupationTextBox" runat="server" Text='<%# Bind("StuFOccupation") %>' />
            <br />
            StuFContactNo:
            <asp:TextBox ID="StuFContactNoTextBox" runat="server" Text='<%# Bind("StuFContactNo") %>' />
            <br />
            StuMother:
            <asp:TextBox ID="StuMotherTextBox" runat="server" Text='<%# Bind("StuMother") %>' />
            <br />
            MLiving:
            <asp:TextBox ID="MLivingTextBox" runat="server" Text='<%# Bind("MLiving") %>' />
            <br />
            StuMOccupation:
            <asp:TextBox ID="StuMOccupationTextBox" runat="server" Text='<%# Bind("StuMOccupation") %>' />
            <br />
            StuMContactNo:
            <asp:TextBox ID="StuMContactNoTextBox" runat="server" Text='<%# Bind("StuMContactNo") %>' />
            <br />
            StuFaddress:
            <asp:TextBox ID="StuFaddressTextBox" runat="server" Text='<%# Bind("StuFaddress") %>' />
            <br />
            StuMaddress:
            <asp:TextBox ID="StuMaddressTextBox" runat="server" Text='<%# Bind("StuMaddress") %>' />
            <br />
            datesubmit:
            <asp:TextBox ID="datesubmitTextBox" runat="server" Text='<%# Bind("datesubmit") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            StuReference:
            <asp:TextBox ID="StuReferenceTextBox" runat="server" Text='<%# Bind("StuReference") %>' />
            <br />
            StuLastname:
            <asp:TextBox ID="StuLastnameTextBox" runat="server" Text='<%# Bind("StuLastname") %>' />
            <br />
            StuFirstname:
            <asp:TextBox ID="StuFirstnameTextBox" runat="server" Text='<%# Bind("StuFirstname") %>' />
            <br />
            StuMiddlename:
            <asp:TextBox ID="StuMiddlenameTextBox" runat="server" Text='<%# Bind("StuMiddlename") %>' />
            <br />
            StuMI:
            <asp:TextBox ID="StuMITextBox" runat="server" Text='<%# Bind("StuMI") %>' />
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
            StuSchoolLastAttended:
            <asp:TextBox ID="StuSchoolLastAttendedTextBox" runat="server" Text='<%# Bind("StuSchoolLastAttended") %>' />
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
            StuFather:
            <asp:TextBox ID="StuFatherTextBox" runat="server" Text='<%# Bind("StuFather") %>' />
            <br />
            FLiving:
            <asp:TextBox ID="FLivingTextBox" runat="server" Text='<%# Bind("FLiving") %>' />
            <br />
            StuFOccupation:
            <asp:TextBox ID="StuFOccupationTextBox" runat="server" Text='<%# Bind("StuFOccupation") %>' />
            <br />
            StuFContactNo:
            <asp:TextBox ID="StuFContactNoTextBox" runat="server" Text='<%# Bind("StuFContactNo") %>' />
            <br />
            StuMother:
            <asp:TextBox ID="StuMotherTextBox" runat="server" Text='<%# Bind("StuMother") %>' />
            <br />
            MLiving:
            <asp:TextBox ID="MLivingTextBox" runat="server" Text='<%# Bind("MLiving") %>' />
            <br />
            StuMOccupation:
            <asp:TextBox ID="StuMOccupationTextBox" runat="server" Text='<%# Bind("StuMOccupation") %>' />
            <br />
            StuMContactNo:
            <asp:TextBox ID="StuMContactNoTextBox" runat="server" Text='<%# Bind("StuMContactNo") %>' />
            <br />
            StuFaddress:
            <asp:TextBox ID="StuFaddressTextBox" runat="server" Text='<%# Bind("StuFaddress") %>' />
            <br />
            StuMaddress:
            <asp:TextBox ID="StuMaddressTextBox" runat="server" Text='<%# Bind("StuMaddress") %>' />
            <br />
            datesubmit:
            <asp:TextBox ID="datesubmitTextBox" runat="server" Text='<%# Bind("datesubmit") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
           <table style="height: 700px" >
                        <tr>
                            <td class="auto-style18" >
                                <img alt="" class="auto-style56" src="Images/Picture1.png" style="height: 123px" /></td>
                            <td style="font-size: xx-large; font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder">PRE-ENROLLMENT FORM</td>
                        </tr>
                        <tr>
                            <td class="auto-style7" colspan="2">
                                <table class="auto-style10">
                                    <tr>
                                        <td class="auto-style37">
                                            &nbsp;</td>
                                        <td class="auto-style57" style="font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder">
                                            Personal Information</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style37">&nbsp;</td>
                                        <td class="auto-style16" style="font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15" colspan="3">
                                            <table class="auto-style22">
                                                <tr>
                                                    <td class="auto-style47">Name:</td>
                                                    <td class="auto-style23">
                                            <asp:Label ID="StdLastnameLabel" runat="server" Text='<%# Bind("StuLastname") %>' />
                                                    </td>
                                                    <td class="auto-style24">
                                             <asp:Label ID="StdFirstnameLabel" runat="server" Text='<%# Bind("StuFirstname") %>' />
                                                    </td>
                                                    <td class="auto-style25">
                                            <asp:Label ID="StdMiddlenameLabel" runat="server" Text='<%# Bind("StuMiddlename") %>' />
                                                    </td>
                                                    <td class="auto-style32">
                                            <asp:Label ID="StdMILabel" runat="server" Text='<%# Bind("StuMI") %>' />
                                                    </td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style36">&nbsp;</td>
                                                    <td class="auto-style31">[Last Name]</td>
                                                    <td class="auto-style30">[First Name]</td>
                                                    <td class="auto-style29">[Middle Name]</td>
                                                    <td class="auto-style35">[M.I.]</td>
                                                    <td class="auto-style28">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style47">Address:</td>
                                                    <td class="auto-style31">
                                           <asp:Label ID="StdNo_streetLabel" runat="server" Text='<%# Bind("StuNo_street") %>' />
                                                    </td>
                                                    <td class="auto-style30">
                                            <asp:Label ID="StdBarangayLabel" runat="server" Text='<%# Bind("StuBarangay") %>' />
                                                    </td>
                                                    <td class="auto-style29">
                                           <asp:Label ID="StdMunicipalityLabel" runat="server" Text='<%# Bind("StudMunicipality") %>' />
                                                    </td>
                                                    <td class="auto-style33">
                                            <asp:Label ID="StdCity_provinceLabel" runat="server" Text='<%# Bind("StuCity_province") %>' />
                                                    </td>
                                                    <td class="auto-style28">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style36">&nbsp;</td>
                                                    <td class="auto-style31">[Street]</td>
                                                    <td class="auto-style30">[Barangay]</td>
                                                    <td class="auto-style29">[Municipality]</td>
                                                    <td class="auto-style35">[City/Province]</td>
                                                    <td class="auto-style28">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style36">&nbsp;</td>
                                                    <td class="auto-style31">&nbsp;</td>
                                                    <td class="auto-style30">&nbsp;</td>
                                                    <td class="auto-style29">&nbsp;</td>
                                                    <td class="auto-style35">&nbsp;</td>
                                                    <td class="auto-style28">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style36">&nbsp;</td>
                                                    <td class="auto-style31">&nbsp;</td>
                                                    <td class="auto-style30">&nbsp;</td>
                                                    <td class="auto-style29">&nbsp;</td>
                                                    <td class="auto-style35">&nbsp;</td>
                                                    <td class="auto-style28">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style34" colspan="6">
                                                        <table class="auto-style22">
                                                            <tr>
                                                                <td class="auto-style51">Age:</td>
                                                                <td>
                                            <asp:Label ID="StdAgeLabel" runat="server" Text='<%# Bind("StuAge") %>' />
                                                                </td>
                                                                <td class="auto-style42">&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                                <td class="auto-style44">Gender:</td>
                                                                <td>
                                                                    <asp:Label ID="StdGenderLabel" runat="server" Text='<%# Bind("StuGender") %>' />
                                                                    </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style51">Birthday</td>
                                                                <td>
                                                                    <asp:Label ID="StdBorndayLabel" runat="server" Text='<%# Bind("StuBirthday") %>' />
                                                                    </td>
                                                                <td class="auto-style42">&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                                <td class="auto-style44">Birth Place:</td>
                                                                <td>
                                            <asp:Label ID="StdBirthplaceLabel" runat="server" Text='<%# Bind("StuBirthplace") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style51">Contact No.</td>
                                                                <td>
                                           <asp:Label ID="StdContactLabel" runat="server" Text='<%# Bind("StuContact") %>' />
                                                                </td>
                                                                <td class="auto-style43">Civil Status:</td>
                                                                <td>
                                           <asp:Label ID="StdCivil_statusLabel" runat="server" Text='<%# Bind("StuCivil_status") %>' />
                                                                </td>
                                                                <td class="auto-style44">Religion:</td>
                                                                <td>
                                           <asp:Label ID="StdReligionLabel" runat="server" Text='<%# Bind("StuReligion") %>' />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style51">School Last Attended:</td>
                                                                <td>
                                            <asp:Label ID="StdSchoolLastAttendedLabel" runat="server" Text='<%# Bind("StuSchoolLastAttended") %>' />
                                                                </td>
                                                              
                                                                
                                                              
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style45" colspan="5" style="font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder">&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td  class="auto-style57" style="font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Family Background<br /></td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style45" colspan="5" style="font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder">&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                                                                                           
                                                                    <table class="auto-style22">
                                                                        <tr>
                                                                            <td class="auto-style50">Father:</td>
                                                                            <td class="auto-style32">
                                            <asp:Label ID="StdFatherLabel" runat="server" Text='<%# Bind("StuFather") %>' />
                                                                            </td>
                                                                            <td class="auto-style49">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td class="auto-style38">Mother:</td>
                                                                            <td>
                                            <asp:Label ID="StdMotherLabel" runat="server" Text='<%# Bind("StuMother") %>' />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50">&nbsp;</td>
                                                                            <td class="auto-style32">
                                                                                <asp:Label ID="FBuhayLabel" runat="server" Text='<%# Bind("FLiving") %>' />
                                                                            </td>
                                                                            <td class="auto-style49">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td class="auto-style38">&nbsp;</td>
                                                                            <td>
                                                                                <asp:Label ID="MBuhayLabel" runat="server" Text='<%# Bind("MLiving") %>' />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50">Address:</td>
                                                                            <td class="auto-style32">
                                            <asp:Label ID="StdFaddressLabel" runat="server" Text='<%# Bind("StuFaddress") %>' />
                                                                            </td>
                                                                            <td class="auto-style49">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td class="auto-style38">Address:</td>
                                                                            <td>
                                                                                <asp:Label ID="StdMaddressLabel" runat="server" Text='<%# Bind("StuMaddress") %>' />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50">Occupation:</td>
                                                                            <td class="auto-style32">
                                            <asp:Label ID="StdFOccupationLabel" runat="server" Text='<%# Bind("StuFOccupation") %>' />
                                                                            </td>
                                                                            <td class="auto-style49">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td class="auto-style38">Occupation:</td>
                                                                            <td>
                                                                                <asp:Label ID="StdMOccupationLabel" runat="server" Text='<%# Bind("StuMOccupation") %>' />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                           
                                                                            <td class="auto-style49">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50">Contact No.:</td>
                                                                            <td class="auto-style32">
                                            <asp:Label ID="StdFContactNoLabel" runat="server" Text='<%# Bind("StuFContactNo") %>' />
                                                                            </td>
                                                                            <td class="auto-style49">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td class="auto-style38">Contact No.</td>
                                                                            <td>
                                                                                <asp:Label ID="StdMContactNoLabel" runat="server" Text='<%# Bind("StuMContactNo") %>' />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50">&nbsp;</td>
                                                                            <td class="auto-style32">&nbsp;</td>
                                                                            <td class="auto-style49">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td class="auto-style38">&nbsp;</td>
                                                                            <td>
                                                                                <asp:Button ID="Button1" runat="server" Text="Print"  OnClientClick = "return PrintPanel();"/>

                                                                                &nbsp;
                                                                                <asp:Button ID="Button2" runat="server" Text="Next" PostBackUrl="~/success.aspx" />

                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50">&nbsp;</td>
                                                                            <td class="auto-style32">&nbsp;</td>
                                                                            <td class="auto-style49">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                            <td class="auto-style38">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50">&nbsp;</td>
                                                                            <td class="auto-style32">&nbsp;</td>
                                                                            <td class="auto-style49" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                              <td class="auto-style38">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                                <td</td>
                                                            </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                 </ItemTemplate>

     
    </asp:FormView>
    <br />
</asp:Content>

