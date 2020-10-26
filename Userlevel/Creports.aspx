<%@ Page Title="" Language="C#" MasterPageFile="~/Userlevel/cashier.master" AutoEventWireup="true" CodeFile="Creports.aspx.cs" Inherits="Userlevel_Creports" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <table style="width: 100%">
            <tr>
                <td align="center">
                    <asp:TextBox ID="TextBox1" runat="server" Width="172px"></asp:TextBox>
&nbsp;
                    <asp:Button ID="Search" runat="server" OnClick="Search_Click" Text="Search" />
                </td>
            </tr>
        </table>
        <br />
    </p>
    &nbsp;
    <rsweb:ReportViewer ID="ReportViewer1" align="center" runat="server" Width="1259px" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="426px">
        <LocalReport ReportPath="Report.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DefTableAdapters.RegistrationTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_StuReference" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StuReference" Type="String" />
            <asp:Parameter Name="StuID" Type="String" />
            <asp:Parameter Name="StuGradeSection" Type="String" />
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
            <asp:Parameter Name="StuGradeSection" Type="String" />
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
            <asp:Parameter Name="Original_StuReference" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

</asp:Content>



