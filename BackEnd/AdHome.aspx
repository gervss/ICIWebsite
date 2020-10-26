<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/backend.master" AutoEventWireup="true" CodeFile="AdHome.aspx.cs" Inherits="BackEnd_AdHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td class="resulttable" style="width: 1468px; height: 22px;"></td>
            <td class="resulttable" style="width: 318px; height: 22px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="resulttable" style="height: 22px;" align="center" colspan="2">Edit Motto</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                
                <asp:TextBox ID="TextBox1" align="center" runat="server" Height="216px" TextMode="MultiLine" Width="467px" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
                
                <asp:Button ID="ViewMotto" runat="server" OnClick="ViewMotto_Click" Text="View" />
&nbsp;<asp:Button ID="UpdateMotto" runat="server" OnClick="UpdateMotto_Click" Text="Update" />
&nbsp;
                <asp:Label ID="Motto" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
             

                </td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
             

                &nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
             

                Edit Vision</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
             

                <asp:TextBox ID="TextBox2" runat="server" Height="216px" TextMode="MultiLine" Width="467px"></asp:TextBox>
             

                </td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
             

                <asp:Button ID="ViewVision" runat="server"  Text="View" OnClick="ViewVision_Click" />
&nbsp;<asp:Button ID="UpdateVision" runat="server"  Text="Update" OnClick="UpdateVision_Click" />
&nbsp;
                <asp:Label ID="Vision" runat="server" Text="Label" Visible="False"></asp:Label>
             

                </td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
             

                &nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
             

                &nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
             

                Edit Mission</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
             

                <asp:TextBox ID="TextBox3" runat="server" Height="216px" TextMode="MultiLine" Width="467px"></asp:TextBox>
             

                </td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2"  align="center" style="height: 22px">
             

                <asp:Button ID="ViewMission" runat="server" OnClick="ViewMission_Click" Text="View" />
&nbsp;<asp:Button ID="UpdateMission" runat="server" OnClick="UpdateMission_Click" Text="Update" />
&nbsp;
                <asp:Label ID="Mission" runat="server" Text="Label" Visible="False"></asp:Label>
             

                </td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

