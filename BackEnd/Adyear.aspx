<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/backend.master" AutoEventWireup="true" CodeFile="Adyear.aspx.cs" Inherits="BackEnd_Adyear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
        <br />
&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" PostBackUrl="~/BackEnd/Adregform.aspx" style="color: #000; font-size: 18pt">Back</asp:LinkButton>
    </p>
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td colspan="2" align="center">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px"></td>
            <td style="width: 122px; height: 32px">Add year:</td>
            <td style="width: 101px; height: 32px">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td style="height: 32px">&nbsp;</td>
            <td colspan="2" style="height: 32px" align="center">
                <asp:Button ID="year" runat="server" OnClick="year_Click" Text="ADD" />
            </td>
            <td style="height: 32px">&nbsp;</td>
        </tr>
    </table>

    <br />
    <br />
    <asp:GridView ID="GridView1" align="center" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="323px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [year] WHERE [Id] = @Id" InsertCommand="INSERT INTO [year] ([year]) VALUES (@year)" SelectCommand="SELECT * FROM [year]" UpdateCommand="UPDATE [year] SET [year] = @year WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="year" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="year" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

