<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admission.aspx.cs" Inherits="Admission" UnobtrusiveValidationMode="none" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
  

    
<table class="auto-style2" style="width: 882px">
        <h2>
                                    <td style="width: 256px; height: 58px; text-align: center; background-color: #00723e;border-radius:25px/17px; border-top: 1px solid #96d1f8;box-shadow: rgba(0,0,0,1) 0 1px 0;background: -webkit-gradient(linear, left top, left bottom, from(#091d2b), to(#1d4763));    background: -webkit-gradient(linear, left top, left bottom, from(#05131c), to(#051926));
   background: -webkit-linear-gradient(top, #05131c, #051926);
   background: -moz-linear-gradient(top, #05131c, #051926);
   background: -ms-linear-gradient(top, #05131c, #051926);
   background: -o-linear-gradient(top, #05131c, #051926);"  >
                                    <h2 id ="h2">
                                    <asp:Label ID="Step1" runat="server"  style="text-align: center; color: #fff" Text="STEP 1"></asp:Label>
                                </h2>
                            </td>
                         
                            <td style="width: 257px; height: 58px; background-color: #37ba62; text-align: center; font-weight: 700;border-radius:25px/17px; border-top: 1px solid #96d1f8;box-shadow: rgba(0,0,0,1) 0 1px 0;   background: -webkit-gradient(linear, left top, left bottom, from(#395f78), to(#84a2b5));
   background: -webkit-linear-gradient(top, #395f78, #84a2b5);
   background: -moz-linear-gradient(top, #395f78, #84a2b5);
   background: -ms-linear-gradient(top, #395f78, #84a2b5);
   background: -o-linear-gradient(top, #395f78, #84a2b5);
   padding: 5px 10px;"  >
                                <h2 id="h1">
                                    <asp:Label ID="Step2" runat="server" style="text-align: center; color: #fff" Text="STEP 2"></asp:Label>
                                </h2>
                            </td>
                            <td style="width: 257px; height: 58px; background-color: #37ba62; text-align: center; font-weight: 700;border-radius:25px/17px; border-top: 1px solid #96d1f8;box-shadow: rgba(0,0,0,1) 0 1px 0;background: -webkit-gradient(linear, left top, left bottom, from(#091d2b), to(#1d4763)); background: -webkit-gradient(linear, left top, left bottom, from(#395f78), to(#84a2b5));
   background: -webkit-linear-gradient(top, #395f78, #84a2b5);
   background: -moz-linear-gradient(top, #395f78, #84a2b5);
   background: -ms-linear-gradient(top, #395f78, #84a2b5);
   background: -o-linear-gradient(top, #395f78, #84a2b5);
   padding: 5px 10px; "  >
                                <h2 id="h3">
                                    <asp:Label ID="Step3" runat="server" style="text-align: center; color: #fff" Text="STEP 3"></asp:Label>
                                </h2>
                            </td>
    </table>


    <table class="auto-style2" style="width: 882px">
                        <tr>
                            <td align:"Center";>
                                 <table align:"Center"; >
                        <tr>
                            <td class="auto-style18" style="text-align: center; width: 218px;" >
                                &nbsp;</td>
                            <td style="font-size: xx-large; font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder; width: 485px;">REGISTRATION FORM</td>
                        </tr>
                        <tr>
                            <td class="auto-style7" colspan="2">
                                <table class="auto-style10" style="width: 716px">
                                    <tr>
                                        <td class="auto-style37" style="width: 3px">
                                            &nbsp;</td>
                                        <td class="auto-style37">
                                            &nbsp;</td>
                                        <td class="auto-style37">
                                            &nbsp;</td>
                                        <td class="auto-style37" style="width: 3px">
                                            &nbsp;</td>
                                        <td class="auto-style57" style="font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder; font-size: x-large; text-align: center;">
                                            Personal Information</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style37" style="width: 3px">&nbsp;</td>
                                        <td class="auto-style37">&nbsp;</td>
                                        <td class="auto-style37">&nbsp;</td>
                                        <td class="auto-style37" style="width: 3px">&nbsp;</td>
                                        <td class="auto-style16" style="font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15" style="width: 3px">
                                            &nbsp;</td>
                                        <td class="auto-style15">
                                            &nbsp;</td>
                                        <td class="auto-style15">
                                            &nbsp;</td>
                                        <td class="auto-style15" colspan="3">
                                            <table class="auto-style22">
                                                <tr>
                                                    <td class="auto-style47" style="color: #000000">Name:</td>
                                                    <td class="auto-style23">
                                            <asp:TextBox ID="Lastname" runat="server" placeholder="Last Name" style="text-align: left" Width="140px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Lastname" ErrorMessage="LastName is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                    </td>
                                                    <td class="auto-style24">
                                            <asp:TextBox ID="FirstName" runat="server" placeholder="First Name" Width="140px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FirstName" ForeColor="Red" style="color: #CC0000" ErrorMessage="FirstName is Required">*</asp:RequiredFieldValidator>
                                                    </td>
                                                    <td class="auto-style25">
                                            <asp:TextBox ID="MiddleName" runat="server" placeholder="Middle Name" Width="140px"></asp:TextBox>
                                                    </td>
                                                    <td class="auto-style32">
                                            <asp:TextBox ID="MI" runat="server" placeholder="M.I." Width="140px"></asp:TextBox>
                                                    </td>
                                                    <td>&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style36">&nbsp;</td>
                                                    <td class="auto-style31" style="color: #000000">&nbsp;</td>
                                                    <td class="auto-style30">&nbsp;</td>
                                                    <td class="auto-style29" style="color: #000000">&nbsp;</td>
                                                    <td class="auto-style35" style="color: #000000">&nbsp;</td>
                                                    <td class="auto-style28">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="auto-style47" style="color: #000000">Address:</td>
                                                    <td class="auto-style31">
                                            <asp:TextBox ID="Nostreet" runat="server" placeholder="Street" Width="140px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Nostreet" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                    </td>
                                                    <td class="auto-style30">
                                            <asp:TextBox ID="Barangay" runat="server" placeholder="Barangay" Width="140px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Barangay" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                    </td>
                                                    <td class="auto-style29">
                                            <asp:TextBox ID="Municipality" runat="server" placeholder="Municipality" Width="140px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Municipality" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                    </td>
                                                    <td class="auto-style33">
                                            <asp:TextBox ID="City" runat="server" style="text-align: left"  placeholder="City/Province" Width="140px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="City" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                    </td>
                                                    <td class="auto-style28">&nbsp;</td>
                                                </tr>
                                                <tr style="color: #000000">
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
                                                        <table class="auto-style22" style="width: 843px">
                                                            <tr>
                                                                <td class="auto-style51" style="color: #000000; height: 29px; width: 184px;">
                                                                    &nbsp; Birthday</td>
                                                                <td style="width: 296px; height: 29px;">
                                                                    <asp:DropDownList ID="DropDownList7" runat="server">
                                                                        <asp:ListItem Value="-1">Month</asp:ListItem>
                                                                        <asp:ListItem Value="01">January</asp:ListItem>
                                                                        <asp:ListItem Value="02">February</asp:ListItem>
                                                                        <asp:ListItem Value="03">March</asp:ListItem>
                                                                        <asp:ListItem Value="04">April</asp:ListItem>
                                                                        <asp:ListItem Value="05">May</asp:ListItem>
                                                                        <asp:ListItem Value="06">June</asp:ListItem>
                                                                        <asp:ListItem Value="07">July</asp:ListItem>
                                                                        <asp:ListItem Value="08">August</asp:ListItem>
                                                                        <asp:ListItem Value="09">September</asp:ListItem>
                                                                        <asp:ListItem Value="10">October</asp:ListItem>
                                                                        <asp:ListItem Value="11">November</asp:ListItem>
                                                                        <asp:ListItem Value="12">December</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="DropDownList7" ErrorMessage="BirthMonth is Required" ForeColor="Red" InitialValue="-1" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="DropDownList8" runat="server">
                                                                        <asp:ListItem Value="-1">Day</asp:ListItem>
                                                                        <asp:ListItem Value="01">1</asp:ListItem>
                                                                        <asp:ListItem Value="02">2</asp:ListItem>
                                                                        <asp:ListItem Value="03">3</asp:ListItem>
                                                                        <asp:ListItem Value="04">4</asp:ListItem>
                                                                        <asp:ListItem Value="05">5</asp:ListItem>
                                                                        <asp:ListItem Value="06">6</asp:ListItem>
                                                                        <asp:ListItem Value="07">7</asp:ListItem>
                                                                        <asp:ListItem Value="08">8</asp:ListItem>
                                                                        <asp:ListItem Value="09">9</asp:ListItem>
                                                                        <asp:ListItem>10</asp:ListItem>
                                                                        <asp:ListItem>11</asp:ListItem>
                                                                        <asp:ListItem>12</asp:ListItem>
                                                                        <asp:ListItem>13</asp:ListItem>
                                                                        <asp:ListItem>14</asp:ListItem>
                                                                        <asp:ListItem>15</asp:ListItem>
                                                                        <asp:ListItem>16</asp:ListItem>
                                                                        <asp:ListItem>17</asp:ListItem>
                                                                        <asp:ListItem>18</asp:ListItem>
                                                                        <asp:ListItem>19</asp:ListItem>
                                                                        <asp:ListItem>20</asp:ListItem>
                                                                        <asp:ListItem>21</asp:ListItem>
                                                                        <asp:ListItem>22</asp:ListItem>
                                                                        <asp:ListItem>23</asp:ListItem>
                                                                        <asp:ListItem>24</asp:ListItem>
                                                                        <asp:ListItem>25</asp:ListItem>
                                                                        <asp:ListItem>26</asp:ListItem>
                                                                        <asp:ListItem>27</asp:ListItem>
                                                                        <asp:ListItem>28</asp:ListItem>
                                                                        <asp:ListItem>29</asp:ListItem>
                                                                        <asp:ListItem>30</asp:ListItem>
                                                                        <asp:ListItem>31</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="DropDownList8" ErrorMessage="BirthDate is Required" ForeColor="Red" InitialValue="-1" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                    <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="year" DataValueField="year" >
                                                                        <asp:ListItem Value="-1">Year</asp:ListItem>
                                                                        <asp:ListItem>1990</asp:ListItem>
                                                                        <asp:ListItem>1991</asp:ListItem>
                                                                        <asp:ListItem>1992</asp:ListItem>
                                                                        <asp:ListItem Value="1993">1993</asp:ListItem>
                                                                        <asp:ListItem>1994</asp:ListItem>
                                                                        <asp:ListItem>1995</asp:ListItem>
                                                                        <asp:ListItem>1996</asp:ListItem>
                                                                        <asp:ListItem>1997</asp:ListItem>
                                                                        <asp:ListItem>1998</asp:ListItem>
                                                                        <asp:ListItem>1999</asp:ListItem>
                                                                        <asp:ListItem>2000</asp:ListItem>
                                                                        <asp:ListItem>2001</asp:ListItem>
                                                                        <asp:ListItem>2002</asp:ListItem>
                                                                        <asp:ListItem>2003</asp:ListItem>
                                                                        <asp:ListItem>2004</asp:ListItem>
                                                                        <asp:ListItem>2005</asp:ListItem>
                                                                        <asp:ListItem>2006</asp:ListItem>
                                                                        <asp:ListItem>2007</asp:ListItem>
                                                                        <asp:ListItem>2008</asp:ListItem>
                                                                        <asp:ListItem>2009</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [year]"></asp:SqlDataSource>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="DropDownList9" ErrorMessage="BirthYear is Required" ForeColor="Red" InitialValue="-1" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                </td>
                                                                <td class="auto-style42" style="height: 29px; width: 108px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="gender" ForeColor="Red" InitialValue="-1" ErrorMessage="Gender is Required" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                    Gender:</span></td>
                                                                <td style="height: 29px; width: 181px;">
                                                                    <asp:DropDownList ID="gender" runat="server">
                                                                        <asp:ListItem Value="-1">Select Gender</asp:ListItem>
                                                                        <asp:ListItem>Male</asp:ListItem>
                                                                        <asp:ListItem>Female</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    </td>
                                                                <td class="auto-style44" style="color: #000000; height: 29px;">&nbsp;</td>
                                                                <td style="height: 29px">
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style51" style="color: #000000; width: 184px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Age" ErrorMessage="Age is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                    Age</td>
                                                                <td style="width: 296px">
                                            <asp:TextBox ID="Age" runat="server" TextMode="Number" Width="75px" Enabled="False"></asp:TextBox>
                                                                </td>
                                                                <td class="auto-style42" style="width: 108px">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Birth" ErrorMessage="Birth Place is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                    Birth Place:</span></td>
                                                                <td style="width: 181px">
                                            <asp:TextBox ID="Birth" runat="server" Width="165px"></asp:TextBox>
                                                                    </td>
                                                                <td class="auto-style44" style="color: #000000">&nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style51" style="color: #000000; width: 184px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="Contact" ErrorMessage="Contact No. is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                    Contact No.</td>
                                                                <td style="width: 296px">
                                            <asp:TextBox ID="Contact" runat="server" TextMode="Number" Width="198px"></asp:TextBox>
                                                                </td>
                                                                <td class="auto-style43" style="color: #000000; width: 108px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Civil" ErrorMessage="Civil Status is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                    Civil Status:</td>
                                                                <td style="width: 181px">
                                            <asp:TextBox ID="Civil" runat="server" Width="165px"></asp:TextBox>
                                                                </td>
                                                                <td class="auto-style44" style="color: #000000">&nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style51" style="color: #000000; width: 184px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="Attend" ErrorMessage="Last School Attended is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                    Last School Attended:</td>
                                                                <td style="width: 296px">
                                            <asp:TextBox ID="Attend" runat="server" Width="198px"></asp:TextBox>
                                                                </td>
                                                                <td class="auto-style43" style="color: #000000; width: 108px;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ClientIDMode="Static" ControlToValidate="religion" ErrorMessage="Religion is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                                    Religion:</td>
                                                                <td style="width: 181px">
                                            <asp:TextBox ID="religion" runat="server" Width="165px"></asp:TextBox>
                                                                </td>
                                                                <td class="auto-style44" style="color: #000000">&nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style45" colspan="5" style="font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder">&nbsp;</td>
                                                                <td style="color: #000000">&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="more" colspan="5" style="font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: x-large; text-align: right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Family Background</span><br />
                                                                </td>
                                                                <td></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style45" colspan="5" style="font-family: &quot;Adobe Kaiti Std R&quot;; color: #000000; font-weight: bolder">&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                                                                                           
                                                                    <table class="auto-style22" style="width: 841px">
                                                                        <tr>
                                                                            <td class="auto-style50" style="color: #000000">
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="Father" ErrorMessage="Father's Name is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                                Father:</td>
                                                                            <td class="auto-style32" style="width: 215px">
                                            <asp:TextBox ID="Father" runat="server" Width="188px"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style49" style="width: 46px">&nbsp;</td>
                                                                            <td class="auto-style38" style="color: #000000">
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="Mother" ErrorMessage="Mother's Name is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                                Mother:</span></td>
                                                                            <td>
                                            <asp:TextBox ID="Mother" runat="server" Width="188px"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50" style="color: #000000">&nbsp;</td>
                                                                            <td class="auto-style32" style="width: 215px">
                                                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                                                                    <asp:ListItem>Living</asp:ListItem>
                                                                                    <asp:ListItem Value="Deceased">Deceased</asp:ListItem>
                                                                                </asp:RadioButtonList>
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Required Father Status" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                            </td>
                                                                            <td class="auto-style49" style="width: 46px">&nbsp;</td>
                                                                            <td class="auto-style38"></span></td>
                                                                            <td>
                                                                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                                                                                    <asp:ListItem>Living</asp:ListItem>
                                                                                    <asp:ListItem Value="Deceased"></asp:ListItem>
                                                                                </asp:RadioButtonList>
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="Required Mother Status" ForeColor="Red" InitialValue="-1" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50" style="color: #000000">
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="Faddress" ErrorMessage="Father's Address is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                                Address:</td>
                                                                            <td class="auto-style32" style="width: 215px">
                                            <asp:TextBox ID="Faddress" runat="server" Width="188px"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style49" style="width: 46px">&nbsp;</td>
                                                                            <td class="auto-style38" style="color: #000000">
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="Maddress" ErrorMessage="Mother's Address is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                                Address:</span></td>
                                                                            <td>
                                            <asp:TextBox ID="Maddress" runat="server" Width="188px"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50" style="color: #000000">
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="Foccup" ErrorMessage="Father's Occupation is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                                Occupation:</td>
                                                                            <td class="auto-style32" style="width: 215px">
                                            <asp:TextBox ID="Foccup" runat="server" Width="188px"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style49" style="width: 46px">&nbsp;</td>
                                                                            <td class="auto-style38" style="color: #000000">
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="Moccup" ErrorMessage="Mother's Occupation is Required" ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                                Occupation:</span></td>
                                                                            <td>
                                            <asp:TextBox ID="Moccup" runat="server" Width="188px"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50" style="color: #000000">
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="Fcontact" ErrorMessage="Required Father Contact No. " ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                                Contact No.:</td>
                                                                            <td class="auto-style32" style="width: 215px">
                                            <asp:TextBox ID="Fcontact" runat="server" Width="188px"></asp:TextBox>
                                                                            </td>
                                                                            <td class="auto-style49" style="width: 46px">&nbsp;</td>
                                                                            <td class="auto-style38" style="color: #000000">
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="Moccup" ErrorMessage="Required Mother Contact No." ForeColor="Red" style="color: #CC0000">*</asp:RequiredFieldValidator>
                                                                                Contact No.</td>
                                                                            <td>
                                            <asp:TextBox ID="Mcontact" runat="server" Width="188px"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50" style="color: #000000">&nbsp;</td>
                                                                            <td class="auto-style32" style="width: 215px">
                                                                                &nbsp;</td>
                                                                            <td class="auto-style49" style="width: 46px">&nbsp;</td>
                                                                            <td class="auto-style38" style="color: #000000">&nbsp;</td>
                                                                            <td>
                                                                                &nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50">&nbsp;</td>
                                                                            <td class="auto-style32" style="width: 215px">&nbsp;</td>
                                                                            <td class="auto-style49" colspan="2">
                                                                                <asp:Button ID="Button1" runat="server" style="text-align: center" Text="SUBMIT" Width="143px" OnClick="Button1_Click"  />
                                                                                </td>
                                                                            <td class="auto-style38">&nbsp;</td>
                                                                            <td>&nbsp;</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="auto-style50">&nbsp;</td>
                                                                            <td class="auto-style32" style="width: 215px">&nbsp;</td>
                                                                            <td class="auto-style49" colspan="2">
                                                                                <br />
                                            <asp:Label ID="Label1" runat="server" style="font-size: medium; color: #000000; top: 807px; left: 413px;"></asp:Label>
                                                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" style="color: #000000" />
                                                                            </td>
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
                            </td>
                        </tr>
                    </table>






</asp:Content>




