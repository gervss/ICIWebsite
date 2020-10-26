<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Voting.aspx.cs" Inherits="Voting" EnableSessionState="True" UnobtrusiveValidationMode="none" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Vote Wisely ...</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 100%">
            <tr>
                <td style="width: 399px; height: 45px;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" ForeColor="Red">*</asp:RequiredFieldValidator>
                    President</td>
                <td style="height: 45px">Representatives:</td>
            </tr>
            <tr>
                <td style="width: 399px; height: 40px;">
                    <asp:RadioButtonList ID="RadioButtonList1"  runat="server" DataSourceID="SqlDataSource1" DataTextField="President" DataValueField="President" RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                &nbsp;&nbsp;
                </td>
                <td style="height: 40px">&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RadioButtonList7" ForeColor="Red">*</asp:RequiredFieldValidator>
                    1st Year Representative&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 399px; height: 14px;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList2" ForeColor="Red">*</asp:RequiredFieldValidator>
                    Vice President</td>
                <td style="height: 14px">&nbsp;&nbsp;&nbsp;
                    <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal" DataSourceID="SqlDataSource1" DataTextField="Firstyear" DataValueField="Firstyear">
                    </asp:RadioButtonList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 399px; height: 40px;">
                    <asp:RadioButtonList ID="RadioButtonList2"  runat="server" RepeatDirection="Horizontal" DataSourceID="SqlDataSource1" DataTextField="VicePresident" DataValueField="VicePresident">
                    </asp:RadioButtonList>
                </td>
                <td style="height: 40px">&nbsp;&nbsp;&nbsp; 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="RadioButtonList8" ForeColor="Red">*</asp:RequiredFieldValidator>
                    2nd Year Representative&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 399px; height: 40px;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList3" ForeColor="Red">*</asp:RequiredFieldValidator>
                    Secretary</td>
                <td style="height: 40px">&nbsp;&nbsp;&nbsp;
                    <asp:RadioButtonList ID="RadioButtonList8" runat="server" DataSourceID="SqlDataSource1" DataTextField="Secondyear" DataValueField="Secondyear" RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 399px; height: 45px;">
                    <asp:RadioButtonList ID="RadioButtonList3"  runat="server" DataSourceID="SqlDataSource1" DataTextField="Secretary" DataValueField="Secretary" RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                </td>
                <td style="height: 45px">&nbsp;&nbsp;&nbsp; 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RadioButtonList9" ForeColor="Red">*</asp:RequiredFieldValidator>
                    3rd Year Representative&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 399px; height: 45px;" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList4" ForeColor="Red">*</asp:RequiredFieldValidator>
                    Treasurer</td>
                <td style="height: 45px">&nbsp;&nbsp;&nbsp;
                    <asp:RadioButtonList ID="RadioButtonList9" runat="server" DataSourceID="SqlDataSource1" DataTextField="Thirdyear" DataValueField="Thirdyear" RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 399px; height: 45px;">
                    <asp:RadioButtonList ID="RadioButtonList4"  runat="server" DataSourceID="SqlDataSource1" DataTextField="Treasurer" DataValueField="Treasurer" RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                </td>
                <td style="height: 45px">&nbsp;&nbsp;&nbsp; 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList10" ForeColor="Red">*</asp:RequiredFieldValidator>
                    4th Year Representative&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 399px; height: 45px;"  >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList5" ForeColor="Red">*</asp:RequiredFieldValidator>
                    Auditor</td>
                <td style="height: 45px">&nbsp;&nbsp;&nbsp;
                    <asp:RadioButtonList ID="RadioButtonList10" runat="server" DataSourceID="SqlDataSource1" DataTextField="Fourthyear" DataValueField="Fourthyear" RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 399px; height: 45px;">
                    <asp:RadioButtonList ID="RadioButtonList5"  runat="server" DataSourceID="SqlDataSource1" DataTextField="Auditor" DataValueField="Auditor" RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                </td>
                <td style="height: 45px"></td>
            </tr>
            <tr>
                <td style="width: 399px; height: 28px;"  >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList6" ForeColor="Red">*</asp:RequiredFieldValidator>
                    P.R.O.</td>
                <td style="height: 28px"></td>
            </tr>
            <tr>
                <td style="width: 399px; height: 19px;">
                    <asp:RadioButtonList ID="RadioButtonList6"  runat="server" DataSourceID="SqlDataSource1" DataTextField="PRO" DataValueField="PRO" RepeatDirection="Horizontal">
                    </asp:RadioButtonList>
                </td>
                <td style="height: 19px"></td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="VOTE" Height="27px" Width="78px" OnClick="Button2_Click" />
         <asp:Label ID="Label7" runat="server" style="top: 710px; left: 457px; height: 24px; width: 106px" Text="Label" Visible="False"></asp:Label>
</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Voting]"></asp:SqlDataSource>
        
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
</asp:Content>
