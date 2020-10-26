<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" UnobtrusiveValidationMode="none" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter your Name" ForeColor="Red">*</asp:RequiredFieldValidator>
        Name:
        <asp:TextBox ID="TextBox1" runat="server" Width="224px"></asp:TextBox>
    </p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter your Email" ForeColor="Red">*</asp:RequiredFieldValidator>
        Email&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="224px"></asp:TextBox>
    </p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter your Message" ForeColor="Red">*</asp:RequiredFieldValidator>
        Message:</p>
    <p>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="242px" TextMode="MultiLine" Width="851px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="102px" />
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="submitted" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="margin-bottom: 20px" />
    <table style="width: 100%">
        <tr>
            <td style="width: 156px; height: 68px">
                <img alt="" src="Images/Contact.jpg" style="width: 181px; height: 57px" /></td>
            <td style="height: 68px">Tel. # +63927 868 5118/ +63906 477 7238</td>
            <td style="height: 68px"></td>
        </tr>
        <tr>
            <td style="width: 156px; height: 76px">
                <img alt="" src="Images/FB.png" style="width: 184px; height: 52px" /></td>
            <td style="height: 76px">Like us on Facebook Fanpage: @SJDM_Cornerstone_College_Inc.</td>
            <td style="height: 76px"></td>
        </tr>
        <tr>
            <td style="width: 156px">
                <img alt="" src="Images/yahoo.png" style="width: 183px; height: 51px" /></td>
            <td>Email us: @sjdmcai2004@</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 156px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

